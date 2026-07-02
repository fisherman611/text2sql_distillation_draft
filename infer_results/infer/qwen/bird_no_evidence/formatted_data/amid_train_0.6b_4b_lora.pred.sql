SELECT max(frpms) FROM frpm WHERE county = "Alameda" AND educational option type = "K-12"
SELECT min(FRPM Count (Ages 5-17)) FROM frpm WHERE Eligible Free (Ages 5-17) >= 0.1 AND School Type = "Continuation"
SELECT zip FROM frpm WHERE county = "Fresno County Office of Education" AND Charter School (Y/N) = 'Y'
SELECT mailstreet FROM schools WHERE school IN (SELECT school FROM frpm GROUP BY school ORDER BY frpmcount DESC LIMIT 1)
SELECT phone FROM schools WHERE opendate > '2000-01-01' AND charter = 'Y'
SELECT count(*) FROM schools WHERE virtual = 'Y' AND avgscrmath > 400 INTERSECT SELECT count(*) FROM schools WHERE virtual = 'N' AND avgscrmath < 400
SELECT DISTINCT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr > 500 AND T1.Magnet = 'Y' OR T1.GSoffered = 'Y'
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr = (SELECT max(NumTstTakr) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr > 1500)
SELECT count(*) , T1.SchoolName FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.DistrictTYPE = "K-12" ORDER BY T2.FRPMCOUNT DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDScode = T2.cds WHERE avgscrmath > 560 AND T1.charter = 'Y'
SELECT t2.frpmcount FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode JOIN satscores AS t3 ON t1.cdscode = t3.cds WHERE t3.rtype = 'Read' AND t3.numgte1500 = 1
SELECT T1.CDSCode FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Enrollment (Ages 5-17) > 500
SELECT max(t2.Percent) FROM schools AS t1 JOIN frpm AS t2 ON t1.CDSCode = t2.CDSCode WHERE t1.StatusType = "Excellence" AND t2.Percent > 0.3
SELECT T1.phone FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode GROUP BY T1.phone ORDER BY avgscrwrite DESC LIMIT 3
SELECT T1.NCESSchool FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.Enrollment (Ages 5-17) DESC LIMIT 5
SELECT T1.district FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.district ORDER BY avgscrread DESC LIMIT 1
SELECT count(*) FROM schools WHERE state = "Alameda" AND NumTstTakr < 100
SELECT T1.CharmNum FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgscrwrite > 499 ORDER BY avgscrwrite
SELECT count(*) FROM frpm WHERE county = "Fresno" AND fundingtype = 'Directly funded' AND frpm.county = (SELECT county FROM schools WHERE county = 'Fresno')
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE AvgScrMath = (SELECT max(AvgScrMath) FROM satscores)
SELECT count(*) FROM frpm WHERE county = 'Amador' AND low grade = 9 AND high grade = 12
SELECT count(*) FROM schools WHERE city = "Los Angeles" INTERSECT SELECT count(*) FROM frpm WHERE freemealcount (K-12) > 500 INTERSECT SELECT count(*) FROM frpm WHERE freemealcount (K-12) < 700
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = 'Contra Costa' ORDER BY T2.frpmcount (DESC) LIMIT 1
SELECT T1.schoolname , T2.street FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.enrollment (K-12) - T1.enrollment (Ages 5-17) > 30
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.Percent (%) Eligible Free (K-12) > 0.1 INTERSECT SELECT T1.schoolname FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.NumTstTakr >= 1500
SELECT T2.FundingType FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.county = 'Riverside' AND avgscrmath > 400 GROUP BY T1.CDSCode
SELECT T1.Street , T1.StreetAbr , T1.MailCity , T1.MailZip , T1.MailState , T1.AdmFName1 , T1.AdmLName1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = "Monterey" AND T2.Free Meal Count (Ages 5-17) > 800
SELECT T1.School , T1.AvgScrWrite , T1.Ext FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.opendate > 1991 OR T1.closeddate < 2000
SELECT T1.School , T1.DOC FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Educational Option Type = 'K-12' AND T2.Percent (%) Eligible FRPM (Ages 5-17) > (SELECT avg (Enrollment (K-12) - Enrollment (Ages 5-17)) FROM frpm)
SELECT opendate FROM frpm ORDER BY enroll12 DESC LIMIT 12
SELECT DISTINCT city FROM frpm ORDER BY enroll12 LIMIT 5
SELECT T1.Percent (%) Eligible Free (K-12) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.Enrollment (Ages 5-17) DESC LIMIT 10
SELECT T1.SchoolName FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.FRPM Count (T2) DESC LIMIT 5
SELECT T2.Website FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Free Meal Count (Ages 5-17) BETWEEN 1900 AND 2000
SELECT frpm.Percent (%) Eligible FRPM (Ages 5-17) FROM frpm WHERE school_name = 'Kacey Gibson'
SELECT t1.admEmail1 FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode ORDER BY enroll12 LIMIT 1
SELECT T2.AdmFName1 , T2.AdmLName1 FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgscrread >= 1500 ORDER BY enroll12 DESC LIMIT 1
SELECT street , city , zip , state FROM schools ORDER BY percent (%) Eligible Free (K-12) LIMIT 1
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.county = "Los Angeles" AND T2.FRPM Count (Ages 5-17) BETWEEN 2000 AND 3000
SELECT avg(numtsttaker) FROM schools WHERE opendate BETWEEN '01/01/1980' AND '12/31/1980' AND county = 'Fresno'
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrRead = (SELECT avg(AvgScrRead) FROM schools WHERE County = 'Fresno' )
SELECT T1.School Name FROM schools AS T1 JOIN satscores AS T2 ON T1.CDS Code = T2.cds ORDER BY avgscrread DESC LIMIT 5
SELECT T2.EdOpsName FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgscrmath = (SELECT max(avgscrmath) FROM satscores)
SELECT T1.county , T2.avgScrRead FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.CDSCode ORDER BY avgScrRead LIMIT 1
SELECT T1.city FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.cds ORDER BY count(*) DESC LIMIT 1 SELECT T1.city FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.AvgScrWrite >= 1500 GROUP BY T1.cds ORDER BY count(*) DESC LIMIT 1
SELECT T1.School , avg(T2.AvgScrWrite) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.School HAVING T1.StatusType = "Magnet" AND T1.AdmFName1 = "Ricci Ulrich"
SELECT state FROM frpm AS T1 JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T1.academic_year = '2014-15' AND T1.educational_option_type = 'K-12' GROUP BY T2.state ORDER BY count(*) DESC LIMIT 1
SELECT avg(frpm.counts) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode JOIN schools AS T3 ON T2.admfname1 = T3.admfname1 WHERE T1.academicyear = 2010 AND T1.county = "Alameda" AND T1.districtname = "Elementary School District"
SELECT (frpm.counts / 2013-14 CALPADS Fall 1 Certification Status) , (satscores.numtsttaker / 100) FROM frpm JOIN schools ON frpm.cds = schools.cdscode WHERE counties = "Orange County" AND district = "Elementary School District" GROUP BY district
SELECT T1.County , T2.ClosedDate FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T2.ClosedDate ORDER BY count(*) DESC LIMIT 1
SELECT T1.Street FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY avgscrmath DESC LIMIT 7
SELECT T1.street FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE avgscrread = (SELECT avg(avgscrread) FROM satscores) ORDER BY T1.street LIMIT 1
SELECT count(*) FROM schools WHERE mailcity = "Lakeport" INTERSECT SELECT count(*) FROM satscores WHERE numge1500 >= 1500
SELECT count(*) FROM schools WHERE mailcity = 'Fresno'
SELECT mailzip , school FROM schools WHERE mailzip < (SELECT min(mailzip) FROM schools WHERE AdmFName1 = 'Avetik Atoian' )
SELECT (count(*) / count(*) ) FROM frpm WHERE mailstate = 'California' AND county = 'Colusa' INTERSECT SELECT (count(*) / count(*) ) FROM frpm WHERE mailstate = 'California' AND county = 'Humboldt'
SELECT count(*) FROM schools WHERE mailstate = 'P' AND mailcity = "San Joaquin" AND state = "California"
SELECT T1.Phone , T1.Ext FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY avgScrWrite DESC LIMIT 333
SELECT phone , ext FROM schools WHERE zip = "95203-3704"
SELECT website FROM schools WHERE AdmFName1 = "Mike Larson" INTERSECT SELECT website FROM schools WHERE AdmFName2 = "Dante Alvarez"
SELECT Website FROM schools WHERE State = "San Joaquin" AND Virtual = "Y" AND Charter = "Yes" AND School TYPE = "Partially Virtual Charter School"
SELECT count(*) FROM schools WHERE city = 'Hickman' AND Charter = 'Y' AND district = 'Elementary School District'
SELECT count(*) FROM frpm WHERE county = "Los Angeles" AND Percent (%) Eligible Free (K-12) < 0.18
SELECT T1.admFName1 , T1.admLName1 , T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.charternum = '00D2'
SELECT count(*) FROM schools WHERE mailcity = "Hickman" AND CharterNum = "00D4"
SELECT count(*) , sum(percent) FROM frpm WHERE fundingtype = 'Locally Funded' AND district = 'Santa Clara'
SELECT count(*) FROM schools WHERE opendate BETWEEN '01/01/2000' AND '12/31/2005' AND county = 'Stanislaus'
SELECT sum(T1.FRPMCount (Ages 5-17)) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.ClosedDate = '1989-01-01' AND T1.City = 'San Francisco'
SELECT T1.county FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.academicyear = 1980 AND T2.edopscode = "CEA" GROUP BY T1.county ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.NCESDist FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN schools AS T3 ON T2.CDSCode = T3.CDSCode WHERE T3.State = 'VA' AND T2.EdOpsCode = 'State Special Schools'
SELECT count(*) , count(*) FROM frpm WHERE County = "Alpine" AND District Type = "District" AND School Type = "Community Day"
SELECT district FROM schools WHERE district != (SELECT district FROM frpm WHERE city = 'Fresno' AND magnet = 'Y')
SELECT count(*) FROM frpm WHERE schoolcode = 'Fremont' AND Academic Year = 2014-15 AND 2013-14 CALPADS Fall 1 Certification Status = 'Y' AND enrollment (Ages 5-17) = 'Y' AND schooltype = 'State Special'
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.MailStreet = "PO Box 1040" AND T1.academicyear = 2013-14 AND T1.schooltype = "Youth Authority" AND T1.schoolname = "Youth Authority School"
SELECT min(t1.lowgrade) FROM frpm AS t1 JOIN schools AS t2 ON t1.cdscode = t2.cdscode WHERE t2.ncesdist = 0613360 AND t2.edopsname = 'District Special Education Consortia'
SELECT T2.EdOpsName FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.county_code = 37 AND T1.2013-14 CALPADS Fall 1 Certification Status = 'Breakfast Provision 2'
SELECT city FROM schools WHERE county = 'Merced' AND high grade = 12 INTERSECT SELECT city FROM frpm WHERE lunch provision = '2' AND low grade = 9
SELECT T1.School , T1.Percent (%) Eligible FRPM (K-12) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Los Angeles' AND T1.HigherGrade = '9' AND T1.LowerGrade = 'K'
SELECT count(*) , district_type FROM frpm WHERE city = 'Adelanto' GROUP BY district_type ORDER BY count(*) DESC LIMIT 1
SELECT county FROM frpm WHERE city = "San Diego" OR city = "Santa Barbara" INTERSECT SELECT county FROM schools WHERE EdOpsCode = "Physical" EXCEPT SELECT county FROM frpm
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT T1.city , T1.latin FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.state = 'CA' ORDER BY T1.latitude LIMIT 1
SELECT gsoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(*) , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Magnet = 'Yes' AND T2.GSoffered = 'K-12' INTERSECT SELECT count(*) , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Magnet = 'Yes' AND T2.GSoffered = 'K-12' AND T2.EILCode = 'Yes' GROUP BY T1.city
SELECT AdmFName1 , district FROM schools GROUP BY district ORDER BY count(*) DESC LIMIT 2
SELECT T1.districtcode FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.admfname1 = "Alusine"
SELECT t2.admlname1 , t2.county , t1.schoolname FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.charternum = 40
SELECT AdmEmail1 FROM schools WHERE OpenDate BETWEEN '01/01/2009' AND '12/31/2010' AND County = "San Bernardino" AND district = "City of San Bernardino City Unified" AND schooltype = "Public" INTERMEDIATE / Middle Schools UNION SELECT AdmEmail1 FROM schools WHERE OpenDate BETWEEN '01/01/2009' AND '12/31/2010' AND County = "San Bernardino" AND district = "City of San Bernardino City Unified" AND schooltype = "Unified Schools"
SELECT T1.admEmail1 , T2.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds ORDER BY T2.numTstTakr DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'issuance' AND T1.district_id = 13 AND T1.frequency = 1;
SELECT count(DISTINCT account_id) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A2 = "Prague"
SELECT avg(unemployment) FROM card WHERE disp_id = "1995" INTERSECT SELECT avg(unemployment) FROM card WHERE disp_id = "1996" ORDER BY avg(unemployment)
SELECT count(*) FROM district WHERE avg(A6) > 6000 AND avg(A6) < 10000;
SELECT count(*) FROM client WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'North Bohemia' AND gender = 'M') GROUP BY gender ORDER BY avg(salary) > 8000
SELECT account_id FROM client WHERE gender = 'Female' ORDER BY birth_date DESC LIMIT 1 UNION SELECT account_id FROM client WHERE gender = 'Female' ORDER BY birth_date DESC LIMIT 1 AND avg(salary) ORDER BY avg(salary) ASC LIMIT 1
SELECT account_id FROM client WHERE birth_date = (SELECT max(birth_date) FROM client) GROUP BY account_id ORDER BY avg(salary) DESC LIMIT 1
SELECT count(*) FROM disp WHERE TYPE = "weekly" AND operation = "statement" AND client_id = (SELECT client_id FROM client WHERE gender = "male")
SELECT client_id FROM disp WHERE operation = 'Disponent' INTERSECT SELECT client_id FROM card
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1997%" ORDER BY T2.amount LIMIT 1
SELECT T1.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 3 AND T2.date LIKE "1993%" GROUP BY T1.account_id ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T1.birth_date < 1950 AND T2.district_id = 1005
SELECT account_id FROM account WHERE date >= "1995-01-01" GROUP BY account_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date < "1997-01-01" AND T2.amount > 3000;
SELECT T1.client_id FROM disp AS T1 JOIN client AS T2 ON T1.disp_id = T2.disp_id WHERE T2.birth_date LIKE "1994/03/03"
SELECT T1.date FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount = 840 AND T1.date LIKE "1998/10/14";
SELECT T2.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "%1994/08/25%"
SELECT max(amount) FROM trans WHERE date LIKE '1996/10/21'
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'card' GROUP BY T2.client_id ORDER BY avg(T2.frequency) DESC LIMIT 1
SELECT T3.amount FROM disp AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T1.client_id = T3.client_id WHERE T2.status = 'Applied' ORDER BY T2.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Jesenik" AND T1.gender = "Women"
SELECT T1.disp_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.birth_date LIKE "1998/09/02" AND T1.type = "Credit" AND T1.amount = 5100
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A4 = "Litomerice" AND T1.date LIKE "1996%"
SELECT T1.district_id FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' AND T2.birth_date LIKE "%1976/%1/%29%"
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T2.amount = 98832 AND T2.date LIKE "1996/1/03"
SELECT account_id FROM disp WHERE client_id IN (SELECT client_id FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "Prague") UNION SELECT account_id FROM account WHERE district_id = (SELECT district_id FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "Prague")
SELECT T1.gender FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A5 = "South Bohemia" GROUP BY T1.gender ORDER BY count(*) DESC LIMIT 1;
SELECT (T4.balance - T3.balance) / T3.balance FROM account AS T3 JOIN trans AS T4 ON T3.account_id = T4.account_id JOIN loan AS T5 ON T3.account_id = T5.account_id WHERE T5.status = 'approved' AND T5.date LIKE '1993/03/22' INTO T6 JOIN client AS T7 ON T7.client_id = T5.client_id ORDER BY T5.date LIMIT 1
SELECT count(*) FROM loan WHERE status = 'Fully Paid'
SELECT count(*) FROM loan WHERE amount < 100000 AND status = 'running'
SELECT T1.account_id , T2.A3 , T2.A4 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date > (SELECT min(date) FROM trans)
SELECT account_id , count(*) FROM account WHERE district_id IN ( 15 , 16 , 17 ) AND YEAR (date) BETWEEN 1995 AND 2000 GROUP BY account_id
SELECT account_id , date FROM account WHERE district_id IN (SELECT district_id FROM account WHERE district = 'Prachatice')
SELECT T2.district , T2.region FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = '2'
SELECT T1.account_id , T2.A3 , T2.A4 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount > 300000
SELECT T1.loan_id , T2.A3 , avg(T1.salary) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.loan_id HAVING T1.duration = 60
{"sql": "SELECT T2.A3 , T1.A2 FROM loan AS T1 JOIN district AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'R' INTERSECT SELECT T2.A3 , T1.A2 FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.district_id IN (SELECT T1.district_id FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T1.district_id HAVING avg(T1.balance) >= (SELECT sum(balance) FROM client AS T1 JOIN account AS T
SELECT count(*) FROM account WHERE date = '1993' AND district_id = 101
SELECT account_id FROM account WHERE frequency = "monthly"
SELECT T1.district_id FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 9
SELECT T2.A2 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date = '1996-01-01' AND T1.type = 'withdrawal' AND T1.type2 != 'Credit' ORDER BY T1.amount DESC LIMIT 10;
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "South Bohemia" AND T1.account_id NOT IN (SELECT card_id FROM card WHERE TYPE = "Credit card")
SELECT T2.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T2.district_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan WHERE gender = 'M'
SELECT T2.A3 , T2.A10 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date = 1996 GROUP BY T2.A3 ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM account WHERE YEAR(date) = 1996 GROUP BY district_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM trans WHERE operation = 'Credit Card Withdrawal' AND balance < 0
SELECT count(*) FROM loan WHERE amount BETWEEN 250000 AND 500000 AND status = 'approved' AND date BETWEEN '1995-01-01' AND '1997-12-31'
SELECT count(*) FROM account WHERE district_id = 1 AND TYPE = 'running';
SELECT count(*) FROM client WHERE gender = 'M' AND district_id IN ( SELECT district_id FROM client GROUP BY district_id ORDER BY count(*) DESC LIMIT 1 ) AND YEAR(birth_date) = 1995;
SELECT count(*) FROM disp WHERE TYPE = "high" AND card_id IN (SELECT disp_id FROM card WHERE TYPE = "Credit Card");
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Pisek"
SELECT DISTINCT T1.district_id FROM district AS T1 JOIN trans AS T2 ON T1.district_id = T2.account_id WHERE T2.date = "1997" AND T2.amount > 10000
SELECT account_id FROM order WHERE amount = "household" AND bank_to = "Pisek"
SELECT T2.account_id FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'Gold'
SELECT avg(T1.amount) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "2021%" AND T1.type = "Credit"
SELECT T1.account_id FROM trans AS T1 JOIN card AS T2 ON T1.account_id = T2.disp_id WHERE T2.type = 'Credit' AND T2.issued = 1998 AND T2.amount < (SELECT avg(amount) FROM loan)
SELECT DISTINCT T1.gender FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.account_id JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T1.gender = 'Female' AND T3.status = 'Positive' AND T2.type = 'Credit'
SELECT count(*) FROM client AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'female' AND T2.district_id IN (13, 14, 15)
SELECT DISTINCT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id = 13 AND T1.status = 'approved'
SELECT DISTINCT T1.type , avg(T2.A2) FROM card AS T1 JOIN account AS T2 ON T1.disp_id = T2.account_id WHERE T2.district_id = T1.disp_id AND T2.A2 > 8000 AND T2.A2 <= 9000 GROUP BY T1.type
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.A2 = 'North Bohemia' AND T2.bank = 'AB'
SELECT DISTINCT T2.A3 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE operation = 'withdraw'
SELECT avg(crime) FROM card AS T1 JOIN district AS T2 ON T1.disp_id = T2.district_id JOIN (SELECT district_id FROM account WHERE date >= '1997') AS T3 GROUP BY T2.district_id HAVING sum(T1.crime) > 4000
SELECT count(*) FROM card WHERE TYPE = "classic"
SELECT count(*) FROM client WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'Hl.m. Praha') AND gender = 'M'
SELECT count(*) * 100 / sum(count(*) ) FROM card WHERE issued < 1998 AND TYPE = 'Gold'
SELECT T2.client FROM loan AS T1 JOIN disp AS T2 ON T1.account_id = T2.disp_id WHERE T1.amount = (SELECT max(amount) FROM loan)
SELECT count(*) FROM account WHERE district_id = 532 AND date = 1995
SELECT DISTINCT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT T3.amount FROM disp AS T1 JOIN trans AS T2 ON T1.disp_id = T2.disp_id JOIN account AS T3 ON T1.account_id = T3.account_id WHERE T1.client_id = 3356 AND T2.type = "withdraw" AND T3.type = "cash"
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < 200000
SELECT DISTINCT TYPE FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 13539
SELECT T2.A3 FROM disp AS T1 JOIN district AS T2 ON T1.disp_id = T2.district_id JOIN client AS T3 ON T1.client_id = T3.client_id WHERE T3.client_id = 3541
SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.status = 'finished without problem' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.client FROM disp AS T1 JOIN order AS T2 ON T1.disp_id = T2.account_id WHERE T1.disp_id = 32423
SELECT * FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM account WHERE district_id = 13
SELECT DISTINCT T1.client_id FROM client AS T1 JOIN card AS T2 ON T1.client_id = T2.disp_id WHERE T2.type = 'Junior' AND T2.issued > 1996
SELECT count(*) * 100.0 / count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A5 > 10000 AND T1.gender = 'female'
SELECT sum(T1.amount) , T1.date FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T3.client_id = T2.client_id WHERE T3.gender = 'M' AND T1.date BETWEEN '1996-04-01' AND '1997-04-01' GROUP BY T1.date
SELECT count(*) FROM trans WHERE date > 1995 AND operation = 'Credit'
SELECT count(*) - count(*) FROM district AS T1 JOIN district AS T2 ON T1.district_id = (16 AND T2.district_id) WHERE T1.A2 = "East Bohemia" AND T2.A2 = "North Bohemia" AND T1.A3 = 1996
SELECT count(*) , count(*) FROM disp WHERE account_id BETWEEN 1 AND 10
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 3 AND T2.operation = 'debit' AND T2.amount = 3539
SELECT T1.birth_date FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.account_id = 130;
SELECT count(*) FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.type = 'request' AND T2.operation = 'to bank'
SELECT amount , STATUS FROM loan WHERE client_id = 992
SELECT sum(T2.balance) FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.trans_id = 851 AND T1.client_id = 4 GROUP BY T2.account_id
SELECT TYPE FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 9
SELECT sum(amount) FROM trans WHERE date LIKE "1998%" AND operation = "Credit" AND bank = "617"
SELECT T1.client_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date BETWEEN '1983-' AND '1987' AND T2.A5 = 'East Bohemia'
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'Female' ORDER BY T2.amount DESC LIMIT 3
SELECT count(*) FROM client AS T1 JOIN client_id AS T2 ON T1.client_id = T2.client_id JOIN disp AS T3 ON T2.client_id = T3.client_id JOIN account AS T4 ON T3.account_id = T4.account_id WHERE T1.gender = 'M' AND T1.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND T3.type = 'home' AND T4.amount > 4000
SELECT count(*) FROM account WHERE district_id = 13 AND date > '1996'
SELECT count(*) FROM card WHERE TYPE = 'Junior' AND disp_id IN (SELECT client_id FROM card WHERE TYPE = 'Credit' ) AND client.gender = 'F'
SELECT count(*) , gender FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.account_id JOIN district AS T3 ON T3.district_id = T2.district_id WHERE T3.A2 = 'Prague' AND T1.gender = 'female'
SELECT count(*) / count(*) * 100 FROM client WHERE client_id IN (SELECT client_id FROM disp WHERE TYPE = "weekly" ) AND gender = "male"
SELECT count(*) FROM disp WHERE TYPE = "weekly" AND client_id = (SELECT client_id FROM client WHERE gender = "male" OR birth_date = (SELECT birth_date FROM client WHERE gender = "female"))
SELECT T1.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 3 AND T2.date < 1997 ORDER BY T2.frequency LIMIT 1
SELECT account_id FROM client WHERE gender = 'female' ORDER BY birth_date DESC LIMIT 1 UNION SELECT account_id FROM client WHERE gender = 'female' ORDER BY avg(balance) LIMIT 1
SELECT count(*) FROM client WHERE birth_date = '1920' AND district_id = (SELECT district_id FROM district WHERE A2 = 'east Bohemia')
SELECT count(*) FROM loan WHERE duration = 24 AND payments = 'prepayment'
SELECT avg(amount) , T1.date FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'On' GROUP BY T1.date
{"sql": "SELECT client_id , district_id FROM client WHERE client_id IN (SELECT client_id FROM order WHERE TYPE = 'P' ) UNION SELECT client_id , district_id FROM loan WHERE TYPE = 'L'")
SELECT T1.client_id , T1.gender FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.status = 'Eligible' INTERSECT SELECT T1.client_id , T1.gender FROM client AS T1 JOIN card AS T2 ON T1.client_id = T2.disp_id WHERE T2.type = 'High'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element != "carcinogen" AND element != "non-carcinogen" AND element = "chlorine"
SELECT avg(T2.element) FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.molecule_id GROUP BY T2.molecule_id
SELECT avg(count(*) ) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T1.bond_id = T3.bond_id WHERE T3.bond_type = "single" AND T1.label = "carcinogenic"
SELECT count(*) FROM atom WHERE element = 'Na' AND atom_id NOT IN (SELECT atom_id FROM atom WHERE element = 'C' )
SELECT T2.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple-bond" INTERSECT SELECT molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carcinogen"
SELECT count(*) FROM atom WHERE element = "C" AND bond_type = "double-bond"
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule WHERE molecule_id BETWEEN 1 AND 100 INTERSECT SELECT count(*) FROM molecule WHERE label = 'carcinogenic';
SELECT DISTINCT molecule_id FROM atom WHERE element = "C"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "TR004_8_9"
SELECT element FROM atom WHERE element = 'O' AND bond_type = 'double'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "H" GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE element = "chlorine"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single'
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element != "carcinogen"
SELECT element FROM atom WHERE element NOT IN (SELECT DISTINCT element FROM molecule WHERE label = 'non-carcinogenic') GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.atom_id = "TR004_8" , T2.atom_id = "TR004_20")
SELECT label FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'tin')
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T1.atom_id = T3.atom_id WHERE T1.element = 'I' AND T3.element = 'S' AND T2.bond_type = 'single'
SELECT DISTINCT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "triple"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 JOIN atom AS T3 ON T3.atom_id = T2.atom_id WHERE T3.element = "tr" AND T2.atom_id2 = 181
SELECT count(*) FROM molecule WHERE label = 'carcinogenic' EXCEPT SELECT count(*) FROM atom WHERE element = 'F'
SELECT count(*) * 100.0 / (SELECT sum(bond_type) FROM bond) FROM bond WHERE bond_type = 'triple'
SELECT element FROM atom WHERE molecule_id = molecule_id AND element = 'Tr' ORDER BY element
SELECT atom_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T1.bond_id WHERE T3.molecule_id = 26 AND T2.molecule_id = 1001
SELECT count(*) - count(*) , count(*) FROM molecule WHERE label = 'carcinogenic' INTERSECT count(*) WHERE label = 'not carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = bond_id = 2_5
SELECT bond_id FROM bond JOIN connected ON bond.bond_id = connected.atom_id WHERE atom_id = 2
SELECT T2.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'double' ORDER BY T2.molecule_id
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T3.molecule_id = T1.molecule_id WHERE T3.label = "TR008" AND T2.bond_type = "double" AND T1.element = "O" AND T3.label = "TR008"
SELECT count(*) FROM atom WHERE element = 'Carcinogen'
SELECT sum(element) FROM atom WHERE molecule_id = (SELECT molecule_id FROM atom WHERE element = 'H')
SELECT bond_type FROM bond WHERE molecule_id = atom_id2 OR molecule_id = atom_id
SELECT element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "toxic" AND T1.molecule_id = 1060
SELECT bond_type , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR010" GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT T1.molecule FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.bond_id = T3.bond_id WHERE T3.atom_id = T4.atom_id INTERSECT SELECT T1.molecule FROM molecule AS T1 JOIN connected AS T2 ON T1.molecule_id = T2.atom_id2 WHERE T2.bond_id = T3.bond_id INTERSECT SELECT T1.molecule FROM molecule AS T1 JOIN connected AS T2 ON T1.molecule_id = T2.atom_id WHERE T2.bond_id = T3.bond_id AND T3.atom_id = T4.atom_id AND T4.atom_id2 = T5.atom_id INTERSECT SELECT T1.molecule FROM molecule AS T1 JOIN connected AS T2 ON T1.molecule_id = T2.atom_id WHERE T2.bond_id = T3.bond_id AND T3.atom_id = T4.atom_id2 AND T4.atom_id2 = T5.atom_id
SELECT bond_id FROM bond WHERE molecule_id = TR006 ORDER BY bond_id LIMIT 2
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T3.molecule_id = T1.molecule_id WHERE T1.atom_id = 12 AND T3.label = "TR009"
SELECT count(*) FROM atom WHERE element = 'Br'
SELECT bond_type , T3.atom_id FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id WHERE T1.bond_id = 6 AND T1.bond_type = "TR" AND T2.atom_id2 = 9
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 'TR001_10' AND T2.label = 'carcinogenic'
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.atom_id = 19
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR004"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = "carcinogen" )
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = "atomic" AND T1.atom_id BETWEEN 21 AND 25 INTERSECT SELECT T2.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carcinogenic"
SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'P' INTERSECT SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'N'
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT avg(count(*) ) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'I'
SELECT bond_type , bond_id FROM bond WHERE molecule_id = (SELECT molecule_id FROM atom WHERE atom_id = 45)
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR041" AND bond_type = "triple"
SELECT element FROM atom WHERE atom_id = "TR144_8_19"
SELECT molecule_id FROM bond WHERE bond_type = 'double' GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT atom_id FROM atom WHERE element = 'lead' INTERSECT SELECT atom_id FROM connected
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.bond_id WHERE T2.bond_type = "double"
{"sql": "SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1
SELECT count(*) FROM bond WHERE bond_type = 'single' INTERSECT SELECT count(*) FROM molecule WHERE label = 'carcinogenic'
SELECT sum(atom_count) FROM atom WHERE element = 'C' OR element = 'H'
SELECT atom_id FROM atom WHERE element = 'Sulfur'
SELECT bond_type FROM bond WHERE bond_type = 'bond' INTERSECT SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = "Tin"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "single"
SELECT sum(t1.element) FROM atom AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id JOIN molecule AS t3 ON t1.molecule_id = t3.molecule_id WHERE t1.element = 'P' OR t1.element = 'Br' GROUP BY t3.molecule_id
SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT molecule_id FROM bond WHERE bond_type = 'single' EXCEPT SELECT molecule_id FROM carcinogenic
SELECT element , count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'single' GROUP BY element HAVING count(*) = 1
SELECT label FROM molecule WHERE molecule_id = TR000 OR molecule_id = TR001 OR molecule_id = TR002
SELECT molecule_id FROM molecule WHERE label != 'carcinogen'
SELECT sum(t1.element) FROM atom AS t1 JOIN molecule AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.molecule_id BETWEEN 1000 AND 301
SELECT bond_type FROM bond WHERE molecule_id BETWEEN TR000 AND TR050
SELECT element FROM bond WHERE bond_id = 'TR001_10_11'
SELECT count(*) FROM atom WHERE element = 'iodine'
SELECT count(*) FROM atom WHERE element = "Calcium" GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom WHERE element = 'Cl' INTERSECT SELECT element FROM atom WHERE element = 'C'
SELECT molecule_id FROM atom WHERE element = 'C' INTERSECT SELECT molecule_id FROM bond WHERE bond_type = 'triple' AND molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic')
SELECT count(*) FROM atom WHERE element = 'Cl' AND molecule_id IN (SELECT molecule_id FROM atom GROUP BY molecule_id HAVING sum(count(*)) >= 10)
SELECT DISTINCT element FROM atom WHERE molecule_id = :TR001
SELECT molecule_id FROM bond WHERE bond_type = "double"
SELECT T1.atom_id , T2.atom_id FROM bond AS T1 JOIN atom AS T2 ON T1.bond_type = 'triple' GROUP BY T1.bond_type ORDER BY count(*) = 1 LIMIT 2
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 'toxic' AND TR000_1_2 = bond_id)
SELECT count(*) FROM bond WHERE bond_type = 'single' AND label NOT IN ('carcinogen', 'mutant')
SELECT label FROM molecule WHERE bond_id = 'TR001_10_11'
SELECT bond_id , count(*) FROM bond WHERE bond_type = 'triple' GROUP BY bond_id HAVING count(*) >= 1
SELECT count(*) , T1.molecule_id , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'toxic' AND T1.element = 'carcinogen' GROUP BY T1.molecule_id
SELECT count(*) , element FROM atom WHERE molecule_id = (SELECT molecule_id FROM atom GROUP BY molecule_id HAVING count(*) = 3) GROUP BY element
SELECT count(*) FROM atom WHERE element = 'Ca' AND label = 'carcinogenic'
SELECT bond_type FROM bond JOIN atom ON bond.molecule_id = atom.molecule_id WHERE element = "Carbon"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'TR001_10_11'
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR047" AND T2.bond_type = "double-bond"
SELECT count(*) FROM atom WHERE element = "Tr" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = "TR001_1") UNION SELECT count(*) FROM atom WHERE element = "Carcinogen" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = "TR001_1")
SELECT count(*) FROM molecule WHERE molecule_id = 'TR151' AND label = 'carcinogenic'
SELECT element FROM atom WHERE molecule_id = 151
SELECT count(*) FROM (SELECT DISTINCT molecule_id FROM compound WHERE label = 'carcinogen' GROUP BY molecule_id) AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id
SELECT atom_id FROM atom WHERE element = "carbon" AND molecule_id BETWEEN TR010 AND TR050
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
{"sql": "SELECT bond_id FROM bond WHERE bond_type = 'double bond' INTERSECT SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'}
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' AND T2.label = 'carcinogenic'
SELECT T1.molecule_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "TR000_1_2" AND T1.element = "TR000_1"
SELECT atom_id FROM atom WHERE element = 'Carbon' EXCEPT SELECT atom_id FROM atom WHERE element = 'Carbon' AND molecule_id IN (SELECT molecule_id FROM atom GROUP BY molecule_id HAVING count(*) >= 2)
SELECT count(*) , element FROM atom WHERE element = 'hydrogen' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogen' )
SELECT count(*) FROM molecule WHERE molecule_id = 124 AND label = 'carcinogenic'
SELECT element FROM atom WHERE atom_id = 186
SELECT bond_type FROM bond WHERE molecule_id = 4 AND atom_id = 19
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "TR001_2_4")
SELECT count(*) , if (label = 'carcinogenic', 1 , 0) FROM molecule WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT molecule_id FROM atom WHERE element = 'carcinogen' )
SELECT molecule_id , element FROM atom WHERE element = 'carcinogen'
SELECT bond_type , T1.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T3.atom_id2 = T2.atom_id
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple"
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id FROM connected WHERE bond_type = 'TR000_2_3' )
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = "Cl"
SELECT count(*) , T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id JOIN molecule AS T3 ON T3.molecule_id = T2.molecule_id WHERE T3.label = "TR346" GROUP BY T1.atom_id
SELECT count(*) , count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" INTERSECT SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "carcinogenic"
SELECT count(*) FROM atom WHERE element != 'sulfur' AND bond_type != 'double'
SELECT t2.label FROM bond AS t1 JOIN molecule AS t2 ON t1.molecule_id = t2.molecule_id WHERE t1.bond_type = "carcinogenic" AND t1.bond_id = 2
SELECT count(*) FROM atom WHERE molecule_id = TR001
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T2.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "cl" AND T2.label = "carcinogenic"
SELECT molecule_id FROM atom WHERE element = "C" EXCEPT SELECT molecule_id FROM atom WHERE element = "carcinogen"
SELECT count(*) FROM atom WHERE element LIKE "%Chlorine%"
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT count(*) FROM bond WHERE bond_id = 'TR001_3_4'
SELECT bond_type FROM bond WHERE bond_id IN (SELECT bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = "TR000_1" INTERSECT SELECT bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = "TR000_2")
SELECT molecule FROM atom WHERE atom_id = "TR000_2" UNION SELECT molecule FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1"
SELECT count(*) FROM molecule WHERE molecule_id = 'TR000' AND label = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id GROUP BY T1.atom_id HAVING count(*) = 1
SELECT count(*) FROM atom WHERE element = "N"
SELECT T1.molecule_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Sulfur" AND T2.bond_type = "double bond"
SELECT molecule_id , count(*) FROM atom GROUP BY molecule_id HAVING sum(element) > 5
SELECT element FROM atom WHERE molecule_id = :molecule_id AND bond_type = "double" INTERSECT SELECT element FROM bond WHERE molecule_id = :molecule_id
SELECT molecule_id FROM atom GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) / (SELECT count(*) FROM atom WHERE element = 'H' AND atom_id IN (SELECT atom_id FROM atom WHERE element = 'C' AND bond_type = 'triple') ) FROM atom WHERE element = 'H' AND atom_id IN (SELECT atom_id FROM atom WHERE element = 'C' AND bond_type = 'triple')
SELECT count(*) FROM atom WHERE element = 'carcinogen'
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'single' AND T2.bond_type = 's' AND T1.molecule_id BETWEEN 400 AND 500
SELECT count(*) FROM atom WHERE molecule_id = "TR008" AND element = "C"
SELECT element FROM atom WHERE atom_id = 'TR004_7' EXCEPT SELECT element FROM atom WHERE atom_id = 'TR004_7' AND molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'carcinogenic')
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = "O" AND T1.bond_type = "double"
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple" EXCEPT SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "carcinogenic"
SELECT element , bond_type FROM bond WHERE molecule_id = "TR002" INTERSECT SELECT element , bond_type FROM atom
SELECT atom_id FROM atom WHERE molecule_id = 1012 AND element = "double bond" INTERSECT SELECT atom_id FROM bond WHERE bond_type = "double bond"
SELECT T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "O"
SELECT name FROM cards WHERE power = 'incredible'
SELECT asciiName FROM cards WHERE availability = 'borderless' AND cardKingdomFoilId = "null"
SELECT asciiName FROM cards WHERE convertedManaCost > (SELECT min(convertedManaCost) FROM cards)
SELECT name FROM cards WHERE originalReleaseDate LIKE "2015%" AND edhrecRank < 100 ORDER BY edhrecRank
SELECT DISTINCT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code JOIN legalities AS T3 ON T3.id = T2.mcmId WHERE T3.format = "gladiator" AND T1.rarity = "mythic"
SELECT T2.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.type = "cards" AND T2.status = "Vintage"
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.id WHERE T2.format = "commander" AND T2.status = 0
SELECT T1.asciiName , T2.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Stephen Daniel"
SELECT T2.date , T2.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Sublime Epiphany' AND T1.number = 74
SELECT T1.name , T1.artist , T3.promoTypes FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN rulings AS T3 ON T1.uuid = T3.uuid WHERE T3.status = "approved" GROUP BY T1.uuid ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Annul" AND T2.number = 29
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Japanese"
SELECT count(*) / (SELECT count(*) FROM cards) * 100 FROM foreign_data WHERE flavortext = "Chinese Simplified"
SELECT count(*) , T1.name FROM foreign_data AS T1 JOIN sets AS T2 ON T1.code = T2.name WHERE T1.language = "Italian"
SELECT count(*) FROM cards WHERE artist = "Aaron Boyd" AND originalType = "card art";
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(*) FROM cards WHERE power = "infinite"
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = "Ancestor's Chosen";
SELECT originalType FROM cards WHERE name = "Ancestor's Chosen"
SELECT DISTINCT T1.language FROM foreign_data AS T1 JOIN sets AS T2 ON T1.setcode = T2.code JOIN set_translations AS T3 ON T3.setCode = T2.name WHERE T2.name = 'Angel of Mercy'
SELECT count(*) FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = "restricted" AND T2.isTextless = 1
SELECT T1.flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText JOIN rulings AS T3 ON T1.id = T3.id WHERE T1.cardKingdomFoilId = "Condemn"
SELECT count(*) FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.cardKingdomId WHERE T1.status = "restricted" AND T2.isStarter = 1
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Cloudchaser Eagle"
SELECT TYPE FROM cards WHERE name = "Benalish Knight"
SELECT rule FROM cards WHERE name = "Benalish Knight"
SELECT DISTINCT artist FROM cards WHERE cardKingdomFoilId = "Phyrexian"
{"sql": "SELECT rarity FROM cards WHERE cardKingdomFoilId != \"foil\" AND availability != \"isOnlineOnly\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND cardKingdomId != \"isPromo\" AND cardKingdomId != \"isStarter\" AND cardKingdomId != \"isTextless\" AND cardKingdomId != \"isTimeshifted\" AND cardKingdomId != \"isReprint\" AND card
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.scryfallIllustrationId = T2.scryfallIllustrationId WHERE T2.language LIKE "%German%"
SELECT count(*) FROM cards WHERE isTextless = 'true' AND flavortext = 'borderless' AND language = 'Russian'
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE cardKingdomFoilId = "Story Spotlight") FROM foreign_data WHERE language = "French"
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = 'Aaron Boyd'
SELECT count(*) FROM cards WHERE colorIndicator = "Black" AND isOnlineOnly = 1
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE cardKingdomFoilId = "foil" AND keywords = "Flying"
SELECT count(*) FROM cards WHERE originaltype = "Summon - Angel" AND supertypes != "Angel"
SELECT id FROM cards WHERE power = "very powerful" INTERSECT SELECT id FROM cards WHERE hasNonFoil
SELECT id FROM cards WHERE duelDeck = "a"
SELECT edhrecRank FROM cards WHERE frameVersion = "2015";
SELECT T2.text FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.scryfallOracleId WHERE T2.language = "Chinese Simplified"
SELECT name FROM cards WHERE availability = 'available' INTERSECT SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Japanese"
SELECT count(*) FROM cards WHERE colorindicator = "white" AND borderColor = "ban";
SELECT T1.uuid , T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId = "legacy"
SELECT text FROM rulings WHERE cardKingdomFoilId = "Beacon of Immortality"
SELECT count(*) , T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = "future"
SELECT colorIdentity , colorIndicator FROM cards WHERE cardKingdomFoilId = "OWG"
SELECT T2.translation , T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.setcode = "10E" AND T1.convertedManaCost = 5
SELECT T1.name , T3.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T1.setcode WHERE T1.originalType = "Creature" AND T1.originalText = "Elf" INTERSECT SELECT T1.name , T3.date FROM cards AS T1 JOIN rulings AS T2 ON T2.uuid = T1.uuid JOIN sets AS T3 ON T3.code = T1.setcode WHERE T1.originalType = "Creature" AND T1.originalText = "Dragon"
SELECT colorIndicator , format FROM cards WHERE id BETWEEN 1 AND 20
SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN set_translations AS T3 ON T2.code = T3.code WHERE T1.colorIdentity = "Black" AND T3.language = "FlavorText"
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId ORDER BY T2.releaseDate ASC LIMIT 3 WHERE rarity = 'Uncommon'
SELECT count(*) FROM cards WHERE isFoil = 'non-powerful' AND artist = "John Avon";
SELECT count(*) FROM cards WHERE colorindicator = "white" AND power = "powerful";
SELECT count(*) FROM cards WHERE artist = "UDON" AND originaltype = "mtgo" AND hand >= -1
SELECT count(*) FROM cards WHERE originalReleaseDate LIKE "1993%" AND hasContentWarning = 1
SELECT manaCost FROM cards WHERE layout = 'normal' AND frameVersion = 2003 AND borderColor = 'black' AND availability = 'paper' AND availability = 'mtgo'
SELECT sum(faceConvertedManaCost) FROM cards WHERE artist = "Rob Alexander"
SELECT DISTINCT TYPE FROM cards WHERE cardKingdomFoilId = "mtgarena"
SELECT T2.setCode FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = "Spanish"
SELECT count(*) * 100 / count(*) FROM cards WHERE isOnlineOnly = 1 AND frameEffects = "Legendary"
SELECT id FROM cards WHERE isTextless = 'no'
SELECT count(*) , name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE LANGUAGE = "Spanish" ORDER BY name
SELECT T2.flavorName FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.number = 309
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN foreign_data AS T3 ON T2.language = T3.language WHERE T3.flavortext = "br" AND T3.multiverseid = 1276964 AND T3.name = "Portuguese" AND T1.block = 1659
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal'
SELECT DISTINCT TYPE FROM foreign_data WHERE LANGUAGE = "de"
SELECT count(*) FROM cards WHERE power = 'unknown' AND frameEffects = 'triggered'
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "This is a triggered mana ability." AND T1.isTextless != "multiple"
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "paper" AND isPartialPreview = 1
SELECT artist FROM cards WHERE text = "Das perfekte Gegenmittel zu einer dichten Formation"
SELECT T1.flavortext FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "fr" AND T2.type = "Creature" AND T2.layout = "normal" AND T2.borderColor = "black" AND T2.artist = "Matthew D. Wilson"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.date = '01/02/2007' AND T1.rarity = 'print'
SELECT T1.flavorText FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode JOIN sets AS T3 ON T3.code = T2.setCode GROUP BY T2.setCode HAVING count(*) = 180
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE cardKingdomFoilId = "commander" AND status = "legal") FROM legalities WHERE cardKingdomFoilId = "commander" AND status != "warning"
SELECT count(*) * 100 / count(*) FROM cards WHERE power = "" AND flavortext = "French"
SELECT count(*) * 100.0 / (SELECT count(*) FROM sets WHERE TYPE = "Expansion") FROM set_translations AS T1 JOIN FOREIGN_data AS T2 ON T1.code = T2.flavorText WHERE T1.language = "Japanese"
SELECT printings FROM cards WHERE artist = "Daren Bader";
SELECT count(*) FROM cards WHERE edhrecRank > 12000 AND borderColor != "default"
SELECT count(*) FROM cards WHERE isOversized = 'Y' AND isReprint = 'Y' AND promoTypes = 'Promotion'
SELECT asciiName FROM cards WHERE promoTypes = 'Promotion' ORDER BY asciiName LIMIT 3
SELECT flavortext FROM cards AS T1 JOIN foreign_data AS T2 ON T1.multiverseid = T2.multiverseid WHERE T2.multiverseid = 149934
SELECT cardKingdomFoilId FROM cards ORDER BY cardKingdomFoilId LIMIT 3
SELECT count(*) FROM cards WHERE layout != 'normal'
SELECT number FROM cards WHERE id NOT IN ( SELECT T1.id FROM cards AS T1 JOIN subtypes AS T2 ON T1.id = T2.cardId WHERE T2.supertypes = "Angel" INTERSECT SELECT T1.id FROM cards AS T1 JOIN subtypes AS T2 ON T1.id = T2.cardId WHERE T2.supertypes = "Wizard" GROUP BY T1.id HAVING count(*) > 1 )
SELECT name FROM sets WHERE code NOT IN (SELECT mtgocode FROM cards AS T1 JOIN mtgo FIELDS (T1.mtgocode) JOIN cards AS T2 ON T1.mtgocode = T2.mtgocode WHERE T1.isOnlineOnly = 1 ORDER BY name LIMIT 3)
SELECT DISTINCT T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.setcode = "Archenemy" AND T1.id = T2.id AND T1.setcode LIKE "%ARC%"
SELECT T2.name , T3.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN cards AS T3 ON T3.id = T1.parentCode WHERE T1.id = 5
SELECT T1.language , T2.promoTypes FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.setcode = 206
SELECT T1.id , T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language LIKE '%Italian%' INTERSECT SELECT T1.id , T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.id WHERE T2.setcode = "Shadowmoor" ORDER BY T1.id
SELECT id FROM cards WHERE hasfoil AND flavorname = 'Japanese' INTERSECT SELECT id FROM sets WHERE isforeignonly = 1 AND type = 'Set'
SELECT name FROM sets WHERE TYPE = "custom" ORDER BY totalSetSize DESC LIMIT 1;
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.scryfallId WHERE T2.language = "中文简化" AND T1.isOnlineOnly = 1
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.mcmId WHERE T1.language = "Japanese" AND T2.isOnlineOnly = 0
SELECT id FROM cards WHERE colorindicator = "black";
SELECT id FROM cards WHERE frameEffects = "extendedart"
SELECT name FROM cards WHERE colorindicator = 'black' AND isfullart = 1
SELECT T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE id = 174
SELECT name FROM sets WHERE code = "ALL"
SELECT flavortext FROM foreign_data WHERE name = "A Pedra Fellwar"
SELECT setcode FROM sets WHERE releasedate = '07/13/2007'
SELECT T2.baseSetSize , T2.code FROM sets AS T1 JOIN (SELECT code FROM sets WHERE name = "Masques" UNION SELECT code FROM sets WHERE name = "Mirage") AS T2 ON T1.id = T2.id
SELECT code FROM sets WHERE TYPE = "expansion"
SELECT T2.flavorText , T1.originalType FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.watermark = "boros"
SELECT flavorText , language , TYPE FROM cards WHERE colorIndicator = 'colorpie'
SELECT count(*) / (SELECT count(*) FROM cards WHERE convertedManaCost = 10) FROM cards WHERE cardKingdomFoilId = 'Abyssal Horror'
SELECT code FROM sets WHERE TYPE = "Expansion Commander"
SELECT T2.flavorText , T1.originalType FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.watermark LIKE "%abzan%"
SELECT T2.language , T1.originalType FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.watermark = 'azorius'
SELECT count(*) FROM cards AS T1 JOIN tcgplayer_product AS T2 ON T1.uuid = T2.mtgoId WHERE T2.flavortext = "incredibly powerful" AND T2.artist = "Aaron Miller";
SELECT count(*) FROM cards WHERE hand > 100 AND availability = 'paper'
SELECT DISTINCT flavorText FROM foreign_data
SELECT convertedManaCost FROM cards WHERE name = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "unknown"
SELECT faceName FROM cards WHERE isPromo = 'yes' GROUP BY faceName HAVING count(*) >= 2
SELECT DISTINCT T2.flavortext FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavortext WHERE T1.name = "Molimo, Maro-Sorcerer"
SELECT purchaseUrls FROM cards WHERE promoTypes = "bundle"
SELECT count(DISTINCT artist) FROM cards WHERE borderColor = "black" AND availability = "available" AND cardKingdomFoilId = "arena" INTERSECT SELECT count(DISTINCT artist) FROM cards WHERE borderColor = "black" AND availability = "available" AND cardKingdomFoilId = "mtgo"
SELECT convertedManaCost FROM cards WHERE name = "Serra Angel" OR name = "Shrine Keeper" ORDER BY convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE promoTypes = "cardKingdomFoilId" AND faceName = "Battra, Dark Destroyer"
SELECT name FROM cards WHERE originalReleaseDate LIKE "2003%" ORDER BY convertedManaCost DESC LIMIT 3
SELECT T1.flavorname FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T1.flavortext = "Ancestor's Chosen" AND T2.language = "Italian"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.setCode = "Angel of Mercy"
SELECT name FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.mcmId WHERE code = "Hauptset Zehnte Edition"
SELECT T1.keywordText FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.keywords LIKE "%Ancestor's Chosen%" INTERSECT SELECT T1.keywordText FROM foreign_data AS T1 JOIN cards AS T2 ON T1.id = T2.uuid WHERE T1.flavorText LIKE "%Korean%"
SELECT count(*) FROM cards WHERE setcode = "Hauptset Zehnte Edition" AND artist = "Adam Rex"
SELECT count(*) FROM cards WHERE setcode = "Hauptset Zehnte Edition"
SELECT T1.translation FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Eighth Edition"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T1.name = "Angel of Mercy" AND T2.isOnlineOnly = "Y"
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.cardKingdomId WHERE T2.name = "Ancestor's Chosen";
SELECT T2.promoTypes FROM sets AS T1 JOIN card_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Hauptset Zehnte Edition" AND T1.type = 1
SELECT count(*) FROM sets WHERE block = "Ice Age" INTERSECT SELECT count(*) FROM set_translations WHERE language = "Italian"
SELECT count(*) FROM cards WHERE setcode = 'Adarkar Valkyrie' AND isforeignonly = 1
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN sets AS T3 ON T3.code = T2.setcode WHERE T2.language = "Italian" AND T3.baseSetSize < 100
SELECT count(*) FROM cards WHERE coloridentity = "Black" AND setcode = "Coldsnap"
SELECT asciiName FROM cards WHERE cardKingdomFoilId = "Coldsnap" ORDER BY convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE setcode = "Coldsnap" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.code WHERE T2.setcode = "Jeremy Jarvis" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.code WHERE T2.setcode = "Aaron Miller" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.code WHERE T2.setcode = "Chippy"
SELECT number FROM cards WHERE setcode = 'Coldsnap'
SELECT count(*) FROM cards WHERE cardKingdomFoilId = "Coldsnap" AND convertedManaCost > 5 AND power = "unknown"
SELECT flavortext FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText JOIN sets AS T3 ON T3.code = T2.code WHERE T3.name = "Ancestor's Chosen" AND T2.language = "Italian"
SELECT DISTINCT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.faceName = "Ancestor's Chosen" AND T1.flavorText = "flavor text"
SELECT flavortext FROM foreign_data WHERE language = "de" AND name = "Ancestor's Chosen"
SELECT T1.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomId = "Coldsnap" AND T1.cardKingdomFoilId = "null" AND T1.cardKingdomText = "Italian"
SELECT T2.flavorName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText JOIN sets AS T3 ON T3.code = T2.setcode WHERE T3.type = "Coldsnap" AND T1.colorIdentity = "Italian" ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = "Reminisce"
SELECT count(*) / (SELECT count(*) FROM cards WHERE convertedManaCost = 7) * 100 FROM cards WHERE cardKingdomFoilId = "Coldsnap"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE cardKingdomFoilId = 'Coldsnap') FROM cards WHERE cardKingdomId = 'Incredibly Powerful'
SELECT code FROM sets WHERE releaseDate LIKE "2017/%" AND date LIKE "14/%"
SELECT keyruneCode FROM sets WHERE code = "PKHC"
SELECT mcmId FROM sets WHERE code = 'SS2'
SELECT mcmName FROM sets WHERE releaseDate = "2017/6/9" AND TYPE = "Magic"
SELECT T1.originalType FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.mcmId WHERE T2.name = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T1.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Jim Pavelec"
SELECT T2.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.keyruneCode WHERE T1.name = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.name = "Rinascita di Alara";
SELECT T1.promoTypes FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.number WHERE T1.name = "Huitième édition";
SELECT T1.flavorName FROM foreign_data AS T1 JOIN sets AS T2 ON T1.code = T2.code JOIN set_translations AS T3 ON T2.mtgname = T3.setcode WHERE T2.name = "Tendo Ice Bridge"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Tenth Edition"
SELECT T2.name FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.id WHERE T1.cardKingdomFoilId = "Fellwar Stone"
SELECT name FROM cards WHERE setcode = 'Journey into Nyx Hero's Path' ORDER BY convertedManaCost DESC LIMIT 1
SELECT T2.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.name WHERE T1.name = "Ola de frío";
SELECT T2.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T1.name = "Samite Pilgrim"
SELECT count(*) FROM cards WHERE setcode = "World Championship Decks 2004" AND convertedManaCost = "3"
SELECT T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Mirrodin" AND T2.language = "Simplified Chinese"
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Japanese" INTERSECT SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "English"
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE isOnlineOnly = 1) FROM cards WHERE originalText LIKE '%Brazil%' AND translation[0] = "Portuguese"
SELECT DISTINCT printings FROM cards WHERE id NOT IN (SELECT T1.id FROM cards AS T1 JOIN (SELECT T1.id FROM cards AS T1 JOIN (SELECT T1.id FROM cards AS T1 JOIN FOREIGN_DATA AS T2 ON T1.uuid = T2.multiverseid WHERE T2.language = "de") AS T3 ON T3.language = "de") AS T4 WHERE T4.text = "Aleksi Briclot")
SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.mcmid = T2.mcmid ORDER BY T1.baseSetSize DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T2.convertedManaCost != T1.convertedManaCost ORDER BY T1.faceConvertedManaCost DESC LIMIT 1
SELECT frameEffects FROM cards WHERE power = "incredible" AND cardKingdomFoilId = "cardKingdomFoilId" GROUP BY frameEffects ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards WHERE power = "unknown" AND cardKingdomFoilId NOT IN ( SELECT mtgFoilId FROM duelDeck )
SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.mcmIdExtras = T2.mcmId WHERE T1.type = "Commander" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT id , asciiName FROM cards ORDER BY convertedManaCost DESC LIMIT 10
SELECT T1.releaseDate , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY T1.releaseDate DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T2.language = "French" AND T1.name = "Volkan Baçım"
SELECT count(*) FROM cards WHERE rarity = "rare" INTERSECT SELECT count(*) FROM legalities WHERE status = "legal"
SELECT T1.format , T1.name FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.scryfallId WHERE T1.status = 'Banned' GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT T2.language FROM cards AS T1 JOIN sets AS T2 ON T1.code = T2.name WHERE T1.name = "Battlebond"
SELECT T1.faceName , T1.frameEffects FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY count(*) LIMIT 1
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.scryfallIllustrationId JOIN foreign_data AS T3 ON T3.uuid = T2.scryfallIllustrationId WHERE T2.frameversion = 1997 AND T3.format = 'Legacy' AND T1.status = 'Sensitive' OR T1.status = 'Wizards of the Coast'
SELECT name , format FROM cards WHERE edhrecRank = "1"
SELECT avg(T2.baseSetSize) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.releaseDate BETWEEN '01/01/2012' AND '12/31/2015' AND T2.type = "sets" AND T2.keyruneCode != "none"
SELECT artist FROM cards WHERE isOnlineOnly = 'yes' AND borderColor = 'black'
SELECT T1.uuid FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "old"
SELECT count(*) FROM cards WHERE artist = "Matthew D. Wilson" AND availability = "paper"
SELECT T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Kev Walker" ORDER BY T2.date DESC
SELECT T1.name , T3.format FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.mcmId JOIN legalities AS T3 ON T3.id = T1.id WHERE T2.name = 'Hour of Devastation'
SELECT name FROM sets WHERE code NOT IN (SELECT setcode FROM set_translations WHERE language = "Japanese")
SELECT T1.frameEffects , T1.frameVersion FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = 'Banned' INTERSECT SELECT T1.frameEffects , T1.frameVersion FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned'
SELECT DisplayName FROM users WHERE Reputation > (SELECT Reputation FROM users WHERE DisplayName = 'Harlan' OR DisplayName = 'Jarrod Dixon')
SELECT T1.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.user_id WHERE T2.creationdate LIKE "2011%"
SELECT count(*) FROM users WHERE lastaccessdate > '2014/09/01'
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.UserId = T2.OwnerUserId GROUP BY T2.OwnerUserId ORDER BY T2.ViewCount DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.vote_type = 'Up' AND T2.upvotes > 100 INTERSECT SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.vote_type = 'Down' AND T2.downvotes > 100
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.views > 10 AND T1.creationdate > 2013
SELECT count(*) FROM badges WHERE name = 'C-S-G'
SELECT title FROM posts WHERE owneruserid = (SELECT id FROM users WHERE displayname = 'Csgillespie' )
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT title FROM posts WHERE OWNERUserId = "csgillespie" ORDER BY viewcount DESC LIMIT 1
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.ID = T2.OwnerUserId GROUP BY T1.OwnerDisplayName ORDER BY SUM(T2.Score) DESC LIMIT 1
SELECT sum(commentcount) FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.owneruserid = (SELECT T1.owneruserid FROM users AS T2 ON T2.id = T1.owneruserid WHERE T2.displayname = 'Csgill' )
SELECT max(AnswerCount) FROM posts WHERE OwnerUserId = "Csgillis"
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.Body = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Csgillispie' AND T1.postId = Tposts.parentId;
{"sql": "SELECT T1.OwnerDisplayName FROM posts AS T1 JOIN posthistory AS T2 ON T1.Id = T2.PostId JOIN users AS T3 ON T3.Id = T2.UserId WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3 WHERE T1.OwnerUserId = (SELECT T3.OwnerUserId FROM users AS T3
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Reputation > 50 AND T1.Score > 19
SELECT T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.ID = T2.OWNER USERID WHERE T2.Title = "Eliciting priors from experts"
SELECT T2.Body FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.TagName = "bayesian"
SELECT T2.Body FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id GROUP BY T1.ExcerptPostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE userid = 'csgillespie'
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Csgill'
SELECT count(*) FROM badges WHERE date = '2011' AND userDisplayName = "csgillespie"
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId ORDER BY count(*) DESC LIMIT 1
SELECT avg(Score) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "csgillespie";
SELECT avg(T1.Id) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Views > 200
SELECT count(*) * 100 / (SELECT count(*) FROM posts WHERE score > 5 AND owneruserId IN (SELECT id FROM users WHERE reputation = "elder")) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserId
SELECT max(VoteCount) FROM votes WHERE CreationDate = "2010/7/19" AND UserId = 58
SELECT T1.creationdate FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id GROUP BY T1.postid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival";
SELECT T1.Title FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid GROUP BY T2.postid ORDER BY AVG(T2.score) DESC LIMIT 1
SELECT commentcount FROM posts WHERE viewcount = 1910;
SELECT FavoriteCount FROM posts WHERE PostId = (SELECT PostId FROM comments WHERE CreationDate = "2014-04-23 20:29:39" )
SELECT Text FROM comments WHERE PostId = 107829
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.id = 23853 AND T2.creationdate LIKE "2013/07/12 18:08:18"
SELECT T2.reputation FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T1.id = 65041
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Tiago Pasqualini";
SELECT T2.DisplayName FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.id = 6347
SELECT sum(T2.ViewCount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.PostTypeId = 3
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "DatEpicCoderGuyWhoPrograms"
SELECT max(AnswerCount) - max(DownVotes) FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.id = 24
SELECT sum(viewcount) FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17
SELECT DisplayName FROM users WHERE WebsiteUrl = 'http://stackoverflow.com'
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'SilentGhost'
SELECT T1.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.text = 'thank you user93!'
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'A Lion'
SELECT T2.Reputation , T1.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Understanding what Dassault iSight is doing?'
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'How does gentle boosting differ from AdaBoost'
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Necromancer' LIMIT 10
SELECT lasteditordisplayname FROM posts WHERE title = 'Open source tools for visualizing multi-dimensional data'
SELECT T1.Title FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.postId JOIN users AS T3 ON T2.userdisplayname = T3.displayname WHERE T3.UserId = (SELECT T3.UserId FROM users AS T3 JOIN postHistory AS T4 ON T3.id = T4.postId JOIN users AS T5 ON T4.userdisplayname = T5.displayname WHERE T5.displayname = 'Vebjorn Ljosa' )
SELECT sum(T1.Score) FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId JOIN users AS T3 ON T2.UserId = T3.Id WHERE T3.DisplayName = "Yevgeny"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Why square the difference instead of taking the absolute value in standard deviation'
SELECT sum(T2.BountyAmount) FROM posts AS T1 JOIN votes AS T2 ON T1.PostId = T2.PostId WHERE T1.Title = 'data'
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.BountyAmount = 50 AND T2.PostId = (SELECT T3.PostId FROM posts AS T3 WHERE T3.Title LIKE "%variance%" )
SELECT T2.Title , T2.CommentCount , T1.Tags , T2.Comment FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.TagName = 'humor' GROUP BY T1.Tags
SELECT count(*) FROM comments WHERE UserId = 13
SELECT UserId FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY ViewCount LIMIT 1
SELECT count(DISTINCT T1.userid) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.date = "2011" AND T1.name = "supporter"
SELECT count(DISTINCT T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name > 5
SELECT count(*) FROM badges WHERE name = 'teacher' INTERSECT SELECT count(*) FROM badges WHERE name = 'supporter' AND location = 'New York'
SELECT T2.Reputation , T1.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.PostId = 1
SELECT T1.DisplayName FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userid GROUP BY T1.id HAVING count(*) = 1 INTERSECT SELECT T1.DisplayName FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userid JOIN votes AS T3 ON T1.id = T3.userid JOIN badges AS T4 ON T4.id = T3.voteid JOIN tags AS T5 ON T5.id = T4.tagid GROUP BY T1.id HAVING sum(T3.bountyamount) >= 1000
SELECT T1.UserId , T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Teacher" AND users.Location = "India"
SELECT date - 1 - count(*) FROM badges WHERE date LIKE "2010%" INTERSECT SELECT date - 1 - count(*) FROM badges WHERE date LIKE "2011%"
SELECT T1.PosthistoryTypeId , COUNT(DISTINCT T2.userid) FROM posthistory AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId GROUP BY T2.userid HAVING T1.Postid = 3720
SELECT title , score FROM posts WHERE postid = 61217 GROUP BY postid ORDER BY score DESC LIMIT 1
SELECT T1.Score , T2.LinkTypeId FROM comments AS T1 JOIN postlinks AS T2 ON T1.PostId = T2.PostId WHERE T1.PostId = 395
SELECT T1.PostId , T2.OwnerUserId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Score > 60
SELECT sum(FavoriteCount) FROM posts WHERE CreationDate LIKE "2011%" AND OwnerUserId = 686
SELECT avg(upvotes) , avg(age) FROM users WHERE id IN (SELECT userids FROM votes GROUP BY userids HAVING count(*) >= 2)
SELECT count(*) FROM badges WHERE Name = "Announcer"
SELECT name FROM badges WHERE Date = '2010-07-19 19:39:08'
SELECT count(*) FROM comments WHERE text > 0
SELECT Text FROM comments WHERE CreationDate LIKE "7/19/2010 7:25:47:PM"
SELECT count(*) FROM posts WHERE score = 10
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id ORDER BY T2.reputation DESC LIMIT 1
SELECT T2.reputation FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.date = '7/19/2010 7:39:08 PM'
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Pierre"
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = 'Rochester , NY'
SELECT count(*) , (count(*) / (SELECT count(*) FROM badges)) FROM badges WHERE name = 'Teacher'
SELECT count(*) * 100.0 / (count(*) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name = 'Organizer') WHERE T2.age = 'Teenager'
SELECT T1.Score FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate = "2010-07-19 19:59:56"
SELECT Text FROM comments WHERE CreationDate = "2010-07-19 19:37:33"
SELECT age FROM users WHERE LOCATION = 'Vienna, Austria' AND id IN (SELECT userid FROM badges WHERE name = 'accepted' )
SELECT count(DISTINCT T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name = 'Supporter'
SELECT sum(T1.Views) FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Date = '2010-07-19 19:39:08'
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation LIMIT 1
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.id = T2.userid WHERE T2.displayname = "Sharpie"
SELECT count(DISTINCT T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name = 'Supporter' AND T2.age > 30
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.id = 30
SELECT count(*) FROM users WHERE LOCATION = 'New York'
SELECT CreationDate FROM votes WHERE CreationDate LIKE "2010%"
SELECT count(*) FROM users WHERE age > 25
SELECT DisplayName FROM users ORDER BY ViewCount DESC LIMIT 1
{"sql": "SELECT count(*) , YEAR FROM votes WHERE creationdate LIKE \"2010-%\" GROUP BY YEAR , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid , userid , voteid ,
SELECT T2.TagName FROM users AS T1 JOIN tags AS T2 ON T1.ID = T2.ExcerptPostId WHERE T1.DisplayName = "John Salvatier"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Daniel Vassallo"
SELECT sum(T1.Views) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.UserId WHERE T1.DisplayName = "Harlan";
SELECT T1.PostId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Slashnick" ORDER BY T1.AnswerCount DESC LIMIT 1
SELECT max(viewcount) FROM posts WHERE owneruserId = (SELECT id FROM users WHERE displayname = 'Harvey Motulsky' ) UNION SELECT max(viewcount) FROM posts WHERE owneruserId = (SELECT id FROM users WHERE displayname = 'Noah Snyder' )
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = (SELECT T2.OwnerUserId FROM posts AS T2 WHERE T2.OwnerDisplayName = 'Matt Parker' GROUP BY T2.OwnerDisplayName HAVING max(T2.AnswerCount) > 4)
SELECT count(*) FROM comments AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Neil McGuigan' AND T1.score < 0
SELECT DISTINCT T2.Tags FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = "Mark Meckes" EXCEPT SELECT DISTINCT T2.Tags FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Organizer'
SELECT count(*) / (SELECT count(*) FROM posts WHERE posttype = "answer") FROM posts WHERE owneruserid = (SELECT id FROM users WHERE tagname = "R")
SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN postHistory AS T2 ON T1.OwnerUserId = T2.UserId WHERE T2.OwnerDisplayName = 'Mornington' INTERSECT SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN postHistory AS T2 ON T1.OwnerUserId = T2.UserId WHERE T2.OwnerDisplayName = 'Amos'
SELECT count(DISTINCT T1.userid) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.date = 2014
SELECT count(*) FROM posts WHERE creationdate LIKE "2010-07-%" AND creationdate LIKE "14:00:00";
SELECT T1.DisplayName , T1.Age FROM users AS T1 JOIN badges AS T2 ON T1.UserId = T2.UserId ORDER BY T1.Views DESC LIMIT 1
SELECT lasteditdate , lastedituserid FROM posts WHERE title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE score < 0 AND userid = 13
SELECT T1.Title , T4.UserDisplayName FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.PostId JOIN users AS T4 ON T2.UserId = T4.id WHERE T2.Score > 0
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.location = 'North Pole' AND T1.date = 2011
SELECT T1.OwnerDisplayName , T1.WebsiteUrl FROM users AS T1 JOIN posts AS T2 ON T1.UserID = T2.OwnerUserId GROUP BY T2.OwnerUserId HAVING COUNT(*) > 150
SELECT count(*) , T1.LastEditDate FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What is the best introductory Bayesian statistics textbook" GROUP BY T1.LastEditDate
SELECT T2.LastAccessDate , T2.Location FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Outliers'
SELECT T2.Title FROM postLinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.RelatedPostId = 1655
SELECT T1.Id , T2.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Samuel" AND T1.Date = 2013
SELECT T2.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.ViewCount DESC LIMIT 1
SELECT T1.OwnerDisplayName , T1.Location FROM users AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid JOIN posts AS T3 ON T2.wikipostid = T3.id WHERE T3.tags = 'hypothesis-testing'
SELECT T2.Title , T1.LinkTypeId FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "What are principal component scores"
SELECT t1.OwnerDisplayName FROM users AS t1 JOIN posts AS t2 ON t1.Id = t2.OwnerUserId ORDER BY t2.Score DESC LIMIT 1
SELECT T1.Title , T1.OwnerDisplayName FROM posts AS T1 JOIN votes AS T2 ON T1.PostId = T2.PostId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT TITLE FROM posts ORDER BY VIEWCOUNT DESC LIMIT 5
SELECT sum(count) FROM tags WHERE postid IN (SELECT T1.PostId FROM posts AS T1 JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T1.ViewCount BETWEEN 5000 AND 7000)
SELECT OwnerUserId FROM posts ORDER BY score DESC LIMIT 1
SELECT Age FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM votes WHERE creationdate = '2011' AND bountyamount = 50
SELECT id FROM users ORDER BY age DESC LIMIT 1
SELECT sum(score) FROM posts WHERE creationdate = "2010-07-19"
SELECT avg(T1.LinkTypeId) FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id GROUP BY T1.LinkTypeId HAVING max(T2.AnswerCount) <= 2 AND T1.CreationDate LIKE "%2010%"
SELECT max(T1.Score) , T1.PostId FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T1.UserId = 1465 GROUP BY T1.PostId ORDER BY T1.Score DESC LIMIT 1
SELECT title FROM posts ORDER BY creationdate LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.Date) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN tags AS T3 ON T2.ExcerptPostId = T3.ID WHERE T3.TagName = 'chl'
SELECT min(T1.creationdate) FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userdisplayname ORDER BY T1.age LIMIT 1
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Autobiographer'
SELECT count(*) FROM users AS T1 JOIN postHistory AS T2 ON T1.id = T2.userdisplayname JOIN posts AS T3 ON T2.postid = T3.id WHERE T1.location = 'United Kingdom' AND T3.favoritecount >= 4
SELECT avg(UpVotes) FROM users WHERE Age = (SELECT min(Age) FROM users)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE Reputation > 2000 AND Views > 1000
SELECT DisplayName FROM users WHERE Age = "Adult"
SELECT sum(AnswerCount) FROM posts WHERE OwnerDisplayName = "Jay Stevens" AND CreationDate LIKE "2010%"
SELECT postid , title FROM posts WHERE owneruserId = (SELECT userid FROM users WHERE displayname = 'Harvey Motulsky' GROUP BY userid ORDER BY count(*) DESC LIMIT 1) ORDER BY viewcount DESC LIMIT 1;
SELECT PostId , Title FROM posts ORDER BY SCORE DESC LIMIT 1
SELECT avg(Score) FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Stephen Turner"
SELECT T1.userDisplayName FROM users AS T1 JOIN postHistory AS T2 ON T1.id = T2.userDisplayName JOIN posts AS T3 ON T2.postId = T3.id WHERE T3.creaiondate = 2011 AND T3.viewcount > 20000
SELECT T1.Id , T2.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.CreationDate LIKE "%2010%" ORDER BY T1.score DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.reputation > 1000 AND T2.creationdate LIKE "2011%"
SELECT avg(age) FROM users WHERE age < 19
SELECT T2.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Computer Game Datasets'
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
SELECT count(*) FROM comments WHERE postid = (SELECT max(postid) FROM comments)
SELECT count(*) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT T2.LastEditorDisplayName , T2.Location FROM posts AS T1 JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.PostId = 183
SELECT T1.name , T1.date FROM badges AS T1 JOIN users AS T2 ON T1.id = T2.id WHERE T2.displayname = "Emmett" ORDER BY T1.date DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.voteid = 'Up' AND T2.age > 20 GROUP BY T2.id HAVING sum(T1.votecount) > 5000
SELECT Date - CreationDate FROM badges WHERE Name = "Badges" AND UserId = (SELECT AccountId FROM users WHERE DisplayName = "Zolomon")
SELECT count(*) , commentcount FROM posts WHERE creationdate = (SELECT max(creationdate) FROM posts)
SELECT T1.Text , T1.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN posts AS T3 ON T3.Id = T1.PostId WHERE T3.Title = 'Analysing wind data with R' ORDER BY T1.creationdate DESC LIMIT 10
SELECT count(DISTINCT UserId) FROM badges WHERE Name = 'Citizen Patrol'
SELECT count(*) FROM tags WHERE tagname = 'careers'
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT commentcount , answercount FROM posts WHERE title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE displayname = 'IrishStat'
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT T2.OwnerDisplayName , T1.score FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id GROUP BY T1.PostId ORDER BY T1.score DESC LIMIT 100
SELECT count(*) FROM posts WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 AND count >= 20
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T1.Reputation , T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.ID = T2.UserId WHERE T2.Text = 'fine , you win :)'
SELECT TEXT FROM comments WHERE postid = "posts" AND tags = "linear regression"
SELECT max(T2.Score) , T1.PostId FROM posts AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.ViewCount BETWEEN 100 AND 150 GROUP BY T1.PostId ORDER BY max(T2.Score) DESC LIMIT 1
SELECT CreationDate , Age FROM users AS T1 JOIN comments AS T2 ON T1.ID = T2.UserId WHERE T1.WebsiteUrl = 'https://www.webiste.com'
SELECT count(*) FROM comments WHERE score = 0 AND postid IN (SELECT postid FROM comments GROUP BY postid HAVING sum(viewcount) < 5)
SELECT count(*) FROM comments WHERE commentcount = 1 AND score = 0
SELECT count(*) FROM comments WHERE score = 0 AND userdisplayname = '40'
SELECT T1.PostId , T2.Text FROM posts AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.Title = "Group differences on a five point Likert item"
SELECT max(T1.Score) FROM comments AS T1 JOIN votes AS T2 ON T1.UserId = T2.UserId WHERE T1.Text = "R is also lazy evaluated."
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky"
SELECT userdisplayname FROM comments WHERE score BETWEEN 1 AND 5 GROUP BY userdisplayname HAVING sum(downvotes) = 0
SELECT T2.userdisplayname FROM comments AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.score BETWEEN 5 AND 10 GROUP BY T2.userdisplayname HAVING count(*) * 0.10 = (SELECT count(*) FROM comments WHERE score BETWEEN 5 AND 10)
SELECT power_name FROM superpower WHERE power_name LIKE "%3-D%" GROUP BY power_name HAVING count(power_name) >= 3
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = "Super Strength"
SELECT count(*) FROM superpower AS T1 JOIN superhero AS T2 ON T1.power_id = T2.superhero_name WHERE T1.power_name = "Super Strength" AND T2.height_cm > 200
SELECT T1.full_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.superhero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE count(power_name) > 15
SELECT count(*) FROM superhero WHERE eye_colour_id = "blue"
SELECT skin_colour_id FROM superhero WHERE superhero_name = "Apocalypse"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.hero_id WHERE T1.eye_colour_id = "blue" AND T2.power_name = "Agility"
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT colour_id FROM colour WHERE name = "blue") AND hair_colour_id = (SELECT colour_id FROM colour WHERE name = "blond")
SELECT count(*) FROM superhero WHERE publisher_id = "Marvel Comics"
SELECT superhero_name FROM superhero WHERE publisher_id = "Marvel Comics" ORDER BY height_cm DESC
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.superhero_name = "Sauron"
SELECT superhero_name FROM superhero WHERE publisher_name = 'Marvel Comics' ORDER BY count(*) DESC eye_colour_id
SELECT avg(height_cm) FROM superhero WHERE publisher_name = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.publisher_name = 'Marvel Comics'
SELECT count(*) FROM superhero WHERE publisher_id = "DC Comics"
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id ORDER BY T2.weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero WHERE eye_colour_id = "gold" AND publisher_id = "Marvel Comics";
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = "Blue Beetle II"
SELECT count(*) FROM superhero WHERE hair_colour_id = "blond"
SELECT superhero_name FROM superhero ORDER BY full_name LIKE '%dumb%' LIMIT 1
SELECT race FROM superhero WHERE superhero_name = "Copycat"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value < 50
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'death touch'
SELECT count(*) FROM superhero WHERE gender_id = 1 AND weight_kg = 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE gender = "vampire"
SELECT count(*) , T1.superhero_name FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = 10 AND T2.gender_id = 10 UNION SELECT count(*) , T1.superhero_name FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = 11 AND T2.gender_id = 11
SELECT T1.publisher_name , count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.publisher_name = 'DC' INTERSECT SELECT T1.publisher_name , count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.publisher_name = 'Marvel Comics' GROUP BY T1.publisher_name ORDER BY count(*) DESC LIMIT 1;
SELECT publisher_id FROM superhero WHERE full_name = "Star Trek."
SELECT avg(attribute_value) FROM hero_attribute
SELECT count(*) FROM superhero WHERE full_name = ""
SELECT T1.eye_colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.id = 75
SELECT T2.power_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = hero_power.power_id WHERE T1.superhero_name = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender_id = 1 AND T1.power_name = "Strength" INTERSECT SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender_id = 1 AND T3.full_name LIKE "%Male%"
SELECT superhero_name FROM superhero GROUP BY superhero_name HAVING count(*) = 1
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 EXCEPT SELECT T1.superhero_name FROM superhero AS T1 JOIN superhero AS T2 ON T1.id = T2.id WHERE T2.eye_colour_id = T3.eye_colour_id AND T3.height_cm BETWEEN 170 AND 190
SELECT t3.power_name FROM hero_power AS t1 JOIN superpower AS t2 ON t1.power_id = t2.id JOIN superhero AS t3 ON t3.id = t1.hero_id WHERE t3.id = 56
SELECT full_name FROM superhero WHERE gender = "Demi-God"
SELECT count(*) FROM superhero WHERE full_name LIKE "%bad%"
SELECT race FROM superhero WHERE weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185
SELECT eye_colour FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT count(*) , avg(T2.publisher_name) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.height_cm BETWEEN 150 AND 180 GROUP BY T2.publisher_name
SELECT superhero_name FROM superhero WHERE gender_id = 1 AND weight_kg > (SELECT avg(weight_kg) FROM superhero)
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id GROUP BY T1.power_name ORDER BY count(*) DESC LIMIT 1
SELECT attribute_value FROM hero_attribute WHERE attribute_name = "Superpower" AND superhero_name = "Abomination"
SELECT T2.power_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 1
SELECT count(DISTINCT hero_id) FROM hero_power WHERE power_name = 'stealth'
SELECT superhero_name , full_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(full_name) FROM superhero WHERE race_id != 2;
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Dark Horse Comics"
SELECT T1.superhero_name FROM superhero AS T1 JOIN superhero_power AS T2 ON T1.id = T2.hero_id JOIN hero_power AS T3 ON T2.power_id = T3.id JOIN superpower AS T4 ON T3.power_name = T4.power_name WHERE T4.publisher_name = 'Dark Horse Comics' GROUP BY T1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT eye_colour FROM superhero WHERE full_name = "Abraham Sapien"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = "Flight"
SELECT T1.eye_colour , T1.hair_colour , T1.skin_colour FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Dark Horse Comics' AND T1.gender = 'Female'
SELECT T2.publisher_name FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T1.name = "eyes" AND T1.name = "hair" AND T1.name = "skin";
SELECT T1.superhero_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.gender_id = T2.power_name WHERE T1.superhero_name = "A-Bomb"
SELECT count(*) / count(*) FROM superhero WHERE gender = "female" AND eye_colour_id = "blue"
SELECT superhero_name , race FROM superhero WHERE full_name = "Charles Chandler"
SELECT gender FROM superhero WHERE id = 13
SELECT T1.superhero_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.power_id WHERE T2.power_name = 'adapt'
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.power_id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Amazo"
SELECT power_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.superhero_name = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM colour WHERE colour.name = "amber")
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM colour WHERE colour = "black") AND hair_colour_id = (SELECT hair_colour_id FROM colour WHERE colour = "black")
SELECT eye_colour FROM superhero WHERE skin_colour = "gold"
SELECT full_name FROM superhero WHERE race_id = 4 AND gender = 1
SELECT t1.superhero_name FROM superhero AS t1 JOIN alignment AS t2 ON t1.alignment_id = t2.id WHERE t2.alignment = "neutral"
SELECT count(DISTINCT hero_id) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute)
SELECT T2.race , T2.alignment FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.full_name = "Cameron Hicks"
SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero WHERE gender = 'female' AND publisher = 'Marvel Comics') FROM superhero WHERE gender = 'female' AND publisher = 'Marvel Comics'
SELECT avg(weight_kg) FROM superhero WHERE race_id = 1000
SELECT weight_kg - 100 FROM superhero WHERE full_name = "Emil Blonsky" INTERSECT SELECT weight_kg - 100 FROM superhero WHERE full_name = "Charles Chandler"
SELECT avg(height_cm) FROM superhero
SELECT power_name FROM superpower WHERE power_name = "Abomination"
SELECT count(*) FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE race = 'god/eternal') AND gender_id = 1
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE alignment = "neutral"
SELECT T1.attribute_name , T1.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T1.attribute_name = '3-D Man'
SELECT superhero_name FROM superhero WHERE eye_colour_id = colour.id AND hair_colour_id = colour.id AND colour.name = "blue" AND colour.name = "brown"
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.superhero_name = "Hawkman" AND T2.superhero_name = "Karate Kid" AND T2.superhero_name = "Speedy"
SELECT count(*) FROM superhero WHERE publisher_id = null
SELECT count(*) FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE name = "Blue")
SELECT count(*) , gender_id FROM superhero GROUP BY gender_id HAVING count(*) >= 2
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = "cryokinesis"
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg NULL
SELECT eye_colour FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT T2.power_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.power_id WHERE T1.full_name = "Helen Parr"
SELECT race FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id ORDER BY T2.superpower DESC LIMIT 1
SELECT T1.alignment , T2.power_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id JOIN superhero AS T3 ON T3.id = T1.hero_id WHERE T3.superhero_name = "Atom IV"
SELECT full_name FROM superhero WHERE eye_colour_id = "blue" GROUP BY full_name ORDER BY count(*) DESC LIMIT 5
SELECT avg(t2.attribute_value) FROM hero_attribute AS t1 JOIN attribute AS t2 ON t1.attribute_value = t2.attribute_name WHERE t2.attribute_name = "neutral"
SELECT T1.skin_colour_id FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id GROUP BY T1.skin_colour_id HAVING COUNT(*) = 100
SELECT count(*) FROM superhero WHERE gender_id = 2 AND full_name LIKE "%Female%"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT DISTINCT race FROM superhero WHERE hair_colour_id = "blue" AND gender = "male"
SELECT count(*) FROM superhero WHERE gender_id = 2 AND power_name = 'bad'
SELECT count(*) , (SELECT count(*) FROM superhero WHERE eye_colour_id = 'blue') FROM superhero WHERE weight_kg = "null"
SELECT power_name FROM hero_power WHERE power_name = 'Destroyer'
SELECT power_name FROM superpower WHERE power_name LIKE "%Ajax%"
SELECT count(*) FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T1.race = "green" AND T2.gender_id = 2
SELECT count(*) FROM superhero WHERE gender_id = 2 AND publisher_name = 'Marvel Comics'
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.power_id WHERE t2.power_name = 'wind' ORDER BY t1.superhero_name
SELECT t1.gender FROM superhero AS t1 JOIN gender AS t2 ON t1.gender_id = t2.id JOIN superpower AS t3 ON t3.id = t2.id WHERE t3.power_name = "Phoenix Force"
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE superhero_name = "Non-human" AND publisher_name = "Dark Horse Comics"
SELECT count(*) FROM superhero WHERE power_name = 'Fast'
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC' OR T2.publisher_name = 'Marvel Comics'
SELECT attribute_value FROM hero_attribute WHERE superhero_name = "Black Panther" AND attribute_id = (SELECT id FROM attribute WHERE attribute_name = "weakest")
SELECT T1.eye_colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.superhero_name = "Abomination";
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = "Charles Chandler"
SELECT count(*) FROM superhero WHERE gender_id = 1 AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Luke Jeter')
SELECT count(*) * 100 / (SELECT count(*) FROM superhero WHERE publisher_name = 'Marvel Comics') FROM superhero WHERE gender = 'good'
SELECT count(*) FROM superhero WHERE full_name LIKE "%John%"
SELECT T1.id FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = "attribute_value" ORDER BY T1.attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT full_name FROM superhero WHERE weight_kg < 100 AND eye_colour_id = 101
SELECT attribute_value FROM hero_attribute WHERE attribute_name = "Superpower" AND power_name = "Aquababy"
SELECT weight_kg , race FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender = "neutrality"
SELECT T1.id FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'Inteligence'
SELECT eye_colour FROM superhero WHERE race = "Blackwulf"
SELECT T1.power_name FROM hero_power AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id WHERE T2.height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT DISTINCT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.year = 20 AND T3.round = 1
SELECT T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.round = 19 AND T2.position = 2 ORDER BY T1.surname DESC LIMIT 1
SELECT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = 'Shanghai'
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Circuit de Barcelona-Catalunya"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Germany"
SELECT DISTINCT T2.position FROM qualifications AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T1.constructorid = (SELECT constructorid FROM constructorresults WHERE constructorname = 'Renault')
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid IN ( SELECT circuitid FROM circuits WHERE country != 'Asia') AND circuitid IN ( SELECT circuitid FROM circuits WHERE country != 'Europe')
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Australian Grand Prix"
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit"
SELECT TIME FROM races WHERE circuitid = "Sepang"
SELECT T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Abu Dhabi Grand Prix"
SELECT T2.country FROM constructorresults AS T1 JOIN circuits AS T2 ON T1.raceid = T2.circuitid WHERE T1.points = 1 AND T1.raceid = 24
SELECT q1 FROM qualifying WHERE raceid = (SELECT raceid FROM qualifying ORDER BY number DESC LIMIT 1) AND driverid = (SELECT driverid FROM qualifying ORDER BY number DESC LIMIT 1) AND code = 'Bruno Senna'
SELECT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.q1 = "0:01:40" AND T2.q2 = "Q2" AND T2.raceid = 355
SELECT T1.number FROM qualifying AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.position = "0:01:54" AND T1.raceid = 903 ORDER BY T1.driverid
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T2.year = 2007 AND T1.status = "LAP" AND T2.name = "Bahrain Grand Prix"
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE raceId = 901
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2015 AND T3.date LIKE "%2015/%2011/%2029%"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 592 ORDER BY T1.dob DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds = 0 : 01 : 27 AND T2.raceid = 161
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN lapTimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 933 ORDER BY T2.milliseconds LIMIT 1
SELECT T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuit = T2.circuitId WHERE T1.name = "Malaysian Grand Prix"
SELECT T2.name FROM races AS T1 JOIN constructorstandings AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T1.round = 9 ORDER BY T3.points DESC LIMIT 1
SELECT T1.position FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T3.driverid = T2.driverid WHERE T3.forename = "Lucas" AND T3.surname = "di Grassi" AND T1.round = 345
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.driverid = T3.driverid WHERE T3.id = 347 AND T2.q2 = "0:01:15"
SELECT T1.code FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE raceid = 45 AND T2.q3 = "0:01:33"
SELECT T1.fastestlaptime FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Bruce" AND T3.surname = "McLaren" AND T2.round = 743
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "San Marino Grand Prix" AND T3.year = 2006 ORDER BY T1.surname
SELECT DISTINCT T1.url FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceid = 901
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date LIKE "%2015/%-11/%-29%" EXCEPT SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date LIKE "%2015/%-11/%-29%" AND T1.status = "L"
SELECT min(T1.driverAge) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 872 ORDER BY T1.driverAge LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE raceid = 348 AND POSITION = 1
SELECT T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT (T1.position - T2.position) / 100 FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.driverid = T3.driverid AND T1.position = 853 AND T1.positionText = "fastest" AND T2.round = 1 AND T2.circuitid = 853 ORDER BY T1.positionText;
SELECT avg(T3.laps) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.year = 1983 AND T1.date = "1983/7/16"
SELECT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.nationality = "Singapore" AND T2.position = "Grand Prix" ORDER BY T1.year LIMIT 1
SELECT name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT DISTINCT name FROM races WHERE YEAR = (SELECT min(YEAR) FROM races)
SELECT T1.name , T1.date FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year = 1999 ORDER BY T1.round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT T1.name FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year = 2000
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "European Grand Prix" ORDER BY T1.country LIMIT 1;
SELECT T1.year FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year JOIN constructorResults AS T3 ON T1.raceid = T3.raceid WHERE T3.constructorid = 'Brands Hatch' AND T1.name = 'British Grand Prix'
SELECT count(*) FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.name = 'Silverstone Circuit' AND T2.name = 'United Kindom Grand Prix'
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2010 AND T3.name = "Singapore Grand Prix" ORDER BY T2.position
SELECT t1.forename , t1.surname FROM drivers AS t1 JOIN driverstandings AS t2 ON t1.driverid = t2.driverid ORDER BY t2.points DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2017 AND T3.name = "2017 Chinese Grand Prix" ORDER BY T1.points DESC LIMIT 3
SELECT T1.forename , T1.surname , T2.name FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT avg(T1.time) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T2.driverid = T3.driverid AND T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT %positiontext FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Hamilton" AND T1.year - T3.year >= 2010 GROUP BY T3.positiontext HAVING T1.circuitid != T2.positiontext
SELECT T1.forename , T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY T2.wins DESC LIMIT 1
SELECT surname , dob FROM drivers WHERE nationality = "Japanese" ORDER BY dob LIMIT 1
SELECT DISTINCT T1.circuitId FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year BETWEEN 1990 AND 2000
SELECT T1.name , T1.location , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "USA" AND T2.year = 2006
SELECT T1.name , T2.name , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.round = "Sep"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Alex" AND T3.surname = "Yoong" AND T1.circuitid < 20;
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit" AND T1.driver = "Michael Schumacher"
SELECT T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.forename = "Michael" AND T3.surname = "Schumacher" AND T2.position = 1 AND T2.fastestlapspeed != "null"
SELECT avg(T1.points) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN seasons AS T3 ON T3.year = T2.year WHERE T3.driverid = 2000 AND T1.driverid = 2000 AND T1.constructorid = 2000
SELECT T1.name , T1.points FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton";
SELECT T1.name , T2.country FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2017 ORDER BY T1.date
SELECT T1.name , T1.year , T1.circuit FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Germany" AND T1.year IN (SELECT year FROM races WHERE round = "Grand Prix" AND country = "Europe")
SELECT lat , lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT location FROM circuits WHERE name = 'Silverstone Circuit' OR name = 'Hockenheimring' OR name = 'Hungaroring' ORDER BY lat DESC LIMIT 1;
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = ""
SELECT DISTINCT T1.country FROM circuits AS T1 JOIN drivers AS T2 ON T1.circuitid = T2.driverid WHERE T2.dob = (SELECT max(dob) FROM drivers)
SELECT surname FROM drivers WHERE nationality = "Italian"
SELECT DISTINCT T1.url FROM circuits AS T1 JOIN results AS T2 ON T1.circuitid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Anthony" AND T3.surname = "Davidson";
SELECT driverRef FROM drivers WHERE forename = "Lewis" AND surname = "Hamilton";
SELECT DISTINCT T1.circuitId FROM races AS T1 JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT DISTINCT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit"
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit"
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi" AND T1.year LIKE "2010%"
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy"
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Barcelona-Catalunya"
SELECT T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix"
SELECT T1.fastestlapspeed FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Lewis Hamilton" ORDER BY T1.fastestlapspeed LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN lapTimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT t1.forename FROM drivers AS t1 JOIN results AS t2 ON t1.driverid = t2.driverid JOIN races AS t3 ON t2.raceid = t3.raceid WHERE t3.name = "Canadian Grand Prix" AND t3.year = 2007 ORDER BY t1.positiontext = 1 LIMIT 1
SELECT DISTINCT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T2.position = 1 ORDER BY T3.position
SELECT T1.fastestlapspeed FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix"
SELECT DISTINCT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT rank FROM results WHERE raceid = 139 AND driver = "Lewis Hamilton" AND YEAR = 2008
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 4 AND T2.raceid = T1.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix";
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.name = "2008 Australian Grand Prix"
SELECT T1.lap , T1.time FROM laps AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" AND T1.position = 1 AND T1.driverid = "LEWIS HAMilton";
SELECT T1.time FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T1.year = 2008 AND T1.name = 'AustChineseralian Grand Prix' AND T3.position = 2
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2008 AND T3.name = "Australian Grand Prix" ORDER BY T1.forename , T1.surname LIMIT 1
SELECT count(DISTINCT T1.forename) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.name = "2008 Australian Grand Prix"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Chinese Grand Prix"
SELECT sum(T1.points) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T3.name = "Lewis Hamilton"
SELECT avg(T3.fastestlapstime) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton";
SELECT count(*) , T1.position FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "2008 Australian Grand Prix" AND T2.status = "LAP" GROUP BY T1.position
SELECT (T1.fastestlappspeed - T2.fastestlappspeed) / T1.fastestlappspeed * 100 FROM results AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.driverid != T2.driverid AND T1.positiontext = "Champion" AND T2.positiontext = "Last"
SELECT count(*) FROM circuits WHERE LOCATION = "Adelaide, Australia";
SELECT DISTINCT location FROM circuits WHERE country = "USA"
SELECT count(*) FROM drivers WHERE dob LIKE '%1980%' AND nationality = "British"
SELECT max(T2.points) FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "British"
SELECT T2.name FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid ORDER BY T1.points DESC LIMIT 1
SELECT T2.name FROM races AS T1 JOIN constructorStandings AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2023 AND T2.raceid = 291 GROUP BY T2.constructorid HAVING sum(T2.points) = 0
SELECT count(*) FROM constructorresults WHERE constructorid IN ( SELECT constructorid FROM constructorresults WHERE points = 0 INTERSECT SELECT constructorid FROM constructorresults WHERE points = 0 )
SELECT name FROM constructorstandings ORDER BY positionText DESC LIMIT 1
SELECT count(*) FROM constructorstandings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T3.nationality = "French" AND T2.year > 50
SELECT T1.name , T2.position FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.nationality = "Japanese" AND T1.year BETWEEN 2007 AND 2009
SELECT avg(T1.time) , YEAR FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year < 1975 GROUP BY YEAR
SELECT forename , surname FROM drivers WHERE dob > 1975 AND position = 2
SELECT count(*) FROM drivers WHERE nationality != 'Italy'
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT max(T1.lap) , T1.position , T1.time FROM laps AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid WHERE T2.year = 2009 ORDER BY T1.lap TIME LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
{"sql": "SELECT T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T2.fastestlaptime LIKE \"%\"}
SELECT count(*) , (count(*) / (select count(*) from races where YEAR BETWEEN 2000 AND 2005)) FROM laptimes WHERE driverid IN (SELECT DISTINCT driverid FROM races WHERE lap BETWEEN 50 AND 100) AND dob < 1985 AND nationality != "USA"
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "French" AND T2.milliseconds < 100000
SELECT code FROM drivers WHERE nationality = "American"
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.id = 18
SELECT count(*) , T1.code FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Netherlandic" ORDER BY T1.dob DESC LIMIT 3
SELECT driverRef FROM drivers WHERE forename = "Robert" AND surname = "Kubica";
SELECT count(*) FROM drivers WHERE dob LIKE "1980%" AND nationality = "British"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T2.milliseconds BETWEEN 80000 AND 190000 ORDER BY T2.time ASC LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = "German" ORDER BY dob DESC LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob = "1971-01-01" ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND T2.position = 1 ORDER BY T2.milliseconds DESC LIMIT 10
SELECT T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.round = T2.driverId ORDER BY T2.milliseconds LIMIT 1
SELECT DISTINCT T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT driverid FROM laptimes ORDER BY fastestlaptime DESC LIMIT 5
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year BETWEEN 2015 AND 2019 AND T2.round BETWEEN 50 AND 100 AND T1.status = "Disqualified"
SELECT LOCATION , lat , lng FROM circuits WHERE country = "Austria"
SELECT raceId , round FROM races GROUP BY raceId ORDER BY count(*) DESC LIMIT 1
SELECT T1.driverRef , T2.nationality , T2.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.round = 23 AND T2.position = "q2"
SELECT T2.date , T2.time FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid ORDER BY T1.position DESC LIMIT 1
SELECT count(*) FROM drivers WHERE nationality = "American" AND (select count(*) FROM results WHERE driverid = driverid AND status = "puncture")
SELECT t2.name FROM results AS t1 JOIN constructors AS t2 ON t1.constructorid = t2.constructorid WHERE t2.nationality = 'Italian' ORDER BY t2.points DESC LIMIT 1
SELECT T2.url FROM constructorStandings AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid GROUP BY T1.constructorid ORDER BY sum(T1.wins) DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "French Grand Prix" ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT avg(T2.fastestlapstime) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2006 AND T1.name = "United States Grand Prix" ORDER BY T2.position ORDER BY T2.position LIMIT 10
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY avg(T2.duration) ASC LIMIT 3 INTERSECT SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid WHERE T1.dob LIKE "%1980-%1985%" AND T1.nationality = "German"
SELECT T3.circuitRef , T2.position FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN constructorStandings AS T3 ON T2.constructorid = T3.constructorid WHERE T1.year = 2008 AND T1.name = "Canadian Grand Prix" AND T3.positionText = "Champion"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "2009 Singapore Grand Prix"
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob LIKE "1981-01-01" OR dob LIKE "1991-12-31"
SELECT forename , surname , dob FROM drivers WHERE nationality = "German" INTERSECT SELECT T1.url FROM drivers AS T1 JOIN constructors AS T2 ON T1.constructorref = T2.constructorid WHERE T1.nationality = "German" BETWEEN 1971 AND 1985 ORDER BY dob DESC
SELECT LOCATION , country , lat , lng FROM circuits WHERE name = 'Hungaroring'
SELECT T2.name , T2.nationality , T1.points FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.name = "Monaco Grand Prix" AND T1.year BETWEEN 1980 AND 2010 ORDER BY T1.points DESC
SELECT avg(T1.points) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.driverid = T3.constructorid WHERE T2.name = "Turkish Grand Prix" AND T3.nationality = "Romanian" AND T1.status = "P" AND T3.code = "LH"
SELECT avg(T1.year) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 2011 AND 2020
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.wins) FROM driverstandings AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.positiontext = "91"
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT T2.name , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = (SELECT max(YEAR) FROM races)
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.circuitid = "Marina Bay Street Circuit" AND T2.position = "q1" INTERSECT SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.circuitid = "Marina Bay Street Circuit" AND T2.position = "q2" INTERSECT SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.circuitid = "Marina Bay Street Circuit" AND T2.position = "q3"
SELECT T1.forename , T1.surname , T1.nationality , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverRef = T2.driverRef ORDER BY T1.dob LIMIT 1
SELECT count(*) , T1.driver FROM drivers AS T1 JOIN results AS T2 ON T1.driver = T2.driver WHERE T2.raceid = (SELECT raceid FROM races WHERE name = 'Canadian Grand Prix') ORDER BY count(*) DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.wins = (SELECT max(wins) FROM driverstandings)
SELECT max(T2.duration) FROM pitStops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid ORDER BY T1.time DESC LIMIT 1
SELECT max(T2.time) FROM circuits AS T1 JOIN results AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Fastest"
SELECT max(T2.duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton";
SELECT T1.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid WHERE T2.year = 2011 AND T2.name = "2011 Australian Grand Prix" AND T1.stop = "pitstop" AND T1.driverid = "LEWIS Hamilton"
SELECT DISTINCT T1.time FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2011 AND T1.name = "2011 Australian Grand Prix"
SELECT max(T1.laps) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 20
SELECT T1.position FROM circuits AS T1 JOIN results AS T2 ON T1.circuitid = T2.constructorid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "Formula_1" AND T2.status = "fastestLap" AND T2.driverid = T1.circuitref
SELECT T1.milliseconds FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T3.name = "Austrian Grand Prix Circuit"
SELECT T1.laps FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = "Italy"
SELECT T1.name FROM races AS T1 JOIN circuitid AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = 'Austrian Grand Prix Circuit' SELECT T1.name FROM races AS T1 JOIN circuitid AS T2 ON T1.circuitid = T2.circuitid
SELECT avg(T2.duration) FROM races AS T1 JOIN pitStops AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Austrian Grand Prix Circuit" AND T1.year = T2.year AND T1.circuitid = T2.circuitid AND T1.round = 1
SELECT DISTINCT LOCATION FROM circuits WHERE lat = (SELECT DISTINCT T1.lat FROM laps AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid WHERE T1.milliseconds LIKE "%1:29.488%" )
SELECT avg(T2.milliseconds) FROM pitstops AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid WHERE T2.number = "Lewis Hamilton"
SELECT avg(T1.milliseconds) , T2.circuitRef FROM results AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy" GROUP BY T2.circuitRef
SELECT T1.player_api_id FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT player_name , height FROM Player ORDER BY height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND attacking_work_rate != "defensive";
SELECT DISTINCT T1.player_api_id FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE crossing = 1 GROUP BY T1.player_api_id ORDER BY overall_rating DESC LIMIT 5;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T1.team_fifa_api_id NOT IN (SELECT home_team_api_id FROM MATCH WHERE season = 2016) GROUP BY T1.team_short_name ORDER BY count(*) ASC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_fifa_api_id ORDER BY penalties DESC LIMIT 10;
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN league AS T3 ON T3.id = T1.league_id WHERE T3.name = "Scotland Premier League" AND T2.team_short_name != "none" GROUP BY T2.team_short_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY buildUpPlaySpeed DESC LIMIT 4;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.stage = 'draw' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN '2013-01-01' AND '2015-12-31' AND T2.sprint_speed >= 97;
SELECT T1.name , sum(T2.goal) FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T2.league_id ORDER BY sum(T2.goal) DESC LIMIT 1;
SELECT avg(height) FROM Player WHERE birthday BETWEEN 1990 AND 1995
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_fifa_api_id WHERE T2.date = '2010' ORDER BY T2.overall_rating DESC LIMIT 1;
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed BETWEEN 50 AND 60;
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.date = "2012" ORDER BY sum(T2.buildUpPlayPassing) ORDER BY T1.team_long_name DESC LIMIT 10;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = "left" AND birthday BETWEEN 1987 AND 1992;
SELECT name FROM league ORDER BY sum(goals) DESC LIMIT 5;
SELECT avg(long_shots) FROM Player_attributes WHERE player_name = "Ahmed Samir Farag"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 GROUP BY T1.player_api_id ORDER BY AVG(heading_accuracy) DESC LIMIT 10;
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE buildUpPlayDribblingClass = "normal" AND date = 2014 GROUP BY T1.team_api_id ORDER BY avg(chanceCreationPassing) - T2.chanceCreationPassing LIMIT 5;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.country_id = T2.country_id WHERE T2.season = "2009/2010" GROUP BY T1.id HAVING avg(T2.home_team_goal) > avg(T2.away_team_goal)
SELECT team_short_name FROM Team WHERE team_fifa_api_id = "QPSR";
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday LIKE "1970-%" AND T2.player_api_id IN (SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday LIKE "1970-%" AND T2.player_api_id IN (SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday LIKE "10/Oct/1970%"))
SELECT DISTINCT T1.attacking_work_rate FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = "Franco Zennaro"
SELECT T1.team_short_name , T1.team_fifa_api_id FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_fifa_api_id = "ADo" AND T2.date >= "01/01/2023" AND T2.date <= "02/28/2023"
SELECT finishing FROM Player_Attributes WHERE date = "18/09/2014" AND preferred_foot = "football" AND player_name = "Francois Affolter";
SELECT T1.overall_rating FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Gabriel Tamas" AND T1.date = 2011
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id JOIN team AS T3 ON T3.team_api_id = T1.home_team_api_id WHERE T2.name = 'Scotland Premier League' AND T1.season = '2015/2016';
{"sql": "SELECT T1.preferred_foot FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = (SELECT player_name FROM Player ORDER BY birthday LIMIT 1) AND T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_attributes WHERE T1.attacking_work_rate = (SELECT max(attacking_work_rate) FROM
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "football" ORDER BY T1.potential DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = 'left';
SELECT T2.team_short_name FROM Team_attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE chanceCreationPassingClass = 'Risky';
SELECT defensive_work_rate FROM Player_attributes WHERE player_name = "David Wilson" AND preferred_foot = "football"
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Netherlands"
SELECT avg(home_team_goal) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Poland' AND T1.season = '2010/2011';
{"sql": "SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT T3.player_api_id FROM Player AS T3 GROUP BY T3.player_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes
SELECT player_name FROM Player WHERE height > 180;
SELECT count(*) FROM Player WHERE birthday > 1990;
SELECT count(*) FROM Player WHERE player_name = 'Adam' AND weight > 170
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN '2008-01-01' AND '2010-12-31' AND T2.overall_rating > 80
SELECT T1.potential FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Doran"
SELECT DISTINCT player_api_id FROM Player_Attributes WHERE preferred_foot = "left"
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE buildUpPlaySpeedClass = "fast"
SELECT T1.buildUpPlayPassing FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T2.team_long_name = "CLB"
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T1.buildUpPlayPassing > 70;
SELECT avg(overall_rating) FROM Player_Attributes WHERE date BETWEEN '2010' AND '2015' AND player_api_id IN (SELECT player_api_id FROM Player_Attributes WHERE overall_rating > 170 GROUP BY player_api_id ORDER BY overall_rating DESC LIMIT 1)
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1;
SELECT T1.country FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id JOIN Team AS T3 ON T3.team_api_id = T2.league_id WHERE T2.name = 'Italy Serie A'
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlaySpeed = 31 AND T2.buildUpPlayDribbling = 53 AND T2.buildUpPlayPassing = 32;
SELECT avg(overall_rating) FROM Player_Attributes WHERE player_name = "Aaron Doran"
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany 1. Bundesliga' AND T1.date BETWEEN '2008-08' AND '2008-10';
SELECT T1.team_short_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id GROUP BY T1.team_short_name HAVING count(*) = 10;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.potential >= 61 ORDER BY T2.potential DESC;
SELECT avg(ball_control) - (SELECT avg(ball_control) FROM Player_Attributes WHERE player_api_id = "Abdou Diallo" ) AS difference FROM Player_Attributes AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Aaron Appindangoye"
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN";
SELECT player_name FROM Player WHERE birthday > (SELECT birthday FROM Player WHERE player_fifa_api_id = "Aaron Lennon") OR player_fifa_api_id = "Abdelaziz Barrada");
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = "left foot when attacking";
SELECT T1.country_id FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Belgium Jupiler League'
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = "Germany"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY strength DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Team_Attributes AS T3 ON T2.team_api_id = T3.team_api_id JOIN Team AS T4 ON T3.team_api_id = T4.team_api_id WHERE T1.birthday < 1986 AND T4.defending_lineclass = 'defender' AND T3.defencepressure = 'attack';
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = 'cross' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = 'cross' AND T1.player_name = 'Alexis' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = 'cross' AND T2.player_api_id = 'Ariel Borysiuk' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = 'cross' AND T2.player_api_id = 'Arouna Kone' ORDER BY T1.overall_rating DESC LIMIT 1;
SELECT heading_accuracy FROM Player ATTRIBUTES WHERE player_name = "Ariel Borysiuk"
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 INTERSECT SELECT count(*) FROM Player_Attributes AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.away_player_11 WHERE T1.volleys > 70;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 INTERSECT SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.dribbling > 70
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id JOIN team AS T3 ON T3.team_api_id = T1.away_team_api_id WHERE T2.name = "Belgium" AND T1.season = "2008/2009";
SELECT max(long_passing) FROM Player
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id JOIN team AS T3 ON T3.team_api_id = T1.home_team_api_id JOIN team_attributes AS T4 ON T4.team_api_id = T3.team_api_id WHERE T3.name = 'Belgium Jupiler League' AND T1.date LIKE '%2009-04%'
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2008/2009" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(overall_rating) FROM Player_attributes WHERE player_id IN (SELECT player_api_id FROM Player WHERE birthday < 1986)
SELECT (overall_rating - (SELECT min(overall_rating) FROM Player_Attributes WHERE player_fifa_api_id = "Ariel Borysiuk") ) / overall_rating * 100 FROM Player_Attributes WHERE player_fifa_api_id = "Ariel Borysiuk" INTERSECT SELECT (overall_rating - (SELECT min(overall_rating) FROM Player_Attributes WHERE player_fifa_api_id = "Paulin Puel") ) / overall_rating * 100 FROM Player_Attributes
SELECT avg(buildUpPlaySpeed) FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T2.team_long_name = 'Heart of Midlothian';
SELECT avg(overall_rating) FROM Player_attributes WHERE player_name = "Pietro Marino"
SELECT sum(T1.crossing) FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennox"
SELECT chanceCreationPassing , chanceCreationPassingClass FROM Team_Attributes WHERE team_fifa_api_id = "Ajax";
SELECT preferred_foot FROM Player_Attributes WHERE player_name = "Abdou Diallo";
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id = "Dorlan Pabon" GROUP BY T1.player_name ORDER BY overall_rating DESC LIMIT 1;
SELECT avg(away_team_goal) FROM MATCH AS T1 JOIN TEAM AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN country AS T3 ON T2.team_fifa_api_id = T3.id WHERE T3.name = 'Italy';
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2016-06-23" AND T2.overall_rating = 77 ORDER BY T1.height DESC LIMIT 1;
SELECT T1.overall_rating FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Mooy" AND T1.date = "2016/2/4"
SELECT potential FROM Player_Attributes WHERE date = "2010/8/30" AND player_name = "Francesco Parravicini"
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francesco Migliore" AND T1.date = "2015-05-01"
SELECT T1.defensive_work_rate FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Kevin Berigaud" AND T1.date = "2013/2/22"
SELECT T1.date FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.away_player_11 = T2.player_api_id WHERE T2.player_name = "Kevin Constant" ORDER BY T1.date ASC LIMIT 1;
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN Player AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.player_name = "Willem II" AND T1.date = "2011/2/22";
SELECT T1.buildUpPlayDribbling FROM Team_Attributes AS T1 JOIN Player_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.buildUpPlayDribblingClass = "LEI" AND T2.date = "2015/9/10";
SELECT T1.buildUpPlayPassingClass FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T1.team_long_name = "FC Lorient" AND T2.date = "2010/2/22"
SELECT chanceCreationPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_short_name = "Zwolle" AND T1.date = "2013/9/20";
SELECT T1.chanceCreationCrossingClass FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_fifa_api_id = "Hull City" AND T2.date = "2010/2/22";
SELECT defenceAggression FROM Team_Attributes WHERE team_fifa_api_id = "Hannover 96" AND date = "2015-09-10";
SELECT avg(overall_rating) FROM Player_Attributes WHERE date BETWEEN "2007/2/22" AND "2016/4/21" AND player_fifa_api_id = "Marko Arnautovic";
SELECT count(*) FROM Player_Attributes AS P1 JOIN Player AS P2 ON P1.player_api_id = P2.player_api_id WHERE P1.date = '2013/7/12' AND P2.player_name = 'Landon Donovan' AND P1.overall_rating > (SELECT overall_rating FROM Player_Attributes AS P3 JOIN Player AS P4 ON P3.player_api_id = P4.player_api_id WHERE P4.player_name = 'Jordan Bowery')
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.weight DESC LIMIT 10;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.age >= 35
SELECT count(*) FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Team AS T3 ON T2.team_fifa_api_id = T3.team_fifa_api_id WHERE T3.team_short_name = 'home' AND T2.player_api_id = (SELECT player_api_id FROM Player_attributes WHERE player_name = 'Aaron Lennon')
SELECT sum(T1.goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN Team_Attributes AS T3 ON T2.team_api_id = T3.team_api_id WHERE T3.defenderlineclass = "Daan Smith" INTERSECT SELECT sum(T1.goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Team_Attributes AS T3 ON T2.team_api_id = T3.team_api_id WHERE T3.defenderlineclass = "Filipe Ferreira"
SELECT sum(T1.goal) FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.goal = T2.chanceCreationShooting WHERE T2.team_fifa_api_id IN ( SELECT T3.team_api_id FROM Team AS T3 JOIN Country AS T4 ON T3.team_api_id = T4.id WHERE T4.name = "England" INTERSECT SELECT T5.team_api_id FROM Team AS T5 JOIN Country AS T6 ON T5.team_api_id = T6.id WHERE T6.name = "France")
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY strength DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = 'aggressive'
SELECT max(T1.player_name) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE finishing = 1;
SELECT T1.player_name FROM Player AS T1 JOIN League AS T2 ON T1.player_api_id IN (SELECT T3.team_api_id FROM Team_Attributes AS T3 JOIN Team AS T4 ON T3.team_api_id = T4.team_api_id WHERE T4.country_id = 1) UNION SELECT T1.player_name FROM Player AS T1 JOIN Country AS T2 ON T1.player_api_id IN (SELECT T3.team_api_id FROM Team_Attributes AS T3 JOIN Team AS T4 ON T3.team_api_id = T4.team_api_id WHERE T4.id = 1)
SELECT T1.player_name , T2.name FROM Player AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.vision >= 90
SELECT T1.name FROM Country AS T1 JOIN Player AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY avg(T2.weight) DESC LIMIT 1;
SELECT team_long_name FROM Team_Attributes WHERE buildUpPlaySpeedClass = "slow";
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationPassing = 'safe' AND T2.chanceCreationShooting = 'chance'
SELECT avg(T1.height) FROM Player AS T1 JOIN Team AS T2 ON T1.player_api_id = T2.team_api_id JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Italy';
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name LIMIT 3;
SELECT count(*) FROM Player WHERE birthday > 1990 AND player_name = "Aaron"
SELECT jumping FROM Player_Attributes WHERE player_api_id = 6 DIFFERENCE FROM Player_Attributes WHERE player_api_id = 23;
SELECT DISTINCT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "right" ORDER BY T1.potential ASC LIMIT 5;
SELECT count(*) FROM Player_attribute WHERE preferred_foot = 'left' AND crossing = (SELECT max(cross) FROM Player_attribute WHERE preferred_foot = 'left' )
SELECT count(*) / count(*) FROM Player_Attributes WHERE strength > 80;
SELECT T1.country_id FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = "Poland Ekstraklasa"
SELECT goal FROM MATCH WHERE date = '2008-09-24' AND stage = "home" AND away_team_api_id = (SELECT away_team_api_id FROM MATCH WHERE date = '2008-09-24' AND stage = "away")
SELECT acceleration , sprint_speed , agility FROM Player_Attributes WHERE player_name = "Alexis Blin"
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_fifa_api_id = "KSV Cercle Brugge";
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Italian Serie A' AND T1.season = '2015–2016';
{"sql": "SELECT max(home_team_goal) FROM MATCH WHERE country_id = \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t
SELECT T1.finishing , T1.curve FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.weight DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN team AS T2 ON T1.id = T2.country_id JOIN team_attributes AS T3 ON T2.team_api_id = T3.team_api_id JOIN match AS T4 ON T2.team_api_id = T4.away_team_api_id WHERE T4.season = 2015 AND T4.stage = 1 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 4;
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id GROUP BY T1.away_team_api_id ORDER BY sum(T1.goal) DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE overall_rating > 70 AND height < 180;
SELECT count(*) , sex FROM patient WHERE diagnosis = 'Inpatient' OR diagnosis = 'Outpatient' GROUP BY sex HAVING count(*) - count(*) > 0.01
SELECT count(*) FROM patient WHERE sex = 'F' AND birthday > 1930 / 100.0
SELECT count(*) * 100 / count(*) FROM patient WHERE birthday BETWEEN 1930 AND 1940
SELECT count(*) , count(*) FROM patient WHERE diagnosis = 'SLE' AND (SELECT count(*) FROM examination WHERE diagnosis = 'SLE') / (SELECT count(*) FROM patient WHERE diagnosis = 'SLE')
SELECT T2.Date FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.First Date = 30609
SELECT T2.sex , T2.birthday , T1.eXAMINATION , T3.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.first_date = '163109'
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > 100
SELECT T1.id , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.PID WHERE T1.diagnosis = 'Positive'
SELECT T1.id , T1.sex , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient
SELECT DISTINCT T2.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = '1937' AND T2.T-CHO > 140
SELECT T1.id , T2.sex , T3.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id WHERE T3.alp < 3.5
SELECT % of female patients with total protein not within the normal range FROM LABORATORY AS T1 JOIN patient AS T2 ON T1.id = T2.id GROUP BY T2.id
SELECT avg(IggG) FROM LABORATORY WHERE FIRST DATE = "2023-04-15" AND Diagnosis = "in-patient 50+"
SELECT count(*) FROM patient WHERE first date = '1997' AND sex = 'F' AND admission = first date
SELECT max(birthdate) - years FROM patient
SELECT count(*) FROM examination WHERE diagnosis = 'Thrombosis' AND YEAR(exam) = 1997 GROUP BY sex ORDER BY count(*) DESC LIMIT 1
SELECT max(birthdate) - min(birthdate) FROM patient WHERE diagnosis = 'Normal Triglyceride'
SELECT Diagnosis FROM examination ORDER BY Birthday ASC LIMIT 1
SELECT avg(T2.TBIL) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday = "1998-12-31" AND T2.sex = "M"
SELECT T2.Date , T1.Birthdate FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthdate = (SELECT max(Birthdate) FROM patient)
SELECT count(*) , sex FROM patient WHERE diagnosis = 'Abnormal uric acid' GROUP BY sex
SELECT count(*) FROM patient WHERE first date > (SELECT admission FROM examination WHERE diagnosis = 'null' )
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.birthday < 1993 AND T2.examination_date >= '1990' AND T2.examination_date <= '1993' AND T1.sex = 'F' AND T1.birthday != '1990-04-01'
SELECT count(*) FROM patient WHERE sex = 'M' AND T-BIL > 100
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T2.birthday >= '01/01/1985' AND T2.birthday <= '12/31/1995' GROUP BY T1.diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.Age) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.examination_date LIKE "1999%" AND T1.diagnosis = "Labs" AND T2.examination_date LIKE "10/1991%"
SELECT T1.birthday , T3.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN patient AS T3 ON T1.id = T3.id ORDER BY T3.HGB DESC LIMIT 1
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.date = 1996/12/2 AND T2.id = 3605340
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id = 2927464 AND T2.date = 1995-09-04 AND T2.T-CHO = "Normal"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'AORTITIS' ORDER BY T1.id LIMIT 1
SELECT T2.status FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T1.examination_date = "1994/2/19" AND T2.date = "1993/11/12"
SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GLU = 9 AND T2.date = 1992-06-01
SELECT T2.Birthdate FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.examination_date = "1991-10-21" AND T1.date = "U-PRO"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = 1991 AND T1.first_date = 1991/6/13 AND T2.diagnosis = 'SJS' AND T2.date = 1995
SELECT T1.ADDED TO THE Hospital FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.diagnosis = "SLE" AND T2.date = 1997/1/27
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T2.birthday = "1959/03/01" AND T1.examination_date = "1993/09/27"
SELECT (T3.T-CHO - T2.T-CHO) / T2.T-CHO * 100 FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.birthday = "1959/2/18" AND T1.date = "1981/11/18" AND T1.date = "1981/12/18"
{"sql": "SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'Behcet\'s' AND T1.examination_date BETWEEN '01/01/197' AND '12/31/1997'"}
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.internuniqueid JOIN laboratory AS T3 ON T2.internuniqueid = T3.internuniqueid WHERE T1.date >= "1987/7/6" AND T1.date <= "1996/1/31" AND T3.GPT > 30 INTERSECT SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.internuniqueid JOIN laboratory AS T3 ON T2.internuniqueid = T3.internuniqueid WHERE T3.ALB < 4
SELECT id FROM patient WHERE sex = 'F' AND birthday = 1964 ORDER BY admission
SELECT count(*) FROM examination WHERE thrombosis = "2" AND ana_pattern = "S" AND (T-CHO - IGM) / (avg(T-CHO - IGM)) > 0.2
SELECT %P FROM laboratory WHERE U-PRO >= "normal" INTERSECT SELECT %P FROM laboratory WHERE uric acid >= "normal"
SELECT count(*) * 100 / count(*) FROM patient WHERE first date = 1981 AND sex = 'M' AND diagnosis = 'BEHCET'
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = '1991-10' AND T2.T-BIL < 150
SELECT count(*) FROM patient WHERE sex = "F" AND birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM examination WHERE ANA_PATTERN = "P" AND acl_iga = "ANA"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.diagnosis = 'PSS' AND T3.crp = 2 AND T3.creatine = 1 AND T3.ldh = 123
SELECT avg(ALB) FROM LABORATORY WHERE diagnosis = 'SLE' AND PLT > 400 AND sex = 'F'
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.Child FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.Child WHERE T2.Diagnosis = "SLE" GROUP BY T1.Symptoms ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.birthdate , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 48473
SELECT count(*) FROM patient WHERE diagnosis = 'APS' AND sex = 'F'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.date = 1997 AND T2.U-PRO != 120 AND T2.U-PRO != 140
SELECT count(*) / count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.diagnosis = 'Thrombocytopenia' AND T2.diagnosis = 'SLE'
SELECT count(*) * 100.0 / count(T1.id) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.birthday = 1980 AND T2.diagnosis = 'RA' AND T1.sex = 'F'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.diagnosis = "Behcet disease" AND T1.birthday >= 1995 AND T1.birthday <= 1997
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND WBC < 3.5
SELECT T1.admission - T2.admission FROM patient AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.id = 821298 AND T2.id = (SELECT id FROM patient WHERE diagnosis = 'EVAL')
SELECT count(*) FROM laboratory WHERE ID IN (SELECT T1.ID FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.U-PRO < 12.0) AND T2.diagnosis = 'Normal' AND T1.id = 57266
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.first date > (SELECT min(first date) FROM patient WHERE id = 48473 AND GOT > 60)
SELECT T2.sex , T2.birthday FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = 1994 INTERSECT SELECT T2.sex , T2.birthday FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE GOT < 100
SELECT id FROM patient WHERE sex = 'M' AND GPT > 0.5 AND T-CHO > 0.5
SELECT T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis != "Normal" ORDER BY T2.birthday
SELECT avg(LDH) FROM Laboratory WHERE LDH < 160
SELECT T2.id , T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE LDH > 300 INTERSECT SELECT id , age FROM patient WHERE first date >= 100 AND diagnosis = "LDH Index above normal range"
SELECT T1.Admission , T2.diagnosis FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE ALP > 0 AND diagnosis = "Normal"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp < 10 AND T2.alp > 0
SELECT T1.id , T2.sex , T2.birthday FROM patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE TP < (SELECT avg(TP) FROM Laboratory)
SELECT T1.id , T2.TP - 10.0 FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T2.TP > 10.0
SELECT * FROM patient WHERE sex = 'male' AND alb NOT IN (10, 11) ORDER BY birthday DESC
SELECT T2.SEX FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = 1982 AND T2.alb < 40
SELECT count(*) FROM patient WHERE sex = "F" AND UA > 1.0
SELECT avg(T2.UA) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal"
{"sql": "SELECT T2.id , T2.sex , T2.birthday FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date LIKE '%0.5%'")
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'RA' INTERSECT SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis != 'Normal'
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine < 100
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine != (SELECT min(creatinine) FROM laboratory)
SELECT T2.id , T2.sex , T2.birthday FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Thrombosis" ORDER BY T-BIL DESC LIMIT 1
SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-BIL > 45 GROUP BY T1.sex
SELECT T2.id , T-CHO FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.T-CHO = (SELECT max(T-CHO) FROM laboratory) ORDER BY T2.birthday DESC LIMIT 1
SELECT avg(T2.Birthdate) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T1.id IN (SELECT T3.id FROM patient AS T3 JOIN laboratory AS T4 ON T3.id = T4.id WHERE T4.T-CHO > 100)
SELECT T1.id , T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.TG > 100
SELECT count(*) FROM patient WHERE TG > 45 AND birthdate (year) > 2000
SELECT DISTINCT id FROM laboratory WHERE cpk >= 0 AND cpk <= 100
SELECT count(*) FROM patient WHERE birthday BETWEEN 1936 AND 1956 AND sex = "M" AND CPK > (SELECT avg(cpk) FROM laboratory)
SELECT T1.id , T2.sex , T2.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GLU NOT IN ( 100 , 110 ) INTERSECT SELECT T1.id , T2.sex , T2.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-CHO NOT IN ( 100 , 110 )
SELECT T2.id , T1.glu FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date >= 1991 ORDER BY T2.birthday
SELECT T2.id , T2.sex , T2.birthday , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id GROUP BY T1.id ORDER BY T1.age
SELECT T1.id , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Lower Red Blood Blood Cell"
SELECT T2.Admission FROM LABORATORY AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.RBC > 1.5 AND T2.sex = "F" AND T2.birthday >= "2014-04-19" GROUP BY T2.admission HAVING count(*) >= 1
SELECT DISTINCT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HGB < 120
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'SLE' INTERSECT SELECT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.patient WHERE T2.hgb = 'normal' ORDER BY T1.birthday DESC LIMIT 1
SELECT T1.id , T1.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN patient AS T3 ON T1.id = T3.id WHERE T2.diagnosis = 'Thrombosis' AND T3.description LIKE '%hematoclit%' GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(HCT) FROM LABORATORY WHERE EXAMINATION DATE = 1991 AND HCT < 47.5
SELECT count(*) , count(*) FROM (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PLT < 160) UNION SELECT count(*) , count(*) FROM (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PLT > 160)
SELECT DISTINCT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = 1984 AND T1.age < 50 AND TP = "Normal"
SELECT count(*) , sex , sum(case when T2.Diagnosis = 'Abnormal' else 0 END) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > 55 GROUP BY sex
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PT = "normal" AND T1.birthday > 1992
SELECT count(*) FROM examination WHERE examination_date > "1997-01-01" AND T-bil = "inactivated partial prothrom";
SELECT count(*) FROM patient WHERE id NOT IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.therapy = T2.id WHERE T1.diagnosis = 'abnormal' AND T2.diagnosis = 'thrombosis')
SELECT count(*) FROM patient WHERE sex = 'M' AND WBC = "normal" INTERSECT SELECT count(*) FROM patient WHERE sex = "F" AND fg = "abnormal"
SELECT count(*) FROM patient WHERE birthday > '1980-01-01' INTERSECT SELECT count(*) FROM laboratory WHERE fg = 'positive'
SELECT DISTINCT T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'proteinuria'
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' AND T3.U-PRO = 'Normal'
SELECT count(*) FROM patient WHERE igg > (SELECT min(igg) FROM laboratory)
SELECT count(*) FROM examination WHERE Diagnosis = 'Normal IgG' INTERSECT SELECT count(*) FROM examination WHERE Symptoms != "No symptoms"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id_exam_result = T2.id WHERE T2.diagnosis = 'Normal' ORDER BY T1.igA DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Normal' AND T1.birthday > 1990-01-01
SELECT T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.IGM != "Normal" GROUP BY T2.Diagnosis ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT id FROM laboratory WHERE crp = 'positive' )
{"sql": "SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id =
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = 'Thrombosis' GROUP BY T1.id HAVING avg(T2.PT) > 10);
SELECT T2.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday > "1985-01-01" AND T1.Diagnosis = "Rhuematoid Factor"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RF = 'Normal' AND T1.birthday > 60
SELECT count(*) FROM patient WHERE diagnosis = 'Normal' EXCEPT SELECT count(*) FROM examination WHERE thrombosis = 'Yes'
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.intern_unique_key WHERE T1.ANA Pattern = "P" AND C3 = "Normal"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HCT != "Normal" ORDER BY T2.IGG DESC LIMIT 1
SELECT count(*) FROM patient JOIN examination ON patient.id = examination.patient WHERE diagnosis = 'Thrombosis' INTERSECT SELECT count(*) FROM laboratory WHERE CENTROMEA = "4"
SELECT count(*) FROM patient WHERE diagnosis = 'Normal Anti-Ribonucleoprotein' INTERSECT SELECT count(*) FROM examination WHERE diagnosis = 'Yes'
SELECT T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RNP > 100
SELECT count(*) FROM patient WHERE diagnosis != 'thrombosis' AND (igg != 'normal anti-SM')
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SM = 'positive' ORDER BY T1.birthday LIMIT 3
SELECT T1.ID FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date > '1997/1/1' AND T1.diagnosis = 'normal anti-scl70'
SELECT count(*) FROM patient WHERE diagnosis = 'Normal Anti-scl70' AND sex = 'F'
SELECT count(*) FROM patient WHERE admission < 2000 AND diagnosis = "Normal Anti-SSA"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Abnormal Anti-SSA' ORDER BY T1.first_date LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.diagnosis = 'SLE' AND T2.IGG = 'normal anti-SSB'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.Symptoms != "Normal" AND T2.Symptoms != "No symptoms"
SELECT count(*) FROM patient WHERE sex = 'M' AND CENTROMEA = 'Normal' AND SSB = 'Normal'
SELECT DISTINCT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T1.diagnosis LIKE '%anti-DNA%'
SELECT count(*) FROM patient WHERE id NOT IN (SELECT DISTINCT id FROM examination) AND DNA = "normal"
SELECT count(*) FROM patient WHERE diagnosis = 'Normal' INTERSECT SELECT count(*) FROM examination WHERE diagnosis = 'Admitted'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Abnormal GLU')
SELECT count(*) FROM patient WHERE sex = "M" AND glu < 100
SELECT T2.Birthdate FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Abnormal" ORDER BY T2.birthdate LIMIT 1
SELECT T1.Birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GLU < 100 AND T2.diagnosis = "Normal" ORDER BY T2.GLU DESC LIMIT 3
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.patient = T2.id WHERE T1.diagnosis = "Normal") AND T2.sex = "M"
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.child PRIMARY KEY (id) WHERE T2.first date = (SELECT max(date) FROM examination WHERE GOT < 16 AND T2.child = "Lactate Dehydrogenase")
SELECT T1.Date FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.LDH > 100
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp = 'abnormal' AND T1.admission != "null"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp = "normal"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id GROUP BY T2.id HAVING sum(TU.U-PRO) < 15
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'SJS' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.patient WHERE T2.id IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T3 ON T1.id = T3.patient WHERE T3.TP = 'normal') )
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T2.id IN (SELECT T3.id FROM laboratory AS T3 JOIN patient AS T4 ON T3.id = T4.patient WHERE T3.alb < 45)
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.alp = "normal" AND T2.ugl = "normal"
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal" ORDER BY T2.U-PRO DESC LIMIT 1
SELECT max(IGG) FROM LABORATORY WHERE CRKP = 0
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CRE < 1.0 AND T2.IGG = (SELECT max(IGG) FROM patient)
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.T-BIL > 14 AND T1.ANA_PATTERN = "Peripheral"
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'Normal' ORDER BY T2.T-BIL DESC LIMIT 1
SELECT count(*) FROM (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = 'Thrombosis' INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.c4 < 100)
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T1.cholesterol >= 120 AND T1.ana_pattern = 'P'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal" INTERSECT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.symptoms != "No symptoms"
SELECT T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis <= 90 AND T1.diagnosis >= 100
SELECT id FROM patient WHERE id NOT IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T1.diagnosis != 'normal' AND T2.cre != "normal")
SELECT count(*) FROM (SELECT T2.id FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.crepat = "normal") INTERSECT SELECT count(*) FROM (SELECT T2.id FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.aptt > 10)
SELECT T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id JOIN examination AS T3 ON T1.id = T3.id WHERE T2.diagnosis = 'Abnormal' ORDER BY T1.birthday DESC LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = 'Normal Glucose' EXCEPT SELECT count(*) FROM examination WHERE thrombosis = 'Positive'
SELECT count(*) FROM patient WHERE wbc = 'normal'
SELECT count(*) FROM patient JOIN laboratory ON patient.id = patient.id WHERE diagnosis = 'SLE' AND WBC < 1000
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC > 140 AND T1.admission = (SELECT admission FROM patient WHERE sex = 'F')
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Normal Platelet' INTERSECT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.symptoms != "No symptoms"
SELECT T1.PLT FROM LABORATORY AS T1 JOIN examination AS T2 ON T1.ID = T2.KCT WHERE T1.PLT BETWEEN 35 AND 140 AND T2.Diagnosis = 'MCTD'
SELECT avg(T2.U-PRO) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.PT = "Normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Severe Thrombosis' AND T1.PT = 'Normal'
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Angie" AND T2.last_name = "Sanders" Major
SELECT count(*) FROM major WHERE department = "College of Engineering"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Art and Design"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T2.phone FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
{"sql": "SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN student_club AS T3 ON T1.link_to_event = T3.event_id WHERE T3.student_club = 'Student Club' AND T2.t_shirt_size = 'Medium' AND T3.event_name = 'Women\'s Soccer'"}
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T1.event_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Vice President' INTERSECT SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Student Club President'
SELECT DISTINCT T1.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclelean"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Sacha" AND T3.last_name = "Harrison" AND T2.event_date LIKE "2019%" AND T1.type = "Student_Club";
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.link_to_member IN (SELECT T1.link_to_member FROM attendance AS T1 JOIN (SELECT link_to_member FROM attendance GROUP BY link_to_member HAVING count(*) > 10) AS T3 GROUP BY T1.link_to_member HAVING count(*) > 10) AND T2.type = 'meeting'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.attendance > 20 EXCEPT SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.attendance = 20
SELECT avg(T2.event_id) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "2020%"
SELECT T1.major_name FROM major AS T1 JOIN attendance AS T2 ON T1.major_id = T2.link_to_major JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.type = "Club" GROUP BY T1.major_id ORDER BY sum(T2.spent) DESC LIMIT 1
SELECT count(*) FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id WHERE T1.department = "Environmental Engineering"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T2.link_to_event IN (SELECT event_id FROM event WHERE event_name = 'Laugh Out Loud')
SELECT T2.last_name FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.link_to_major JOIN student AS T3 ON T2.member_id = T3.member_id WHERE T1.major_name = 'Law' AND T1.major_name = 'Constitutional Studies'
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey";
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Tyler" AND T2.last_name = "Hewitt"
SELECT T2.amount FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = 'Vice President'
SELECT sum(T1.spent) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'Student_Club' AND T1.event_date LIKE "%9月%";
SELECT T2.city , T2.state FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'President of the Student_Club'
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = 'Illinois'
SELECT T2.spent FROM attendance AS T1 JOIN budget AS T2 ON T1.link_to_member = T2.budget_id WHERE T1.link_to_event = 'Student_Club' AND T2.event_date LIKE "9/%";
SELECT department FROM major WHERE major_id = (SELECT T1.major_id FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Pierce" AND T2.last_name = "and" ) INTERSECT SELECT department FROM major WHERE major_id = (SELECT T1.major_id FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Guidi" AND T2.last_name = "Lee")
SELECT sum(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Speaker"
SELECT * FROM expense WHERE approved = 'Yes' AND expense_date LIKE "10/08/2019%"
SELECT sum(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date = '2013-09' OR T1.event_date = '2013-10' AND T2.category = 'Expense'
SELECT sum(T2.spent) - sum(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Student_Club' AND T2.event_date = '2019' INTERSECT SELECT sum(T2.spent) - sum(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Student_Club' AND T2.event_date = '2020'
SELECT DISTINCT T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = "Spring Budget Review"
SELECT T2.cost FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_budget WHERE T1.event_date = "2019-09-04" AND T1.type = "Posters";
SELECT remaining FROM budget WHERE category = "Food" ORDER BY amount DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019-09-14"
SELECT count(*) FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs";
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Adela" AND T2.last_name = "O'Gallagher";
SELECT count(*) FROM budget WHERE link_to_event = "link_to_event" AND event_date = "November" AND spent > remaining AND amount > 500000
SELECT sum(T2.amount) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date = "September" AND T1.event_name = "Speaker"
SELECT status FROM event WHERE event_date = "2019-08-20" AND TYPE = "major" AND event_name = "Post Cards, Posters"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Brent" AND T2.last_name = "Thomason"
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "Medium";
SELECT TYPE FROM zip_code WHERE zip = "[Christof] Nielson"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = 'Vice President'
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison";
SELECT department FROM major WHERE department = (SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'President')
SELECT T2.event_date FROM member AS T1 JOIN event AS T2 ON T1.member_id = T2.link_to_event WHERE T1.first_name = "Connor" AND T1.last_name = "Hilton"
SELECT first_name , last_name FROM member WHERE POSITION = 'PI'
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T1.category = "Expense" AND T1.amount > (SELECT max(amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Meeting")
SELECT count(*) FROM budget WHERE category = 'Parking' AND link_to_event = (SELECT event_id FROM budget ORDER BY amount DESC LIMIT 1) AND event_status = 'Completed' AND event_date LIKE "%November%"
SELECT sum(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.expense_id = T2.expense_id WHERE T2.category = 'Pizza'
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia"
SELECT department FROM major WHERE college = "Humanities and Social Sciences"
SELECT T1.zip FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Amy" AND T2.last_name = "Firth";
SELECT T2.remaining FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id GROUP BY T2.budget_id ORDER BY T1.remaining ASC LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.link_to_event = "October Meeting";
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major GROUP BY T1.college ORDER BY count(*) DESC LIMIT 1
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.amount DESC LIMIT 1
SELECT T2.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Vice President'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer";
SELECT date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE first_name = "Casey" AND last_name = "Mason";
SELECT count(*) FROM zip_code WHERE state = 'Maryland'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "School of Applied Sciences, Technology and Education";
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event JOIN expense AS T3 ON T3.budget_id = T2.budget_id GROUP BY T1.event_name ORDER BY sum(T3.spent) / sum(T2.spent) DESC LIMIT 1
SELECT count(*) FROM member WHERE POSITION = 'president'
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_date LIKE "2020%"
SELECT sum(t1.spent) FROM budget AS t1 JOIN expense AS t2 ON t1.budget_id = t2.budget_id WHERE category = "food"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id HAVING count(*) > 7
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major JOIN attendance AS T3 ON T2.member_id = T3.link_to_member WHERE T1.major_name = "Interior Design" AND T3.link_to_event = (SELECT event_id FROM event WHERE event_type = "Community Theater")
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN major AS T2 ON T1.zip_code = T2.zip WHERE T1.state = "South Carolina" AND T1.college = "Georgetown"
SELECT count(*) FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE first_name = "Grant" AND last_name = "Gilmour"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40 GROUP BY T1.member_id HAVING count(*) > 1
SELECT sum(t2.cost) FROM budget AS t1 JOIN expense AS t2 ON t1.budget_id = t2.budget_id WHERE t1.link_to_event = (SELECT event_id FROM event WHERE event.type = 'Yearly Kickoff')
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Yearly Kickoff' AND T1.position = 'manage budget'
SELECT T2.first_name , T2.last_name , T1.source FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member ORDER BY T1.amount DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id ORDER BY T2.spent LIMIT 1
SELECT count(*) , sum(T1.cost) , (sum(T1.cost) / (sum(T1.cost) + T2.cost)) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = "Yearly Kickoff" GROUP BY T1.category
SELECT (count(*) / count(*) ) FROM major WHERE department = 'Finance' INTERSECT SELECT (count(*) / count(*) ) FROM major WHERE department = 'Physics'
SELECT T1.source FROM income AS T1 JOIN budget AS T2 ON T1.link_to_member = T2.budget_id WHERE T1.date_received = "2019-09-01" ORDER BY T1.amount DESC LIMIT 1
{"sql": "SELECT first_name , last_name , email FROM member WHERE POSITION = 'Student_Club\'s Secretary'"}
SELECT count(*) FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id JOIN student_club AS T3 ON T3.link_to_major = T1.major_id WHERE T1.major_name = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Community Theater' AND T1.date_member = '2019'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE first_name = "Luisa" AND last_name = "Guidi" GROUP BY T2.member_id
SELECT avg(spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Student_Club' AND T2.event_name = 'typical'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id ORDER BY T2.spent DESC LIMIT 1
{"sql": "SELECT T1.status FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Women\'s Soccer' AND T2.link_to_member = (SELECT T3.member_id FROM member AS T3 WHERE T3.first_name = 'Maya' AND T3.last_name = 'Mclean')"}
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN major AS T3 ON T2.member_id = T3.member_id WHERE T3.major_name = 'Student Club' AND T1.event_date = '2019' INTERSECT SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN major AS T3 ON T2.member_id = T3.member_id WHERE T3.major_name = 'Community Service'
SELECT T2.cost FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Speaker'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T2.event_name FROM budget AS T1 JOIN event AS T2 ON T1.budget_id = T2.event_id WHERE T1.spent > (SELECT min(spent) FROM budget) AND T2.status = 'closed'
SELECT T2.type , sum(T1.cost) FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Meeting' GROUP BY T2.type
SELECT category FROM budget WHERE event_id = (SELECT event_id FROM event WHERE event_name = 'April Speaker' ) ORDER BY amount
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(T2.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.category = 'Parking'
SELECT sum(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_date = '08/20/2019'
{"sql": "SELECT T2.first_name , T2.last_name , sum(T3.cost) FROM attendance AS T1 JOIN expense AS T2 ON T1.link_to_member = T2.link_to_member JOIN budget AS T3 ON T2.expense_id = T3.expense_id WHERE T1.event_id = T3.link_to_event AND T1.event_name = 'Budget' AND T2.link_to_budget = T3.budget_id AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.event_date = T3.event_date WHERE T1.event_name = 'Budget' AND T2.event_name = 'Expense' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name = 'Budget' AND T1.type = 'Expense' AND T2.category = 'Expense' AND T1.event_date = T3.event_date AND T1.event_name = 'Expense' AND T2.event_name
SELECT T2.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison"
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = "X-Large"
SELECT zip_code FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.zip HAVING sum(T1.cost) < 50
SELECT T1.major_name FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id WHERE T2.member_id = (SELECT member_id FROM member WHERE first_name = "Phillip" AND last_name = "Cullen");
SELECT position FROM member WHERE link_to_major = (SELECT major_id FROM major WHERE department = "Business")
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "Medium";
SELECT TYPE FROM budget WHERE remaining > 30
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT TYPE FROM event WHERE event_date LIKE "2020-03-24"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'Vice President'
SELECT count(*) * 100 / (SELECT count(*) FROM member WHERE POSITION = 'Business' )
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences'
SELECT T2.last_name , T1.department , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Environmental Engineering'
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.budget_id = T2.event_id WHERE T2.location = "MU 215" AND T1.spent = 0
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN major AS T2 ON T1.zip_code = T2.zip_code WHERE T2.major_name = 'Electrical and Computer Engineering'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = 'Vice President' AND T3.last_name = 'Student Club' AND T1.location = '900 E. Washington St.'
SELECT T2.last_name , T2.position FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_date LIKE "09/%" AND T1.category = "Pizza"
{"sql": "SELECT DISTINCT T1.last_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T2.link_to_event IN (SELECT event_id FROM event WHERE event.type = 'women\'s soccer')"}
SELECT count(*) , sum(amount) , percent FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = 'medium' AND T1.date_received = '50' GROUP BY T1.date_received
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.zip = (SELECT T3.zip_code FROM zip_code AS T3)
SELECT zip_code FROM zip_code WHERE state = 'Puerto Rico' INTERSECT SELECT zip_code FROM zip_code WHERE county = 'San Juan'
SELECT event_name FROM event WHERE event_date LIKE "3/%" AND TYPE = "game" AND event_date BETWEEN "2019-03-15" AND "2020-03-20"
SELECT DISTINCT T1.link_to_event FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN budget AS T3 ON T3.budget_id = T2.link_to_budget WHERE T3.amount > 50
SELECT T1.first_name , T1.last_name , T1.link_to_event FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T2.date_approved BETWEEN '10/19/2019' AND '11/19/2019'
SELECT T1.college FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id WHERE T2.major_name = "rec1N0upiVLy5esTO" AND T1.major_name = "College"
SELECT phone FROM member WHERE link_to_major = (SELECT major_id FROM major WHERE department = 'Business' AND college = 'College of Agriculture and Applied Sciences')
SELECT T1.email FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_member WHERE T2.spent > 20 AND T2.expense_date BETWEEN '09/10/2019' AND '11/19/2019'
SELECT count(*) FROM major WHERE department = "College of Education & Human Services" AND major_name = "Education"
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.spent > T2.amount
SELECT event_id , LOCATION , status FROM event WHERE event_date BETWEEN "2019-11-01" AND "2020-03-31"
SELECT T2.expense_description FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T1.spent > 50 GROUP BY T2.expense_description ORDER BY avg(T1.spent) DESC LIMIT 1;
SELECT first_name , last_name FROM member WHERE t_shirt_size = "extra large"
SELECT count(*) / (SELECT count(*) FROM zip_code) FROM zip_code WHERE TYPE = "po box"
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent < (SELECT max(spent) FROM budget)
SELECT T2.event_name , T2.event_date FROM expense AS T1 JOIN event AS T2 ON T1.link_to_budget = T2.budget_id JOIN budget AS T3 ON T3.budget_id = T1.budget_id WHERE T3.amount BETWEEN 50 AND 250 AND T1.expense_description = "Pizza"
SELECT T1.first_name , T1.last_name , T1.link_to_major , T1.position FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_member WHERE T2.spent > 100
SELECT T1.location , T2.state FROM event AS T1 JOIN zip_code AS T2 ON T1.event_id = T2.zip_code WHERE T1.amount > 40
SELECT T2.first_name , T2.last_name FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id ORDER BY sum(T1.cost) DESC LIMIT 1
SELECT avg(amount) FROM income WHERE position != 'member'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id GROUP BY T1.event_id HAVING avg(T2.spent) < (SELECT avg(spent) FROM budget)
SELECT count(*) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = "Major" AND T2.category = "Expense" AND T2.expense_description LIKE "%cost%"
SELECT category FROM budget WHERE category = 'water' AND category = 'chips' AND category = 'cookies' ORDER BY amount DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM budget AS T1 JOIN member AS T2 ON T1.link_to_budget = T2.member_id GROUP BY T2.member_id ORDER BY T1.spent DESC LIMIT 5
SELECT T1.first_name , T1.last_name , T1.phone FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.spent > (SELECT avg(spent) FROM expense)
SELECT count(*) FROM zip_code WHERE county = "New Jersey" AND state = "NJ" UNION SELECT count(*) FROM zip_code WHERE county = "Vermont" AND state = "VT"
SELECT T1.department FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke"
SELECT T1.first_name , T1.last_name , T1.position , T1.phone FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member JOIN budget AS T3 ON T2.link_to_budget = T3.budget_id WHERE T3.category = 'food' AND T3.category = 'vegetables' AND T3.category = 'supplies'
SELECT T2.last_name , T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Elementary Education"
SELECT category , amount FROM budget WHERE event_id = (SELECT event_id FROM event WHERE event_date LIKE 'January ')
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE category = 'food'
SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN income AS T2 ON T1.budget_id = T2.budget_id WHERE T1.event_date = '9/9/2019'
SELECT T2.category FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Posters'
SELECT T2.first_name , T2.last_name , T3.college FROM member AS T1 JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.position = 'Secretary'
SELECT T2.event_name , sum(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event
SELECT T1.zip FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke";
SELECT first_name , last_name , POSITION FROM member WHERE zip = "28092" AND first_name , last_name LIKE "%Lincoln%"
SELECT count(*) FROM gasstations WHERE country = 'CZE' AND segment = 'Premium'
SELECT (Amount / Sum(Amount)) FROM customers WHERE currency = 'EUR' INTERSECT SELECT (Amount / Sum(Amount)) FROM customers WHERE currency = 'CZK'
SELECT T1.customerid , min(consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date LIKE "%2012%" GROUP BY T1.customerid
SELECT avg(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND T1.Date LIKE "2013%"
SELECT T2.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" AND T2.Date LIKE "2011%" ORDER BY T2.Consumption DESC LIMIT 1
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Consumption < 30000 AND T2.Segment = "KAM"
SELECT T1.Consumption - T2.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" INTERSECT SELECT T1.Consumption - T2.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "EUR"
SELECT T1.Date , T1 Consumption FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Price > 100 AND T2.Amount > 50 GROUP BY T1.Date ORDER BY SUM(Consumption) DESC LIMIT 1
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid GROUP BY T1.segment ORDER BY sum(T2 Consumption) LIMIT 1
SELECT T1.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" GROUP BY T1.Date ORDER BY SUM(T1.Consumption) DESC LIMIT 1
SELECT T2.Date FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'SME' AND T2.Date LIKE '2013%' GROUP BY T2.Date ORDER BY Consumption DESC LIMIT 1
SELECT avg(consumption) - 1000 FROM yearmonth WHERE customerid = (SELECT customerid FROM customers WHERE currency = 'CZK' AND segment = 'SME') INTERSECT SELECT avg(consumption) - 1000 FROM yearmonth WHERE customerid = (SELECT customerid FROM customers WHERE currency = 'CZK' AND segment = 'LAM') INTERSECT SELECT avg(consumption) - 1000 FROM yearmonth WHERE customerid = (SELECT customerid FROM customers WHERE currency = 'CZK' AND segment = 'KAM')
SELECT T2.segment , max(T1.consumption) , min(T1.consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = "EUR" AND T2.segment = "SME" OR T2.segment = "LAM" OR T2.segment = "KAM" GROUP BY T2.segment
SELECT sum(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "August" AND T2.date < "2013-11-01"
SELECT count(*) FROM gasstations WHERE country = "Czech Republic" AND segment = "discount" DIFFERENCE FROM gasstations WHERE country = "Slovakia" AND segment = "discount"
SELECT consumption FROM yearmonth WHERE customerid = 7 AND date = "2013-04" - (SELECT consumption FROM yearmonth WHERE customerid = 5 AND date = "2013-04")
SELECT count(*) FROM customers WHERE currency = 'CZK' - count(*) FROM customers WHERE currency = 'EUR'
SELECT t1.customerid FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t1.currency = "Euro" AND t2.month = "10" AND t2.year = 2013 ORDER BY consumption DESC LIMIT 1
SELECT T1.ConsumerID , T2.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.ConsumerID ORDER BY T2.Consumption DESC LIMIT 1
SELECT sum(Consumption) FROM yearmonth WHERE Date LIKE "2013-%" AND customerID = "KAM"
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Consumption > 46.73 AND T1.Segment = 'LAM'
SELECT country , count(*) FROM transactions_1k GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) * 100 / sum(count(*) * 100) FROM customers WHERE currency = 'EUR'
SELECT count(*) FROM yearmonth WHERE Date LIKE "2012/%" AND Consumption > 528.3
SELECT count(*) / count(*) FROM gasstations WHERE country = 'Slovakian' AND segment = 'premium'
SELECT customerid FROM yearmonth WHERE date = '2013-09' GROUP BY customerid ORDER BY consumption DESC LIMIT 1
SELECT T2.segment FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.Date = "2013-09" GROUP BY T2.segment ORDER BY sum(T1.Consumption) LIMIT 1
SELECT customerid FROM yearmonth WHERE date = '2012-06' ORDER BY consumption LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE YEAR（Date) = 2012
SELECT max(t2.consumption) FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t1.currency = "euro"
SELECT T2.Description FROM yearmonth AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Date = "2013-09"
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID JOIN yearmonth AS T3 ON T1.Date = T3.Date WHERE T3.month = '06' AND T3.year = 2013
SELECT T2.ChainID FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Price = 1.0 AND T1.Currency = "Euro"
SELECT T1.description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid WHERE T2.amount > 0 AND T2.price > 0 AND T2.currency = "Euro"
SELECT avg(Price) FROM transactions_1k WHERE Date LIKE "2012-%"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "euro" AND T2.Consumption > 1000
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID WHERE T2.GasStationID = (SELECT GasStationID FROM gasstations WHERE country = 'Czech Republic')
SELECT T1.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ChainID = 11
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Price > 1000
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Date > "2012/1/1"
SELECT avg(T1.Amount) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic"
SELECT avg(T2.Amount) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "euro"
SELECT T1.segment , T2.customerid FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid JOIN yearmonth AS T3 ON T2.date = T3.date WHERE T3.year = 2012 AND T3.month = 8 AND T2.date = '2012/8/25' ORDER BY T2.amount DESC LIMIT 1
SELECT T2.country , T1.gasstationid FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.date LIKE "2012/%" AND T1.time = "19:25:00"
SELECT T1.Currency FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-24 16:25:00'
SELECT segment FROM customers WHERE customerid = (SELECT customerid FROM yearmonth WHERE date = '2012/8/23 21:20:00')
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/08/26" AND TIME LIKE "00:00:00" AND currency = "CZK"
SELECT segment FROM customers ORDER BY customerid ASC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date LIKE "%2012/%8/24 12:42:00:%"
SELECT ProductID FROM transactions_1k WHERE Date AND TIME = "2012/8/23 21:20:00"
SELECT T2.Date , T1.Amount , T2.Date FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012/01/24' AND T1.Amount = 124.05
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/8/%" AND time BETWEEN "08:00:00" AND "09:00:00" AND consumerid = 'CZE'
SELECT T2.Currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2013-06' AND T1.Consumption = 214582.17
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.CardID = 667467
SELECT t1.country FROM customers AS t1 JOIN transactions_1k AS t2 ON t1.customerid = t2.customerid JOIN yearmonth AS t3 ON t2.date = t3.date WHERE t3.date LIKE "2012/08/24" AND t2.amount LIKE "%548.4%"
SELECT count(*) FROM customers WHERE date = "2012/08/25" AND currency = "EUR"
SELECT (consumption - (SELECT min(consumption) FROM yearmonth WHERE date = '2012/8/25' )) / consumption FROM yearmonth WHERE date = '2012/8/25' TO yearmonth WHERE date = '2013/8/25'
SELECT GasStationID FROM transactions_1k GROUP BY GasStationID ORDER BY sum(Amount) DESC LIMIT 1
SELECT count(*) FROM customers WHERE segment = "premium" AND country = "SVK" / 33.3333333
SELECT sum(T1.Amount) FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T2.Date LIKE "01/02/%" AND T1.CustomerID = 38508
SELECT T2.Description , T1.ProductName FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID ORDER BY T2.Amount DESC LIMIT 5
SELECT t1.segment , avg(t2.price) , t1.currency FROM customers AS t1 JOIN transactions_1k AS t2 ON t1.customerid = t2.customerid GROUP BY t1.segment ORDER BY avg(t2.price) DESC LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Price = (SELECT max(T1.Price) FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.ProductID = (SELECT ProductID FROM transactions_1k WHERE ProductID = (SELECT ProductID FROM transactions_1k ORDER BY Price LIMIT 1)) )
SELECT T1.consumption FROM yearmonth AS T1 JOIN products AS T2 ON T1.productid = T2.productid WHERE T2.productid = 5 AND T1.date LIKE "2012-08-%" AND T1.amount > 29.00
