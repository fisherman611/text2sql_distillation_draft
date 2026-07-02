SELECT max(Percent (%) Eligible Free (K-12)) FROM frpm WHERE County = "Alameda" AND School Type = "K-12"
SELECT min(FRPM Count (Ages 5-17)) FROM frpm WHERE Eligible Free (Ages 5-17) >= 0.1 AND Eligible Free (Ages 5-17) <= 0.3 ORDER BY Eligible Free (Ages 5-17) LIMIT 3;
SELECT zip FROM frpm WHERE county = "Fresno County Office of Education" AND CharterSchool = "Y/N"
SELECT mailstreet FROM schools ORDER BY frpmcount (DESC) LIMIT 1
SELECT phone FROM schools WHERE opendate > '2000-01-01' AND fundingtype = 'Charter'
SELECT count(*) FROM schools WHERE virtual = 'V' AND avgscrmath > 400
SELECT T1.school FROM schools AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.NumTstTakr > 500 AND T1.Magnet OR T1.GSserved = 'Magnet'
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgScrRead > 1500 GROUP BY T1.Phone ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.schooltype = "K-12" ORDER BY T1.frpmcount DESC LIMIT 5
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.statustype = 'Charter' AND avgscrmath > 560
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T1.cds = T3.cds WHERE T3.rtype = "Read" AND T3.dname = "SAT" AND T1.enroll12 = 16 AND T1.enroll12 = 17
SELECT cdscode FROM frpm GROUP BY cdscode HAVING sum(enrollment) > 500
SELECT max(T2.Percent) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Percent (%) Eligible Free (Ages 5-17) > 0.3 AND T1.StatusType = 'Excellence'
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgScrRead > 100 ORDER BY avgScrRead DESC LIMIT 3
SELECT T1.NCESSchool FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.Enrollment (Ages 5-17) DESC LIMIT 5;
SELECT avg(T1.AvgScrRead) , T2.district FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cds WHERE T2.distict = 'Reading' GROUP BY T2.distict ORDER BY avg(T1.AvgScrRead) DESC LIMIT 1
SELECT count(*) FROM schools WHERE state = "Alameda" AND (NumTstTakr < 100)
SELECT t1.school FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds WHERE avgscrwrite > 499 ORDER BY t1.charternum
SELECT count(*) FROM schools WHERE county = "Fresno" AND fundingtype = 'Directly funded' AND numtsttaker <= 250
SELECT phone FROM schools ORDER BY avgScrMath DESC LIMIT 1
SELECT count(*) FROM frpm WHERE low grade = 9 AND high grade = 12 AND county = 'Amador'
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.city = "Los Angeles" AND T2.FRPM Count (K-12) > 500 INTERSECT SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.city = "Los Angeles" AND T2.FRPM Count (K-12) < 700
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.county = "Contra Costa" ORDER BY T2.numtsttaker DESC LIMIT 1
SELECT t1.street , t1.school FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE ABS( (t2.enrollment (K-12) - t2.enrollment (Ages 5-17) ) ) > 30;
SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.Percent (%) Eligible Free (K-12) > 0.1 INTERSECT SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.AvgScrRead >= 1500
SELECT T1.FundingType FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgScrMath > 400 AND T1.district = 'Riverside'
SELECT T1.Street , T1.StreetAbr , T1.MailCity , T1.MailZip , T1.MailState , T1.City FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Free Meal Count (Ages 5-17) > 800 GROUP BY T1.State HAVING count(*) > 1
SELECT T1.school , T1.AvgScrWrite , T1.ext FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.opendate > 1991 OR T1.closeddate < 2000
SELECT T1.school , T1.doctype FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.edopsname = 'K-12' AND T1.edopsname = '15-17' GROUP BY T1.school HAVING avg(T2.Enrollment (K-12) ) - T2.Enrollment (Ages 5-17) > (SELECT avg(T2.Enrollment (K-12) - T2.Enrollment (Ages 5-17)) FROM schools AS T2 JOIN frpm AS T3 ON T2.cdscode = T3.cdscode WHERE T1.edopsname = 'K-12' AND T1.edopsname = '15-17')
SELECT OpenDate FROM frpm ORDER BY Enrollment DESC LIMIT 12
SELECT city FROM frpm ORDER BY enroll12 LIMIT 5
SELECT DISTINCT percent (%) Eligible Free FROM frpm ORDER BY enrollment (Ages 5-17) DESC LIMIT 1000
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode ORDER BY T2.frmcount (DESC) LIMIT 5
SELECT T1.Website FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Free Meal Count (Ages 5-17) BETWEEN 1900 AND 2000 AND T2.Free Meal Count (K-12) = 1900
{"sql": "SELECT DISTINCT frpm.Percent (%) Eligible Free (Ages 5-17) FROM frpm WHERE school_name = 'Kacey Gibson\' AND enroll12 = 5 AND enroll12 = 17"}
SELECT T2.AdmEmail1 FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY enroll12 LIMIT 1
SELECT t1.admFName1 , t1.admLName1 FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds GROUP BY t1.cds ORDER BY avgscrread >= 1500 LIMIT 1
SELECT Street , City , Zip , State FROM schools ORDER BY FRPM Count (S) ASC LIMIT 1;
SELECT website FROM schools WHERE county = "Los Angeles" AND enroll12 BETWEEN 2000 AND 3000
SELECT avg(numtsttaker) FROM schools WHERE opendate BETWEEN '01/01/1980' AND '12/31/1980' AND county = 'Fresno'
SELECT phone FROM schools WHERE district = 'Fresno Unified' AND avgscrread = (SELECT avg(avgscrread) FROM satscores WHERE district = 'Fresno Unified')
SELECT T1.School , T1.VIRTUAL FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.rtype = "Read" ORDER BY avgscrread DESC LIMIT 5
SELECT DISTINCT T1.edopsname FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode GROUP BY T1.edopscode ORDER BY avgscrmath DESC LIMIT 1
SELECT avg(T1.AvgScrMath) , T2.county FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.school = (SELECT school FROM schools ORDER BY avg(T1.AvgScrMath) LIMIT 1) LIMIT 1
SELECT T1.city FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrWrite >= 1500 GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.school , avg(T2.AvgScrWrite) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.school WHERE T1.school = 'Ricci Ulrich'
SELECT T1.State FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY enroll12 DESC LIMIT 12
SELECT avg(T1.OpenDate) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.academicyear = 1980 AND T2.countycode = 'Alameda County' AND T2.districtcode = 'Elementary School District'
SELECT (count(*) / count(*) ) , (count(*) / count(*) ) FROM schools WHERE County = "Orange County" AND District = "Unified School District" INTERSECT SELECT (count(*) / count(*) ) , (count(*) / count(*) ) FROM schools WHERE County = "Elm" AND District = "Elementary School District"
SELECT county , closeddate FROM schools WHERE statustype = 'Closed' GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT mailstreet FROM schools ORDER BY avgscrmath DESC LIMIT 7
SELECT T1.Street , T1.school FROM schools AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode JOIN satscores AS T3 ON T2.CDSCode = T3.cds WHERE T3.AvgScrRead = (SELECT avg(AvgScrRead) FROM satscores) ORDER BY T1.school
SELECT count(*) FROM schools WHERE mailcity = "Lakeport" AND sum(T1) >= 1500
SELECT count(*) FROM schools WHERE mailcity = 'Fresno'
SELECT mailzip , school FROM schools WHERE AdmFName1 < 'Avetik Atoian'
SELECT count(*) , count(*) FROM schools WHERE mailstate = 'CA' AND county = 'Colusa' INTERSECT SELECT count(*) , count(*) FROM schools WHERE mailstate = 'CA' AND county = 'Humboldt'
SELECT count(*) FROM schools WHERE mailstate = 'CA' AND mailcity = "San Joaquin" AND statustype = 'OpenDate'
SELECT phone , ext FROM schools ORDER BY avgscrwrite LIMIT 333
SELECT phone , ext , school FROM schools WHERE zip = "95203-3704"
SELECT website FROM schools WHERE AdmFName1 = "Mike Larson" INTERSECT SELECT website FROM schools WHERE AdmFName2 = "Dante Alvarez"
SELECT T1.Website FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Educational Option Type = "Charter School (Y/N)" AND T1.State = "San Joaquin" AND T2.District Type = "Partially Virtual"
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.city = 'Hickman' AND T2.charterschool = 'Y' AND T2.districtname = 'Elementary School District'
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.county = "Los Angeles" AND T2.Percent (%) Eligible Free (K-12) < 0.18
SELECT T1.schoolname , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode WHERE T2.charternum = "00D2"
SELECT count(*) FROM schools WHERE mailcity = 'Hickman' AND charternum = 00D4
SELECT count(*) , sum(fundingtype) , sum(percent) FROM frpm WHERE county = 'Santa Clara' AND charterfundingtype = 'Locally Funded' GROUP BY fundingtype
SELECT count(*) FROM schools WHERE opendate BETWEEN "1/1/2000" AND "12/31/2005" AND county = "Stanislaus"
SELECT sum(T1.FRPM Count (K-12)) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.city = "San Francisco" AND T2.academicyear = 1989 AND T1.districttype = "Community College District"
SELECT county FROM schools WHERE closeddate LIKE "1980-12-31" AND edopscode = "CEA" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT T1.CDSCode FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN schools AS T3 ON T2.NCESdist = T3.NCESdist WHERE T3.StatusType = 'State Special Schools'
SELECT count(*) , statustype FROM schools WHERE county = "Alpine" AND closeddate = "null"
SELECT district FROM schools WHERE district TYPE != 'Magnet' AND city = 'Fresno'
SELECT count(*) FROM frpm WHERE schoolcode = 'Fremont' AND enrollment (Ages 5-17) >= 5 AND enrollment (Ages 5-17) <= 17 AND academic year = 2014-2015
SELECT sum(frpm.count) FROM frpm WHERE frpm.school_name = 'Youth Authority School' AND frpm.eligible_free = 'Free' AND frpm.eligible_frpm = 'Free' AND schools.mailstreet = 'PO Box 1040' AND frpm.student_age <= 17
SELECT min(t1.lowgrade) FROM frpm AS t1 JOIN schools AS t2 ON t1.cdscode = t2.cdscode WHERE t2.district = 0613360 AND t1.educationaloptiontypet = "Special"
SELECT T1.EdOpsName FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.FRPM Count (2) = 1 AND T2.County Code = 37
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Lunch Provision = "2" AND T2.Low Grade = 9 AND T2.High Grade = 12 AND T2.County Name = "Merced"
SELECT T1.school_name , T1.Percent (%) Eligible FRPM (K-12) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode WHERE T1.county = "Los Angeles" AND T2.GSoffered = "K-12" AND T2.GSserved = "9-12"
SELECT T1.GSserved , T1.GSoffered FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.city = "Adelanto" GROUP BY T1.GSoffered ORDER BY count(*) DESC LIMIT 1
SELECT county FROM schools WHERE city = "San Diego" OR city = "Santa Barbara" EXCEPT SELECT county FROM schools WHERE edopsrecommended = "Physical" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT city , school , min(latitude) , min(low grade) FROM schools WHERE state = 'CA' GROUP BY school
SELECT GSoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(*) , mailcity FROM schools WHERE magnet = 'Yes' AND GSoffered = "K-8" GROUP BY mailcity
SELECT AdmFName1 , NCESdist FROM schools ORDER BY count(*) DESC LIMIT 2
SELECT t1.district_code FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.admfname1 = "Alusine"
SELECT T1.AdmLName1 , T1.county , T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.charternum = 40
SELECT AdmEmail1 FROM schools WHERE OpenDate BETWEEN '01/01/2009' AND '12/31/2010' AND district = 'San Bernardino' AND county = 'San Bernardino City' AND school TYPE = 'Public Intermediate/Middle Schools' INTERSECT SELECT AdmEmail1 FROM schools WHERE OpenDate BETWEEN '01/01/2009' AND '12/31/2010' AND district = 'San Bernardino' AND county = 'San Bernardino City Unified' AND school TYPE = 'Intermediate/Middle Schools' INTERSECT SELECT AdmEmail1 FROM schools WHERE OpenDate BETWEEN '01/01/2009' AND '12/31/2010' AND district = 'San Bernardino' AND county = 'San Bernardino City Unified' AND school TYPE = 'Unified Schools'
SELECT t1.school FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds ORDER BY NumTstTakr DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account = T2.account WHERE T2.operation = 'issuance' AND T1.district_id = 'East Bohemia'
SELECT count(DISTINCT account_id) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 'Prague'
SELECT avg(unemployment) FROM dataset WHERE YEAR = 1995 INTERSECT SELECT avg(unemployment) FROM dataset WHERE YEAR = 1996 ORDER BY avg(unemployment) ;
SELECT count(*) FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' AND avg(T1.A5) > 6000 AND avg(T1.A5) < 10000;
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = "M" AND T2.A3 = "North Bohemia" GROUP BY T1.district_id HAVING avg(T1.salary) > 8000
SELECT account_id FROM client WHERE gender = 'Female' ORDER BY birth_date LIMIT 1 INTERSECT SELECT account_id FROM client WHERE gender = 'Female' ORDER BY birth_date LIMIT 1 GROUP BY birth_date HAVING avg(salary) = (SELECT max(avg(salary)) FROM client WHERE gender = 'Female') - (SELECT min(avg(salary)) FROM client WHERE gender = 'Female')
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.birth_date = (SELECT max(birth_date) FROM client) GROUP BY T2.account_id ORDER BY avg(T2.balance) DESC LIMIT 1
SELECT count(*) FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = "statement" AND T2.gender = "Male" AND T3.owner = T2.client_id
SELECT client_id FROM disp WHERE operation != 'Disponent'
SELECT T1.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1997%" ORDER BY T1.amount LIMIT 7
SELECT T1.account_id , max(T2.amount) FROM loan AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND T2.date LIKE '1993%' GROUP BY T1.account_id ORDER BY max(T2.amount) DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.gender = 'F' AND T3.district_id = (SELECT district_id FROM account WHERE date LIKE "%1950%" ORDER BY date LIMIT 1) AND T3.A2 = 'Sokolov'
SELECT account_id FROM trans WHERE date LIKE "1995-%" ORDER BY date LIMIT 1
SELECT DISTINCT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.amount > 3000 AND T1.date < '1997-01-01'
SELECT T1.client_id FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.issued = '1994/3/3'
SELECT date FROM trans WHERE operation = 'Debit' AND amount = 840 AND date LIKE '1998/10/14'
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1994/08/25"
SELECT max(T3.amount) FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN card AS T3 ON T1.disp_id = T3.disp_id WHERE T1.issued LIKE "1996/%" AND T3.type = "Credit"
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id GROUP BY T3.account_id ORDER BY T3.frequency DESC LIMIT 1
SELECT T3.amount FROM loan AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T2.client_id = T3.client_id WHERE T1.status = 'Applied' ORDER BY T1.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.gender = 'F' AND T2.district_id = 'Jesenik'
SELECT T1.disp_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.date LIKE "9/2/1998" AND T1.type = "Transfer" AND T1.amount = 5100
SELECT count(*) FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1996%" AND T2.type = "Card" AND T2.disp_id = "Litomerice"
SELECT T1.district_id FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'female' AND T2.birth_date = '1976/1/29'
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T2.amount = 98832 AND T2.date = "1996/1/3";
SELECT T2.account_id FROM disp AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T1.client_id = T3.client_id WHERE T3.district_id = 128 AND T2.type = 'New' AND T1.district_id = 13
SELECT T1.gender FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "south Bohemia" GROUP BY T1.gender ORDER BY count(*) DESC LIMIT 1;
SELECT sum(T3.balance) - sum(T2.balance) FROM trans AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN loan AS T3 ON T2.client_id = T3.account_id WHERE T3.date = '1993-07-05' AND T2.date = '1993-03-22' GROUP BY T2.client_id
SELECT count(*) , status FROM loan WHERE status = 'Fully Paid' GROUP BY status
SELECT count(*) FROM loan WHERE amount < 100000 AND status = 'R'
{"sql": "SELECT T1.account_id , district.A3 , district.A13 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date LIKE '%1993%' AND T2.A13 != \"null\" AND T2.A14 != \"null\" AND T2.A15 != \"null\" AND T2.A16 != \"null\" AND T2.A17 != \"null\" AND T2.A18 != \"null\" AND T2.A19 != \"null\" AND T2.A20 != \"null\" AND T2.A21 != \"null\" AND T2.A22 != \"null\" AND T2.A23 != \"null\" AND T2.A24 != \"null\" AND T2.A25 != \"null\" AND T2.A26 != \"null\" AND T2.A27 != \"null\" AND T2.A28 != \"null\" AND T2.A29 != \"null\" AND T2.A30 != \"null\" AND T2.A31 != \"null\" AND T2.A32 != \"null\" AND T2.A33 != \"null\" AND T2.A34 != \"null\" AND T2.A35 != \"null\" AND T2.A36 != \"null\" AND T2.A37 != \"null\" AND T2.A38 != \"null\" AND T2.A39 != \"null\" AND T2.A40 != \"null\" AND T2.A41 != \"null\" AND T2.A42 != \"null\" AND T2.A43 != \"null\" AND T2.A44 != \"null\" AND T2.A45 != \"null\" AND T2.A46 != \"null\" AND T2.A47 != \"null\" AND T2.A48 != \"null\" AND T2.A49 != \"null\" AND T2.A50 != \"null\" AND T2.A51 != \"null\" AND T2.A52 != \"null\" AND T2.A53 != \"null\" AND T2.A54 != \"null\" AND T2.A55 != \"null\" AND T2.A56 != \"null\" AND T2.A57 != \"null\" AND T2.A58 != \"null\" AND T2.A59 != \"null\" AND T2.A60 != \"null\" AND T2.A61 != \"null\" AND T2.A62 != \"null\" AND T2.A63 != \"null\" AND T2.A64 != \"null\" AND T2.A65 != \"null\" AND T2.A66 != \"null\" AND T2.A67 != \"null\" AND T2.A68 != \"null\" AND T2.A69 != \"null\" AND T2.A70 != \"null\" AND T2.A71 != \"null\" AND T2.A72 != \"null\" AND T2.A73 != \"null\" AND T2.A74 != \"null\" AND T2.A75 != \"null\" AND T2.A76 != \"null\" AND T2.A77 != \"null\" AND T2.A78 != \"null\" AND T2.A79 != \"null\" AND T2.A80 != \"null\" AND T2.A81 != \"null\" AND T2.A82 != \"null\" AND T2.A83 != \"null\" AND T2
SELECT count(*) , T1.account_id FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.A2 = 'east Bohemia' AND T2.date LIKE '1995%' AND T2.date LIKE '2000%' GROUP BY T1.account_id
SELECT account_id , date FROM account WHERE district_id = 'Prachatice'
SELECT T2.district , T2.A3 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.loan_id = 4990
SELECT T1.account_id , T2.A3 , T2.A10 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE amount > 300000
SELECT T2.loan_id , T3.A2 , avg(T2.salary) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.duration = 60 GROUP BY T2.loan_id
SELECT T1.district_id , T1.A3 FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.client_id IN (SELECT T3.client_id FROM client AS T3 JOIN loan AS T4 ON T3.client_id = T4.client_id WHERE T4.status = 'running') AND T1.A5 >= 1995 AND T1.A5 <= 1996
SELECT %frequency % , %district_id % FROM account WHERE date = '1993' AND district_id = 105
SELECT DISTINCT account_id FROM account WHERE frequency = 'monthly'
SELECT T1.district_id FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 9
SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.type != 'Credit' AND T2.date LIKE '01/19/1996%' ORDER BY T2.amount DESC LIMIT 10;
SELECT count(*) FROM account WHERE district_id = (SELECT district_id FROM district WHERE A4 = "South Bohemia") AND not in (SELECT account_id FROM card)
SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id JOIN loan AS T3 ON T2.account_id = T3.account_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan AS T1 JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T2.gender = 'M'
SELECT T1.A3 , T1.A12 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date LIKE "1996%" GROUP BY T1.A3 ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM account WHERE date LIKE "1996%" GROUP BY date ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT account_id) FROM trans WHERE operation = 'Credit Card Withdrawal' AND balance < 0
SELECT count(*) FROM loan WHERE amount >= 250000 AND status = 'approved' AND date >= '1995-01-01' AND date <= '1997-12-31'
SELECT count(*) FROM loan WHERE duration = 'Running' AND bank_to = 'Branch'
SELECT count(*) FROM client WHERE gender = 'M' JOIN disp ON client.client_id = disp.client_id WHERE disp.date = "1995-01-01" GROUP BY client.client_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM card WHERE TYPE = "OWNER"
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Pisek"
SELECT T1.district_id FROM district AS T1 JOIN trans AS T2 ON T1.district_id = T2.account_id WHERE T2.date LIKE "1997%" AND abs(amount) > 10000
SELECT T1.account_id FROM order AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN disp AS T3 ON T1.account_to = T3.account_id WHERE T3.type = 'Household Payment' AND T2.district_id = 13 (Pisek)
SELECT T1.account_id FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'Credit' AND T1.issued LIKE '%Gold%'
SELECT avg(T1.amount) FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "2021%"
SELECT T1.account_id FROM trans AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1998' AND T2.amount < (SELECT avg(amount) FROM loan)
SELECT T1.gender , T1.account_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id JOIN disp AS T3 ON T1.client_id = T3.client_id WHERE T1.gender = 'F' AND T3.type = 'Card' INTERSECT SELECT T1.gender , T1.account_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id JOIN disp AS T3 ON T1.client_id = T3.client_id WHERE T1.gender = 'F' AND T3.type = 'Loan'
SELECT count(*) FROM client AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T2.district_id IN (SELECT district_id FROM district WHERE A2 = 'South Bohemia')
SELECT DISTINCT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Tabor"
SELECT DISTINCT T1.type , avg(T2.A4) FROM card AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id != T3.district_id GROUP BY T3.district_id HAVING avg(T2.A4) BETWEEN 8000 AND 9000;
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN order AS T3 ON T2.account_to = T3.account_id JOIN disp AS T4 ON T3.client_id = T4.client_id WHERE T1.district_id = 1001 AND T3.bank_to = 'AB' AND T4.type = 'Card'
SELECT T2.A3 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'withdraw'
SELECT avg(T1.A2) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date > 1997 AND T1.A2 > 4000 GROUP BY T1.A2
SELECT count(*) FROM card WHERE TYPE = "classic"
SELECT count(*) FROM client WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'Hl.m. Praha') AND gender = 'M'
SELECT count(*) * 100 / sum(count(*) ) FROM card WHERE issued < 1998 AND TYPE = 'Gold'
SELECT T1.client FROM client AS T1 JOIN disp AS T2 ON T1.district_id = T2.district_id JOIN loan AS T3 ON T2.account_id = T3.account_id ORDER BY T3.amount DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date = 1995 AND T1.district_id = 532
SELECT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT T3.amount FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.client_id = 3356 AND T3.type = 'Cash'
SELECT count(DISTINCT account_id) FROM loan WHERE amount < 200000
SELECT DISTINCT T2.type FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id JOIN client AS T3 ON T1.client_id = T3.client_id WHERE T3.client_id = 13539
SELECT T1.A3 , T1.A4 FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.client_id = 3541
SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id FROM disp AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 32423
SELECT * FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Jesenik'
SELECT T1.client_id FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'Junior' AND T2.issued > "1996"
SELECT count(*) * 100.0 / (SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A5 > 10000) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F'
SELECT sum(T2.amount) , sum(T3.duration) FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'M' AND T2.date BETWEEN '1996-04-15' AND '1997-04-15'
SELECT count(*) FROM trans WHERE date > '1995' AND operation = 'Credit'
SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "East Bohemia" AND T2.date = "1996-01-01" UNION SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "North Bohemia" AND T2.date = "1996-01-01"
SELECT count(*) , count(*) FROM disp WHERE account_id BETWEEN 1 AND 10
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'release' AND T1.account_number = 3
SELECT T1.gender , T1.district_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.account_id = 130;
SELECT count(DISTINCT T1.account_id) FROM trans AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'request'
SELECT T1.amount , T2.status FROM loan AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 992
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.account_id = 851 AND T2.account_id = 4 GROUP BY T1.gender
SELECT DISTINCT TYPE FROM disp AS T1 JOIN client AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 9
SELECT sum(T2.amount) FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1998%" AND T1.client_id = 617;
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.birth_date BETWEEN '1983-01-01' AND '1987-12-31' AND T3.type = 'disp' AND T2.type = 'client' AND T3.district_id = '2001'
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'F' ORDER BY T2.amount DESC LIMIT 3
SELECT count(*) FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'M' AND T1.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND T2.amount > 4000
SELECT count(*) FROM account WHERE district_id = 12 AND date > '1996-04-15'
SELECT count(*) FROM card AS T1 JOIN client AS T2 ON T1.disp_id = T2.client_id WHERE T1.type = 'Junior' AND T2.gender = 'F'
SELECT count(*) , count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T3.district_id = 12 AND T1.gender = 'F'
SELECT count(*) / count(*) FROM client WHERE gender = 'M' AND client_id IN (SELECT client_id FROM disp WHERE TYPE = 'weekly')
SELECT count(DISTINCT client_id) FROM disp WHERE TYPE = "weekly" AND operation = "statement" AND client_id = (SELECT client_id FROM client WHERE gender = "male")
SELECT T1.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 9 months ORDER BY T2.date LIMIT 1
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'F' ORDER BY T1.birth_date DESC LIMIT 1 INTERSECT SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'F' GROUP BY T2.account_id ORDER BY avg(T2.balance) LIMIT 1
SELECT count(*) FROM client WHERE district_id = (SELECT district_id FROM client WHERE birth_date = "1920") AND A2 = "East Bohemia"
SELECT count(DISTINCT account_id) FROM loan WHERE duration LIKE "24/%"
SELECT T1.amount , avg(T1.status) FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'running' GROUP BY T1.status
SELECT DISTINCT T1.client_id , T1.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = "M" OR T1.district_id IN (SELECT T1.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = "F" UNION SELECT T1.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = "P")
SELECT T1.client_id , T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN card AS T3 ON T2.account_id = T3.account_id WHERE T3.type = 'high' AND T3.issued = 'yes'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element != "carcinogen" AND element != "none" AND element LIKE "%chlorine%"
SELECT avg(count(*) ) FROM bond AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.bond_type = 'single-bond'
SELECT avg(count(*) ) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T3.element = "C"
SELECT count(*) FROM atom WHERE element = 'Na' AND element NOT IN ("C","K")
SELECT T1.molecule_id FROM bond AS T2 JOIN molecule AS T1 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'triple' INTERSECT SELECT T1.molecule_id FROM bond AS T2 JOIN molecule AS T1 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'carcinogenic'
SELECT count(*) , element FROM atom WHERE bond_type = 'double-bond' GROUP BY element IF count(*) > 1000
SELECT count(DISTINCT bond_type) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule WHERE molecule_id < 100 AND label = 'carcinogenic'
SELECT DISTINCT molecule_id FROM atom WHERE element = 'C'
SELECT element FROM atom WHERE bond_id = 8 AND bond_type = "TR004_8_9"
SELECT element FROM bond WHERE bond_type = "double"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE element = "chlorine"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 WHERE T1.element NOT IN (SELECT T3.element FROM atom AS T3 JOIN connected AS T4 ON T3.atom_id = T4.atom_id2 WHERE T4.bond_type = 'c')
SELECT element FROM atom EXCEPT SELECT element FROM molecule WHERE label = 'carcinogenic' GROUP BY element ORDER BY count(*) LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 'TR004_8' , T2.atom_id2 = 'TR004_20')
SELECT label FROM molecule EXCEPT SELECT DISTINCT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'tin'
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'I' AND T2.bond_type = 'single' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'S'
SELECT DISTINCT T1.atom_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.bond_id = "triple"
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id FROM connected WHERE atom_id = "TR181" )
SELECT count(*) FROM molecule WHERE label != 'carcinogenic'
SELECT count(*) , bond_type FROM bond WHERE bond_type = 'triple' INTERSECT SELECT count(*) , element FROM atom WHERE element = "carcinogenic" GROUP BY bond_type
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR000") ORDER BY element
SELECT atom_id FROM connected WHERE bond_id = 'TR001_2_6' AND molecule_id = 1001 AND atom_id NOT IN (SELECT atom_id FROM atom WHERE molecule_id = 1001 AND element = 'H')
SELECT count(*) , count(*) - count(*) FROM molecule WHERE label = 'carcinogenic' INTERSECT SELECT count(*) , count(*) - count(*) FROM molecule WHERE label = 'not carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 2 AND T1.element = "H" AND T2.atom_id2 = "TR000_2_5"
SELECT bond_id FROM connected WHERE atom_id = 2 AND atom_id2 = 2
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T2.bond_type = "double" ORDER BY T1.label
SELECT count(*) / (SELECT count(*) FROM bond) FROM bond WHERE bond_type = "double"
SELECT count(*) * 100.0 / (SELECT sum(molecule_id) FROM molecule) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T2.atom_id = T3.atom_id WHERE T3.label = "carcinogenic"
SELECT sum(element) , T1.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "H" GROUP BY T1.label
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM bond) AND molecule_id = 'TR000'
SELECT T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = "TR060" AND T1.element = "toxic"
SELECT bond_type , CASE WHEN label = 'TR010' THEN 'carcinogenic' ELSE 'not carcinogenic' END FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR010' GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT T3.molecule FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN molecule AS T3 ON T2.atom_id = T3.molecule_id WHERE T1.bond_type = "single" EXCEPT SELECT T3.molecule FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN molecule AS T3 ON T2.atom_id = T3.molecule_id WHERE T1.bond_type = "carcinogenic" ORDER BY T3.molecule
SELECT bond_type FROM bond WHERE molecule_id = 236 ORDER BY bond_type
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 12 AND T2.molecule_id = 'TR009'
SELECT count(*) FROM atom WHERE element = 'Br'
SELECT bond_type , atom_id FROM bond WHERE bond_id = "TR001_6_9"
SELECT T2.label , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 'TR001_10' AND T2.label = 'carcinogenic'
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 19
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR004"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic')
SELECT T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "atomic" AND T1.atom_id BETWEEN 21 AND 25 INTERSECT SELECT T2.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carcinogenic"
SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T2.element = "P" INTERSECT SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T2.element = "N"
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT max(count(*) ) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id)
SELECT avg(T1.atom_id) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = "iodine"
SELECT bond_type , bond_id FROM bond WHERE bond_id = (SELECT bond_id FROM connected WHERE atom_id = 45)
SELECT element FROM atom EXCEPT SELECT element FROM atom JOIN connected ON atom.atom_id = atom_id2
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR041" INTERSECT SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple"
SELECT element FROM atom WHERE atom_id = 144 AND element = 8 AND 19
SELECT molecule_id FROM bond GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT element FROM atom WHERE element = 'Pb' INTERSECT SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2
SELECT element FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.atom_id2 GROUP BY T1.element HAVING count(*) = 2
SELECT count(*) FROM bond WHERE bond_type = 'single' INTERSECT SELECT count(*) FROM bond_type WHERE bond_type = 'carcinogenic'
SELECT sum(atom_id) FROM atom WHERE element = 'C' INTERSECT SELECT sum(atom_id) FROM atom WHERE element = 'H'
SELECT atom_id FROM atom WHERE element = 'S'
SELECT bond_type FROM bond WHERE bond_type = "bond" AND element = "tin"
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT sum(atom_id) FROM atom WHERE element = 'P' OR element = 'Br'
SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT molecule_id FROM bond WHERE bond_type = 'single' EXCEPT SELECT molecule_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) , T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single' GROUP BY T1.element HAVING sum(T1.element) = 1 AND T1.molecule_id = T2.molecule_id AND T2.bond_type = 'single'
SELECT label FROM molecule WHERE molecule_id = "TR000" OR molecule_id = "TR001" OR molecule_id = "TR002"
SELECT molecule_id FROM molecule WHERE label != 'carcinogen'
SELECT sum(count(*) ) , molecule_id FROM atom WHERE molecule_id BETWEEN 1000 AND 3000 GROUP BY molecule_id
SELECT bond_type FROM bond WHERE molecule_id >= 'TR000' AND molecule_id <= 'TR050'
SELECT element FROM bond AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.bond_id = 'TR001_10_11'
SELECT count(*) FROM bond WHERE bond_type = 'bond' AND element = 'iodine'
SELECT count(*) FROM atom WHERE element = "Calcium" GROUP BY molecule_id HAVING count(*) > (SELECT count(*) FROM atom WHERE element = "Calcium") UNION SELECT count(*) FROM atom WHERE element = "Non-Calcium" GROUP BY molecule_id HAVING count(*) > (SELECT count(*) FROM atom WHERE element = "Calcium")
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.element = "Cl" INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.element = "C"
SELECT molecule_id FROM atom WHERE element = 'C' INTERSECT SELECT molecule_id FROM bond WHERE bond_type = 'triple' EXCEPT SELECT molecule_id FROM molecule WHERE label = 'carcinogenic'
SELECT count(*) , element FROM atom WHERE element = 'Cl' AND molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic') GROUP BY element
SELECT element FROM atom WHERE molecule_id = "TR001" AND element = "toxic"
SELECT molecule_id FROM bond WHERE bond_type = 'double'
SELECT T1.atom_id , T2.atom_id FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T3.bond_id WHERE T1.bond_type = "triple"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = "TR" AND T1.molecule_id = "TR000_1_2"
SELECT count(*) FROM bond WHERE bond_type = 'single' AND bond_type NOT IN ('carcinogenic', 'mutagenic')
SELECT label FROM molecule WHERE molecule_id = 'TR001_10_11'
SELECT bond_id , COUNT(*) FROM bond WHERE bond_type = "triple bond" GROUP BY bond_id HAVING COUNT(*) >= 3
SELECT count(*) , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Toxic" AND T1.atom_id = (SELECT atom_id FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = "Carcinogenic" ORDER BY atom_count DESC LIMIT 1)) GROUP BY T1.element
SELECT count(*) , element FROM atom WHERE molecule_id = 'TR006' GROUP BY element
SELECT count(*) FROM atom WHERE element = "Ca" AND count(*) > 100
SELECT bond_type FROM bond WHERE element = 'Carbon'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_10_11'
SELECT count(*) / (SELECT count(*) FROM compound) FROM compound WHERE bond_type = "triple-bond"
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T1.label = "TR047" AND T2.bond_type = "double-bond"
SELECT count(*) FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic')
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR151" AND T2.element = "carcinogenic"
SELECT element FROM atom WHERE molecule_id = 151 AND element = 'toxic'
SELECT count(*) FROM compound WHERE label = 'carcinogenic';
SELECT atom_id FROM atom WHERE molecule_id BETWEEN TR010 AND TR050 AND element = 'carbon'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic compounds'
SELECT bond_id FROM bond WHERE bond_type = 'double-bond' INTERSECT SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' AND T2.label = 'carcinogenic'
SELECT T1.molecule_id FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T2.element = "TR000_1" AND T1.bond_type = "TR000_1_2"
SELECT atom_id FROM atom WHERE element = 'Carbon' EXCEPT SELECT atom_id FROM atom WHERE element != 'compound carcinogenic'
SELECT count(*) FROM atom WHERE element != 'hydrogen' AND element IN (SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic') )
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR124" AND T2.element = "carcinogenic"
SELECT element FROM atom WHERE atom_id = 186
{"sql": "SELECT bond_type FROM bond WHERE bond_id = (SELECT bond_id FROM bond WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE molecule_label = 'TR007_4_19')")"}
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id FROM connected WHERE bond_id = 'TR001_2_4')
SELECT count(*) , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" AND T1.label = "TR006" AND T3.label = "carcinogenic"
SELECT element , molecule_id FROM atom WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = "carcinogenic")
SELECT bond_type , T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = 'single'
SELECT T1.molecule_id , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple"
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id FROM connected WHERE bond_type = "TR000_2_3" )
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = "Cl"
SELECT count(*) , T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 346 GROUP BY T1.atom_id
SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "double" INTERSECT SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "carcinogenic"
SELECT count(*) FROM atom WHERE element != 'sulfur' AND bond_type != 'double'
SELECT label FROM molecule WHERE molecule_id IN (SELECT bond_id FROM bond WHERE bond_type = "carcinogenic" AND molecule_id = "TR001_2_4")
SELECT count(*) FROM atom WHERE molecule_id = 'TR001'
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T2.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "cl" AND T2.label = "carcinogenic"
SELECT molecule_id FROM atom WHERE element = "C" EXCEPT SELECT molecule_id FROM atom WHERE element != "carcinogen"
SELECT count(*) , element FROM atom WHERE element LIKE "%Chlorine%" GROUP BY element
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT count(*) FROM bond WHERE bond_id = 'TR001_3_4'
SELECT bond_type FROM bond WHERE bond_id IN (SELECT T1.bond_id FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id = "TR000_1" AND T1.atom_id2 = "TR000_2")
SELECT molecule FROM atom WHERE atom_id = "TR000_2" UNION SELECT molecule FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1"
SELECT count(*) FROM molecule WHERE molecule_id = 'TR000' AND label = 'carcinogenic'
SELECT count(*) , element FROM atom WHERE bond_type = 'single' GROUP BY element
SELECT count(*) FROM atom WHERE element = 'N'
SELECT T1.molecule_id FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = "Sulfur" AND T2.bond_type = "double"
SELECT molecule FROM atom WHERE element != 'C' GROUP BY molecule_id HAVING sum(atom_id) > 5
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id FROM bond WHERE bond_type = "double" AND molecule_id = 1024)
SELECT molecule_id FROM atom GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , sum(count(*) / (SELECT count(*) FROM molecule WHERE label = 'carcinogenic')) FROM atom WHERE element = 'H' AND bond_type = 'triple'
SELECT count(*) FROM molecule WHERE label = 'carcinogenic'
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label BETWEEN 'TR004' AND 'TR010' AND T1.bond_type = 'single'
SELECT count(*) FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = "TR008") AND element = "C"
SELECT element FROM atom WHERE atom_id = "TR004_7" AND molecule_id NOT IN (SELECT molecule_id FROM bond WHERE bond_type = "carcinogenic")
SELECT count(*) FROM atom WHERE element = "O" AND bond_type = "double"
SELECT count(*) FROM bond WHERE bond_type = 'triple' EXCEPT SELECT count(*) FROM bond WHERE bond_type = 'carcinogenic'
SELECT element , bond_type FROM bond WHERE molecule_id = "TR002"
SELECT atom_id FROM atom WHERE molecule_id = 1012 AND element = 'double'
SELECT atom_id FROM atom WHERE element = "o" AND molecule_id IN (SELECT molecule_id FROM molecule WHERE label = "carcinogenic")
SELECT name FROM cards WHERE power = "incredibly powerful"
SELECT name FROM cards WHERE isTextless = 1 AND cardKingdomFoilId = "null"
SELECT faceName FROM cards WHERE convertedManaCost > (SELECT min(convertedManaCost) FROM cards)
SELECT name FROM cards WHERE frameVersion = "2015" AND edhrecRank < 100 ORDER BY edhrecRank
SELECT DISTINCT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.cardid = T2.code JOIN printings AS T3 ON T1.cardid = T3.id WHERE T3.format = "gladiator" AND T1.rarity = "mythic" AND T2.baseSetSize = 1;
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = 'cards' AND count(*) = 1
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "commander" INTERSECT SELECT T1.id , T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.uuid = T2.id WHERE T2.type = "legal"
SELECT T1.flavorText , T1.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Stephen Daniel" AND T1.name = "The Ruling"
SELECT T1.date , T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Sublime Epiphany' AND T2.number = 74
SELECT T1.name , T1.artist , T2.promoTypes FROM cards AS T1 JOIN printings AS T2 ON T1.id = T2.id WHERE T2.promoTypes = 'yes' GROUP BY T2.promoTypes ORDER BY count(*) DESC LIMIT 1
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.number = 29 AND T1.isAlternative = 1
SELECT name FROM foreign_data WHERE language = "Japanese"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE availability = 'Chinese Simplified') FROM cards WHERE availability = 'Chinese Simplified'
SELECT count(*) , T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T2.language = "Italian"
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.scryfallIllustrationId = T2.id WHERE T1.artist = "Aaron Boyd"
SELECT keywords FROM cards WHERE name = "Angel of Mercy"
SELECT count(*) FROM cards WHERE power = "infinity"
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = "Ancestor's Chosen"
SELECT originalType FROM cards WHERE name = "Ancestor's Chosen"
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.code WHERE T1.name = 'Angel of Mercy'
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "restricted" AND T1.isTextless = "yes"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "Condemn"
SELECT count(*) FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = "restricted" AND T2.isStarter = 1 AND T1.format = "legalities"
SELECT status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Cloudchaser Eagle"
SELECT TYPE FROM cards WHERE name = "Benalish Knight";
SELECT flavorText FROM cards WHERE name = "Benalish Knight"
SELECT artist FROM cards WHERE cardKingdomFoilId = "Phyrexian"
SELECT count(*) , sum(rarity) FROM cards WHERE isTextless = 'false' GROUP BY rarity ORDER BY sum(rarity) DESC LIMIT 1;
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.scryfallillustrationid = T2.scryfallillustrationid WHERE T2.language = "German" AND T1.isReprint = 1
SELECT count(*) FROM cards WHERE isTextless = 'false' AND scryfallillustrationid IN (SELECT T1.scryfallillustrationid FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.scryfallillustrationid WHERE T1.flavortext = 'Russian')
SELECT count(*) , count(*) / (SELECT count(*) FROM cards WHERE isStorySpotlight = 'Y' AND cardKingdomFoilId = 'French') FROM cards WHERE isStorySpotlight = 'Y' AND cardKingdomId = 'French'
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE scryfallillustrationid = "aaron Boyd"
SELECT count(*) FROM cards WHERE borderColor = "black" AND cardKingdomFoilId = "mtgo"
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND subtypes != "Angel"
SELECT id FROM cards WHERE power = "incredibly powerful" INTERSECT SELECT id FROM cards WHERE power = "non-incredibly powerful"
SELECT id FROM cards WHERE duelDeck = "a"
SELECT edhrecRank FROM cards WHERE frameVersion = 2015
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Chinese Simplified"
SELECT name FROM cards WHERE availability = 'paper' AND originaltext LIKE '%Japanese%'
SELECT count(*) FROM cards WHERE borderColor = "white" AND colorIdentity = "card"
SELECT T1.uuid , T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomId = "legacy"
SELECT text FROM rulings WHERE date = "Beacon of Immortality"
SELECT T1.frameVersion , T2.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = "future"
SELECT colorIdentity , colorIndicator FROM cards WHERE setCode = "OWG"
SELECT T2.name , T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.setcode = 10E JOIN cards AS T3 ON T3.id = T2.id WHERE T3.convertedmanaCost = 5
SELECT T1.name , T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originaltype = "Creature" AND T1.originalText = "Elf" UNION SELECT T1.name , T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originaltype = "Creature" AND T1.originalText = "Duel"
SELECT colors , format FROM cards WHERE id BETWEEN 1 AND 20
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN foreign_data AS T3 ON T2.language = T3.language WHERE T1.colorIndicator = "Black" AND T2.setCode = (SELECT T4.code FROM sets AS T4 WHERE T4.isForeignOnly = 1)
SELECT name FROM cards WHERE rarity = 'uncommon' ORDER BY originalReleaseDate ASC
SELECT count(*) FROM cards WHERE cardKingdomFoilId NOT IN ( SELECT cardKingdomFoilId FROM cards WHERE artist = "John Avon" )
SELECT count(*) FROM cards WHERE power = 'White bordered' AND borderColor = 'White'
SELECT count(*) FROM cards WHERE printings = "mtgo" AND originaltype = "starter" AND artist = "UDON"
SELECT count(*) FROM cards WHERE frameVersion = "1993" AND hasContentWarning = 1
SELECT manaCost FROM cards WHERE layout = 'normal' AND frameVersion = '2003' AND borderColor = 'black' AND availability = 'paper' AND availability = 'mtgo'
SELECT sum(convertedManaCost) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = 'Rob Alexander'
SELECT DISTINCT TYPE FROM cards WHERE cardKingdomFoilId = "arena"
SELECT setcode FROM set_translations WHERE LANGUAGE = "Spanish"
SELECT count(*) * 100.0 / count(*) FROM cards WHERE isOnlineOnly = 1 AND frameEffects = "legendary" GROUP BY frameEffects
SELECT id FROM cards WHERE isTextless = 'false'
SELECT count(*) FROM foreign_data WHERE language = "Spanish" ORDER BY name
SELECT T1.name FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.code = T2.code JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.totalsetsize = 309
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN foreign_data AS T3 ON T3.id = T2.code WHERE T3.flavortext = "Brasil" AND T3.language = "Portuguese" AND T1.block = "Commander"
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "Legal"
SELECT DISTINCT TYPE FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "de"
SELECT count(*) FROM cards WHERE power = 'unknown' AND frameEffects LIKE '%triggered%'
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T3.id = T2.id WHERE T2.text = "This is a triggered mana ability." AND T3.format = "pre-modern" EXCEPT SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T3.id = T2.id WHERE T2.text = "This is a triggered mana ability." AND T3.format = "pre-modern" AND count(*) > 2
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "paper"
SELECT artist FROM cards WHERE flavortext = "Das perfekt Gegenmittel zu einer dichten Formation"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = "Creature" AND T2.borderColor = "Black" AND T2.asciiName = "Matthew D. Wilson" AND T2.layout = "Normal" AND T2.colorIndicator = "Card"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalReleaseDate = "01/02/2007" AND T1.rarity = "print"
SELECT T2.flavorText FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code JOIN cards AS T3 ON T1.id = T3.id WHERE T1.block = "Ravnica" AND count(*) = 180 AND T2.language = "english"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'commander' AND T2.status = 'legal' EXCEPT SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'commander' AND T2.status = 'legal' AND T1.hasContentWarning
SELECT count(*) * 100.0 / count(*) FROM cards WHERE power = "without power" AND flavortext = "French"
SELECT count(*) * 100.0 / count(*) FROM set_translations AS T1 JOIN translations AS T2 ON T1.language = T2.language WHERE T2.flavorText = 'Expansion' INTERSECT SELECT count(*) * 100.0 / count(*) FROM set_translations AS T1 JOIN translations AS T2 ON T1.language = T2.language WHERE T2.flavorText = 'Japanese'
SELECT DISTINCT printings FROM cards WHERE artist = "Daren Bader"
SELECT count(*) FROM cards WHERE edhrecRank > 12000 AND borderColor = "none";
SELECT count(*) FROM cards WHERE isOversized = 'Y' AND promoTypes = "Promotion" AND printings = "Reprint";
SELECT power FROM cards WHERE promoTypes = 'arena' GROUP BY power ORDER BY count(*) DESC LIMIT 3
SELECT language FROM foreign_data WHERE multiverseid = 149934
SELECT cardKingFoilId FROM cards ORDER BY cardKingFoilId DESC LIMIT 3
SELECT count(*) FROM cards WHERE layout != 'normal'
SELECT id FROM cards WHERE count(*) <= 1 AND subtypes = "Angel" INTERSECT SELECT id FROM cards WHERE count(*) <= 1 AND subtypes = "Wizard"
SELECT name FROM sets WHERE isOnlineOnly != 'T' ORDER BY name
SELECT T1.language FROM foreign_data AS T1 JOIN sets AS T2 ON T1.code = T2.code WHERE T2.name = "Archenemy on the magic card market" AND T1.setcode = "ARC"
SELECT T1.name , T3.translation FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code JOIN set_translations AS T3 ON T2.code = T3.code WHERE T2.number = 5
SELECT T2.language , T2.promoTypes FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.number = 206
SELECT T1.id , T2.name FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.block = "Shadowmoor" AND T1.flavorText = "Italian" ORDER BY T1.id
SELECT id FROM cards WHERE availability = 'outside' AND flavorText = 'Japanese' INTERSECT SELECT id FROM cards WHERE availability != 'outside' AND flavorText = 'Japanese'
SELECT T1.name FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.cardKingdomId WHERE T2.rarity = "common" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText JOIN sets AS T3 ON T3.code = T2.setcode WHERE T2.language = "中文简化" AND T3.isOnlineOnly = 1
SELECT count(*) FROM sets WHERE isNonFoilOnly AND language = "Japanese" AND isOnlineOnly != "Yes";
SELECT id FROM cards WHERE borderColor = "black"
SELECT id FROM cards WHERE frameEffects = "extendedart"
SELECT name FROM cards WHERE isFullArt = 1 AND borderColor = 'black';
SELECT T2.flavorText FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.id = 174
SELECT name FROM sets WHERE code = "ALL"
SELECT DISTINCT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = "A Pedra Fellwar"
SELECT code FROM sets WHERE releaseDate = "07/13/2007"
SELECT T1.baseSetSize , T1.code FROM sets AS T1 JOIN rulings AS T2 ON T1.id = T2.id JOIN cards AS T3 ON T3.id = T2.uuid WHERE T1.block = "Masques" AND T1.block = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT T2.flavorName , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'boros'
SELECT T2.flavorText , T2.language , T2.types FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.colorIdentity = "watermark"
SELECT count(*) , convertedManaCost FROM cards WHERE convertedManaCost = 10 AND cardKingdomFoilId = 'Abyssal Horror' GROUP BY convertedManaCost HAVING count(*) >= 1
SELECT code FROM sets WHERE parentCode = 'expansion commander'
SELECT T2.flavorName , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'abzan'
SELECT T2.flavorText , T2.language , T1.types FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'azorius'
SELECT count(*) FROM cards WHERE artist = "Aaron Miller" AND power = "incredibly powerful"
SELECT count(*) FROM cards WHERE availability = 'paper' AND hand > 0
SELECT name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.text WHERE T1.isTextless = 'no'
SELECT convertedManaCost FROM cards WHERE name = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "unknown"
SELECT T1.faceName FROM cards AS T1 JOIN promotions AS T2 ON T1.id = T2.cardid GROUP BY T2.cardid HAVING count(*) > 1
SELECT DISTINCT originalType FROM cards WHERE name = "Molimo, Maro-Sorcerer"
SELECT purchaseUrls FROM cards WHERE promoTypes = "bundle"
SELECT count(DISTINCT artist) FROM cards WHERE borderColor = "black" AND printings = "arena" INTERSECT SELECT count(DISTINCT artist) FROM cards WHERE borderColor = "black" AND printings = "mtgo"
SELECT convertedManaCost FROM cards WHERE name = "Serra Angel" OR name = "Shrine Keeper"
SELECT artist FROM cards WHERE promoTypes = "Promotion" AND faceName = "Battra, Dark Destroyer";
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code ORDER BY T1.releasedDate LIMIT 3 WHERE T2.releasedDate LIKE "2003%"
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T2.flavortext = "Ancestor's Chosen" AND T2.language = "Italian"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN cards AS T3 ON T1.setCode = T3.id WHERE T3.name = "Angel of Mercy"
SELECT name FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.name = "Hauptset Zehnte Edition"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN sets AS T3 ON T2.setCode = T3.code WHERE T2.language = "ko" AND T1.name = "Ancestor's Chosen"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.name = "Hauptset Zehnte Edition" INTERSECT SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.id = T2.uuid WHERE T2.text = "Adam Rex"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.name = "Hauptset Zehnte Edition"
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Simplified Chinese" AND T2.setcode = "Eighth Edition"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T1.name = "Angel of Mercy" AND T2.isOnlineOnly = 1
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.id WHERE T2.name = "Ancestor's Chosen";
SELECT T1.promoTypes FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.text = "Hauptset Zehnte Edition"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = "Ice Age" AND T2.language = "Italian"
SELECT count(*) FROM cards WHERE setCode = "Adarkar Valkyrie" AND availability != "restricted" AND availability != "outside usa"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "italian" AND T1.baseSetSize < 100
SELECT count(*) FROM cards WHERE borderColor = "Black" AND setCode = "Coldsnap"
SELECT name FROM cards WHERE cardKingdomFoilId = "Coldsnap" ORDER BY convertedManaCost DESC LIMIT 1
SELECT DISTINCT artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Coldsnap" INTERSECT SELECT DISTINCT artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Jeremy Jarvis" INTERSECT SELECT DISTINCT artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Aaron Miller" INTERSECT SELECT DISTINCT artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Chippy"
SELECT number FROM cards WHERE setcode = "Coldsnap" AND number = 4
SELECT count(*) FROM cards WHERE convertedManaCost > 5 AND power != 'Unknown'
SELECT flavorText FROM cards WHERE name = "Ancestor's Chosen" AND flavorName = "Italian"
SELECT DISTINCT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.faceName = "Ancestor's Chosen"
SELECT originalType FROM cards WHERE name = "Ancestor's Chosen" AND originalType = "German"
SELECT T2.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T2.code WHERE T3.name = "Coldsnap" AND T2.text = "Il text in Italian"
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.code WHERE T2.language = "Italian" AND T1.cardKingdomFoilId = "Coldsnap" ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Reminisce'
SELECT count(*) , percent FROM cards WHERE convertedManaCost = 7 AND cardKingdomFoilId = "Coldsnap"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE cardKingdomFoilId = 'Coldsnap') FROM cards WHERE cardKingdomId = 'Incredibly Powerful'
SELECT code FROM sets WHERE releaseDate = "2017/7/14"
SELECT keyruneCode FROM sets WHERE code = "PKHC"
SELECT mcmid FROM sets WHERE code = 'SS2'
SELECT mcmName FROM sets WHERE releaseDate = "2017/6/9"
SELECT DISTINCT T1.text FROM foreign_data AS T1 JOIN sets AS T2 ON T1.code = T2.code WHERE T2.name = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T1.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Jim Pavelec"
SELECT T2.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T1.name = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Rinascita di Alara"
SELECT T2.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Huitième édition";
SELECT T1.flavorName FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.name = "Tendo Ice Bridge" AND T2.language = "French"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Tenth Edition"
SELECT T2.flavorName FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.name = "Fellwar Stone" AND T2.language = "Japanese"
SELECT name FROM cards WHERE setCode = "Journey into Nyx Hero's Path" ORDER BY convertedManaCost DESC LIMIT 1
SELECT T1.releaseDate FROM sets AS T1 JOIN foreign_data AS T2 ON T1.code = T2.setcode WHERE T2.name = "Ola de frío"
SELECT T1.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T1.name = "Samite Pilgrim"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "World Championship Decks 2004" AND T1.convertedManaCost = "3"
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.name = "Mirrodin" AND T2.language = "Simplified Chinese"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T1.cardKingdomFoilId = 'foil' INTERSECT SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T1.cardKingdomFoilId != 'foil' AND T2.isNonFoilOnly = 'true'
SELECT count(*) , count(*) - sum(isOnlineOnly) FROM cards WHERE isOnlineOnly = 'T' AND originalText = 'Brazil Portuguese'
SELECT DISTINCT printings FROM cards WHERE id NOT IN (SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.flavorText = 'Aleksi Briclot')
SELECT id FROM cards GROUP BY id ORDER BY count(*) DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T1.convertedManaCost < T2.convertedManaCost ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT frameEffects FROM cards WHERE power = 'incredibly powerful'
SELECT count(*) FROM cards WHERE power = "unknown" AND cardKingdomId NOT IN (SELECT cardKingdomId FROM cards WHERE cardKingdomFoilId = "duel")
SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T2.promoTypes = "Commander" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT id FROM cards WHERE cardKingdomFoilId != "all" ORDER BY convertedManaCost LIMIT 10;
SELECT T1.releaseDate , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY T1.releaseDate DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.scryfallillustrationid = T2.id WHERE T1.artist = "Volkan Baçım" AND T2.flavortext = "French"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = "rare" AND T2.status = "legal"
SELECT T1.format , T1.name FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = "banned" GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.name = "Battlebond"
SELECT T1.faceName , T1.frameVersion FROM cards AS T1 JOIN cards AS T2 ON T1.scryfallIllustrationId = T2.scryfallIllustrationId GROUP BY T2.scryfallIllustrationId ORDER BY count(*) ASC LIMIT 1;
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameVersion = 1997 AND T1.format = 'sensitive' OR T1.format = 'Wizards of the Coast'
SELECT name , format FROM cards WHERE edhrecRank = "1"
SELECT avg(T1.number) , T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.releaseDate BETWEEN '01/01/2012' AND '12/31/2015' GROUP BY T2.flavorText
SELECT artist FROM cards WHERE availability = 'isOnlineOnly' AND borderColor = 'black'
SELECT T1.uuid FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "old school" OR T2.status = "restricted" OR T2.status = "banned"
SELECT count(*) FROM cards WHERE availability = 'available' AND artist = 'Matthew D. Wilson' INTERSECT SELECT count(*) FROM cards WHERE availability = 'paper'
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = "Kev Walker" ORDER BY T1.date DESC
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.id = T2.id WHERE T3.name = "Hour of Devastation"
SELECT name FROM sets WHERE setcode NOT IN (SELECT setcode FROM set_translations WHERE translation = "Japanese")
SELECT DISTINCT T1.frameEffects , T2.faceName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.flavorText = 'Banned' INTERSECT SELECT DISTINCT T1.frameEffects , T2.faceName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.flavorText = 'Banned' AND T1.artist = 'Allen Williams'
SELECT DisplayName FROM users WHERE Reputation > (SELECT Reputation FROM users WHERE DisplayName = 'Harlan' OR DisplayName = 'Jarrod Dixon')
SELECT T1.DisplayName FROM users AS T1 JOIN users AS T2 ON T1.AccountId = T2.AccountId WHERE T2.creationdate LIKE "2011%"
SELECT count(*) FROM users WHERE lastAccessDate > '2014-09-01'
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T2.OwnerUserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.user_id WHERE T2.upvotes > 100 AND T2.downvotes > 100
SELECT count(*) FROM users WHERE views > 10 AND creationdate > 2013
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.UserId = "csgillespie"
SELECT title FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Csgillespie"
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.title = "Eliciting priors from experts"
SELECT title FROM posts WHERE OWNERuserid = "csgillespie" ORDER BY viewcount DESC LIMIT 1
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T2.OwnerUserId ORDER BY T2.Score DESC LIMIT 1
SELECT sum(commentcount) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.owneruserid = "csgillespie"
SELECT max(AnswerCount) FROM badges AS T1 JOIN posts AS T2 ON T1.OwnerUserId = T2.OwnerUserId WHERE T2.OwnerDisplayName = "Csgill"
SELECT T1.LastEditorDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.Body = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN posts AS T2 ON T1.parentid = T2.parentid WHERE T1.owneruserid = 'csgillespie' AND T1.posttypeid = 'root'
{"sql": "SELECT T2.OwnerDisplayName FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.PostId WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.reputation = "Elder" AND T1.score > 19
SELECT T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T2.TagName = "bayesian"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId GROUP BY T2.ExcerptPostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE UserId = 1014553
SELECT T2.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'csgillespie'
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Csgill' AND T1.date = 2011
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.Id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.Score) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.displayName = "Csgillespie"
SELECT avg(T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.views > 200
SELECT count(*) , T1.age FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.score > 5 GROUP BY T1.id HAVING T1.age > 15
SELECT T2.ViewCount FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 58 AND T1.CreationDate = "2010-07-19";
SELECT T1.CreationDate FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id GROUP BY T1.PostId ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival";
SELECT T1.title FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid ORDER BY T2.score DESC LIMIT 1
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.viewcount = 1910
SELECT FavoriteCount FROM posts WHERE PostId = (SELECT PostId FROM comments WHERE CreationDate = "2014-04-23 20:29:39" AND UserId = 3025)
SELECT Text FROM comments WHERE PostId = 107829
SELECT COUNT(*) FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.postid WHERE T2.comment = 'User No.23853 gave a comment to a post at 9:08:18 on 2013/7/12'
SELECT T4.Reputation FROM posts AS T1 JOIN (votes AS T2 JOIN posts AS T3 ON T2.PostId = T3.PostId) AS T4 ON T3.OwnerUserId = T1.OwnerUserId WHERE T1.PostId = 65041 AND T4.UserId = 65041
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Tiago Pasqualini"
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 1 AND T2.PostId = 6347
SELECT T1.ViewCount FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "data visualization"
SELECT T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = "DatEpicCoderGuyWhoPrograms"
SELECT count(*) , T1.VoteCount - T2.VoteCount FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.id = 24
SELECT sum(viewcount) FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE score = 17
SELECT users.id FROM users WHERE websiteurl = 'http://stackoverflow.com'
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'SilentGhost'
SELECT T1.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = 'thank you user93!'
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'A Lion'
SELECT T2.OwnerUserId , T1.Reputation FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN posts AS T3 ON T3.OwnerUserId = T2.OwnerUserId WHERE T3.Title = 'Understanding what Dassault iSight is doing?'
SELECT Text FROM comments WHERE PostId = (SELECT id FROM posts WHERE title = 'How does gentle boosting differ from AdaBoost?')
SELECT T1.userDisplayName FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = 'Necromancer' LIMIT 10
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.lasteditoruserId WHERE T2.title = 'Open source tools for visualizing multi-dimensional data'
SELECT DISTINCT T1.title FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T3.id = T2.userid WHERE T3.lastname = "Vebjorn" AND T3.firstname = "Ljosa"
SELECT T1.score , T4.websiteurl FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T3.id = T2.userid JOIN posts AS T4 ON T4.id = T2.postid WHERE T2.userdisplayname = "Yevgeny"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.title = 'Why square the difference instead of taking the absolute value in standard deviation' AND T1.user_id != T2.last_editor_user_id
SELECT sum(T2.BountyAmount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'data'
SELECT T1.ownerdisplayname FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid JOIN posts AS T3 ON T2.postid = T3.id WHERE T3.title LIKE "%variance%" AND T2.bountyamount = 50;
SELECT T1.Title , T1.CommentCount , T1.Tags FROM posts AS T1 JOIN tags AS T2 ON T1.PostId = T2.ExcerptPostId WHERE T2.TagName = "humor" GROUP BY T1.Tags
SELECT count(*) FROM comments WHERE userid = 13
SELECT UserId FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY ViewCount LIMIT 1
SELECT count(DISTINCT userid) FROM badges WHERE Date = "2011-01-01" AND name = "supporter";
SELECT count(DISTINCT user_id) FROM badges WHERE count(*) > 5
SELECT count(DISTINCT T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.id = T2.id WHERE T2.location = "New York" AND T1.name = "Teacher" INTERSECT SELECT count(DISTINCT T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.id = T2.id WHERE T2.location = "New York" AND T1.name = "Supporter"
SELECT T2.Reputation , T1.OwnerUserId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.PostId = 1
SELECT T1.UserId FROM posthistory AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ViewCount >= 1000 GROUP BY T1.UserId HAVING COUNT(*) = 1
SELECT T1.Name , T1.UserId FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT T1.id) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.location = 'India'
SELECT Date , %difference FROM badges WHERE Date LIKE "2010%" OR Date LIKE "2011%"
SELECT T2.PostHistoryTypeId , count(DISTINCT T1.UserId) FROM comments AS T1 JOIN postHistory AS T2 ON T1.PostId = T2.PostId WHERE T1.PostId = 3720 GROUP BY T1.UserId
SELECT T1.Title , T1.Score FROM posts AS T1 JOIN postlinks AS T2 ON T1.PostId = T2.PostId WHERE T2.RelatedPostId = 61217 GROUP BY T1.PostId ORDER BY T1.Score DESC LIMIT 1
SELECT T2.LinkTypeId , T1.Score FROM comments AS T1 JOIN postlinks AS T2 ON T1.PostId = T2.PostId WHERE T1.PostId = 395
SELECT T2.PostId , T2.OwnerUserId FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.voteTypeId = 1 AND T2.score > 60
SELECT sum(FavoriteCount) FROM posts WHERE CreationDate LIKE "2011%" AND OwnerUserId = 686
SELECT avg(upvotes) , avg(age) FROM users WHERE answercount > 10
SELECT count(DISTINCT userid) FROM badges WHERE name = "Announcer"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.creationdate = "2010-07-19 19:39:08"
SELECT count(*) FROM comments WHERE score > 0
SELECT Text FROM comments WHERE CreationDate = "2010-07-19 19:25:47"
SELECT count(*) FROM votes WHERE voteTypeId = "Like" AND postid IN (SELECT postid FROM comments WHERE score = 10)
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id ORDER BY T2.reputation DESC LIMIT 1
SELECT T1.reputation FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.date = "2010-07-19 19:39:08"
SELECT T2.name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.displayname = "Pierre"
SELECT T2.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "Rochester , NY"
SELECT T2.UserId , count(*) , T1.UserId FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId HAVING T1.Name = "Teacher" AND count(*) = T1.UserId
SELECT count(*) , avg(age) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.name = 'Organizer' GROUP BY T1.id HAVING avg(age) < 18
SELECT max(T1.Score) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate LIKE "7/19/2010 7:19:56 PM"
SELECT Text FROM comments WHERE CreationDate = "2010-07-19 19:37:33"
SELECT T1.Age FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = "Vienna , Austria"
SELECT count(DISTINCT users.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name = 'Supporter'
SELECT count(*) FROM badges WHERE date = "2010-07-19 19:39:08"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id ORDER BY T2.reputation LIMIT 1
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Sharpie"
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.name = 'Supporter' AND T1.age > 35
SELECT name FROM users WHERE id = 30;
SELECT count(*) FROM users WHERE LOCATION = 'New York'
SELECT count(*) FROM votes WHERE creationdate = "2010-04-16";
SELECT count(*) FROM users WHERE age > 25
SELECT DisplayName FROM users ORDER BY ViewCount DESC LIMIT 1
SELECT count(*) , creationdate FROM votes WHERE creationdate = '2010' OR creationdate = '2011' GROUP BY creationdate
SELECT T2.TagName FROM users AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid WHERE T1.displayname = "John Salvatier"
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.OwnerDisplayName = "Daniel Vassallo"
SELECT sum(T1.DownVotes) FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1 DisplayName = "Harlan"
SELECT postid FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.voteTypeId = "Up" AND T2.owneruserid = "Slashnick" ORDER BY T2.answercount DESC LIMIT 1
SELECT max(T2.ViewCount) FROM users AS T1 JOIN posts AS T2 ON T1.ID = T2.OwnerUserId WHERE T1.DisplayName = "Harvey Motulsky" INTERSECT SELECT max(T2.ViewCount) FROM users AS T1 JOIN posts AS T2 ON T1.ID = T2.OwnerUserId WHERE T1.DisplayName = "Noah Snyder"
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.userid = (SELECT T2.owneruserid FROM votes AS T3 JOIN users AS T4 ON T3.userid = T4.id WHERE T4.displayname = "Matt Parker") AND T2.answercount > 4;
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN users AS T3 ON T1.UserId = T3.Id WHERE T3.DisplayName = "Neil McGuigan" AND T1.Score < 0;
SELECT DISTINCT T2.Tags FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T1.OwnerUserId = "Mark Meckes" EXCEPT SELECT DISTINCT T2.Tags FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T1.OwnerUserId = "Mark Meckes" AND T1.Comment = "null"
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = "Organizer"
SELECT count(*) , count(*) / (SELECT count(*) FROM posts WHERE posttype = 'R') FROM tags WHERE tagname = 'R'
SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Location = "Mornington" INTERSECT SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Location = "Amos"
SELECT count(DISTINCT userid) FROM badges WHERE date = "2014-01-01";
SELECT count(*) FROM posts WHERE creationdate LIKE "2010-07-21%"
SELECT T2.DisplayName , T2.Age FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN posts AS T3 ON T3.id = T1.PostId ORDER BY T3.ViewCount DESC LIMIT 1
SELECT lasteditdate , lasteditoruserid FROM posts WHERE title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE userid = 13 AND text < 0
SELECT T1.Title , T2.UserDisplayName FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score > 0
SELECT T2.name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.location = "North Pole" AND T2.date = 2011
SELECT T4.OwnerDisplayName , T4.websiteurl FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id JOIN postHistory AS T3 ON T3.UserId = T1.UserId JOIN users AS T4 ON T4.id = T3.LastEditorUserId WHERE T2.favoritecount > 150
SELECT count(*) , T1.LastEditDate FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What is the best introductory Bayesian statistics textbook" GROUP BY T1.LastEditDate
SELECT T1.LastAccessDate , T1.Location FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Outliers'
SELECT T2.title FROM postHistory AS T1 JOIN posts AS T2 ON T1.postid = T2.id JOIN tags AS T3 ON T2.ExcerptPostId = T3.id WHERE T1.LasActivityDate > "2023-12-01" AND T2.title = "How to tell if something happened in a data set which monitors a value over time"
SELECT T2.Id , T2.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Samuel" AND T1.Date = 2013
SELECT OWNERDISPLAYNAME FROM posts ORDER BY VIEWCOUNT DESC LIMIT 1
SELECT T1.OwnerDisplayName , T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Tags = "hypothesis-testing"
SELECT T2.RelatedPostId , T2.LinkTypeId FROM posts AS T1 JOIN postlinks AS T2 ON T1.Id = T2.RelatedPostId WHERE T1.Title = "What are principal component scores"
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId ORDER BY T2.score DESC LIMIT 1
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT title FROM posts ORDER BY VIEWCOUNT DESC LIMIT 5
SELECT count(*) FROM tags AS T JOIN posts AS P ON T.ExcerptPostId = P.Id WHERE T.score BETWEEN 5000 AND 7000
SELECT OWNERUSERID FROM posts ORDER BY score DESC LIMIT 1
SELECT Age FROM users ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.creationdate = '2011-01-01' AND T1.bountyamount = 50
SELECT id FROM users ORDER BY age LIMIT 1
SELECT sum(T1.Score) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate LIKE "2010-07-19%"
SELECT avg(T1.LinkCount) FROM postlinks AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.answercount <= 2 AND T1.creationdate = '2010-03-27'
SELECT PostId FROM votes WHERE UserId = 1465 GROUP BY PostId ORDER BY SUM(TB1.Score) DESC LIMIT 1
SELECT title FROM posts ORDER BY creationdate LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T2.UserId ORDER BY count(*) DESC LIMIT 1
SELECT T1.CreationDate FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN tags AS T3 ON T2.ExcerptPostId = T3.Id WHERE T3.TagName = 'chl' AND T1.voteTypeId = 1
SELECT creationdate FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userid ORDER BY T1.age LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T2.date LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.user_id WHERE T1.location = "United Kingdom" AND favoritecount >= 4
SELECT avg(T2.AvatarCount) FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.Age = (SELECT max(Age) FROM users)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 AND views > 1000
SELECT DisplayName FROM users WHERE Age = 'Adult'
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Jay Stevens" AND T1.creationdate = 2010
SELECT postid , title FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayName = "Harvey Motulsky" ORDER BY viewcount DESC LIMIT 1
SELECT postid , title FROM posts ORDER BY score DESC LIMIT 1
SELECT avg(T1.score) FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T2.userdisplayname = T3.id WHERE T3.ownerdisplayname = "Stephen Turner"
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.ViewCount LIKE '%2011%' AND T2.Score >= 20000
SELECT postid , OWNERDISPLAYNAME FROM posts WHERE creationdate = '2010-04-16' ORDER BY score DESC LIMIT 1
SELECT count(*) , percentage FROM (SELECT T1.OwnerUserId , T2.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.reputation > 1000 AND T2.creaiondate = '2011-04-22 15:30:00' GROUP BY T1.owneruserid) AS T3 JOIN users AS T4 ON T3.owneruserid = T4.id GROUP BY T4.id
SELECT percentage FROM (SELECT T1.id , T2.age , avg(T2.age) / 10 FROM users AS T1 JOIN users AS T2 ON T1.id = T2.id WHERE T1.age LIKE '%13%' GROUP BY T2.age)
SELECT T2.OwnerDisplayName FROM postHistory AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.PostId = 100516851 AND T2.Views = (SELECT max(Views) FROM comments WHERE PostId = 100516851)
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
{"sql": "SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments
SELECT count(*) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT T1.LastEditorDisplayName , T1.Location FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.PostId = 183;
SELECT max(T1.Date) , T1.UserId FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Emmett" GROUP BY T1.UserId HAVING max(T1.Date) != "0000-00-00 00:00:00"
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.upvotes > 5000
SELECT date FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Zolomon'
SELECT count(*) , commentcount FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.userid = (SELECT userid FROM badges ORDER BY creationdate DESC LIMIT 1)
SELECT T1.Text , T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.PostId = "Analysing wind data with R" ORDER BY T1.creationdate DESC LIMIT 10
SELECT count(DISTINCT userid) FROM badges WHERE name = 'Citizen Patrol'
SELECT count(*) FROM tags WHERE tagname = 'careers'
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT count(*) , answercount FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid WHERE T1.title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE accountid = 'IrishStat'
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT T2.OwnerDisplayName FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN users AS T3 ON T1.UserId = T3.Id WHERE T3.reputation = (SELECT max(reputation) FROM users) AND T2.score > 50 GROUP BY T3.OwnerDisplayName HAVING count(*) > 1
SELECT count(*) FROM comments WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 AND count >= 20
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T1.Reputation , T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "fine , you win : )"
SELECT Text FROM comments WHERE PostId = 1005383
SELECT max(T2.score) , T1.postid FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.viewcount BETWEEN 100 AND 150 GROUP BY T1.id
SELECT T1.CreationDate , T2.Age FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.WebsiteUrl = "insta.com"
SELECT count(*) FROM comments WHERE score = 0 INTERSECT SELECT count(*) FROM posts WHERE viewcount < 5
SELECT count(*) FROM comments WHERE postid IN (SELECT postid FROM comments GROUP BY postid ORDER BY commentcount DESC LIMIT 1) AND score = 0
SELECT count(*) FROM comments AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.score = 0 AND T2.age = 40
SELECT T1.PostId , count(*) FROM posts AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId GROUP BY T1.PostId HAVING min(T2.Score) = 5
SELECT T1.ViewCount FROM votes AS T1 JOIN comments AS T2 ON T1.UserId = T2.UserId WHERE T2.Text = "R is also lazy evaluated."
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky"
SELECT T1.UserDisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.score BETWEEN 1 AND 5 GROUP BY T2.UserId HAVING COUNT(*) = 0
SELECT T1.userdisplayname , T2.score FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.score BETWEEN 5 AND 10 GROUP BY T2.userid HAVING count(*) = 1
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "3-D Man" LIMIT 3
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = "Super Strength"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.superhero_id = T2.power_id WHERE T1.power = "Super Strength" AND T1.height_cm > 200
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.id HAVING count(*) > 15
SELECT count(*) FROM superhero WHERE eye_colour_id = 1;
SELECT T2.colour FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = "Apocalypse"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.power_id WHERE T1.eye_colour_id = "blue" AND T1.superpower_of = "Agility"
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "blond"
SELECT count(*) FROM superhero WHERE publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT superhero_name FROM superhero WHERE publisher_id = 1 ORDER BY height_cm DESC
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = "Sauron"
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero GROUP BY eye_colour_id ORDER BY count(*) DESC LIMIT 1)
SELECT avg(height_cm) FROM superhero WHERE publisher_name = 'Marvel Comics'
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'Super Strength' AND t1.publisher_id = 'Marvel Comics'
SELECT count(*) FROM superhero WHERE publisher_id = "DC Comics"
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id ORDER BY weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero WHERE eye_colour_id = 'gold' AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = "Blue Beetle II"
SELECT count(*) FROM superhero WHERE race_id = 4 AND hair_colour_id = 1;
SELECT superhero_name FROM superhero ORDER BY full_name LIKE '%dumb%' LIMIT 1
SELECT race FROM superhero WHERE superhero_name = "Copycat"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id WHERE t2.attribute_value < 50
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'death touch'
SELECT count(*) FROM superhero WHERE gender = 'female' AND weight_kg >= 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE race_id = 'vampire';
SELECT count(*) , percentage , count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.publisher_id IN ( "Marvel Comics" ) AND T1.superhero_name = "Superhero" AND T1.superhero_name IN ( "Self-interest" , "Moral code" )
SELECT T1.publisher_name , count(*) - count(T2.publisher_id) FROM superhero AS T1 JOIN superhero AS T2 ON T1.publisher_id = T2.publisher_id WHERE T1.full_name = "DC" INTERSECT SELECT T1.publisher_name , count(*) - count(T2.publisher_id) FROM superhero AS T1 JOIN superhero AS T2 ON T1.publisher_id = T2.publisher_id WHERE T1.full_name = "Marvel Comics"
SELECT publisher_id FROM superhero WHERE superhero_name = "Star Trek."
SELECT avg(T2.attribute_value) FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = "superhero"
SELECT count(*) FROM superhero WHERE full_name = ""
SELECT T1.eye_colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.id = 75
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender_id = 1
SELECT superhero_name FROM superhero WHERE race_id = 'alien'
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 AND eye_colour_id != "male"
SELECT t3.power_name FROM hero_power AS t1 JOIN superpower AS t2 ON t1.power_id = t2.id JOIN superhero AS t3 ON t3.id = t1.hero_id WHERE t3.id = 56
SELECT full_name FROM superhero WHERE superhero_name LIKE "%Demi-God%" LIMIT 5;
SELECT count(*) FROM superhero WHERE superhero_name = "bad"
SELECT race FROM superhero WHERE weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185
SELECT eye_colour FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.height_cm BETWEEN 150 AND 180 AND T2.publisher_name = 'Marvel Comics'
SELECT superhero_name FROM superhero WHERE gender = 'Male' AND weight_kg > (SELECT avg(weight_kg) FROM superhero)
SELECT t1.power_name FROM superpower AS t1 JOIN superhero_power AS t2 ON t1.id = t2.power_id GROUP BY t2.power_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.superhero_name = "Abomination"
SELECT T3.power_name FROM hero_power AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id JOIN superpower AS T3 ON T1.power_id = T3.id WHERE T2.id = 1
SELECT count(DISTINCT T1.hero_id) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'stealth'
SELECT t1.full_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t3.attribute_name = 'strength' ORDER BY t2.attribute_value DESC LIMIT 1
SELECT avg(weight_kg) FROM superhero WHERE skin_colour_id = "null"
SELECT count(DISTINCT superhero_name) FROM superhero WHERE publisher_id = (SELECT id FROM publisher WHERE publisher_name = 'Dark Horse Comics')
SELECT t1.superhero_name FROM superhero AS t1 JOIN superhero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id JOIN publisher AS t4 ON t4.id = t3.publisher_id WHERE t4.publisher_name = 'Dark Horse Comics' GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.eye_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.superhero_name = "Abraham Sapien"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'Flight'
SELECT T1.eye_colour , T1.hair_colour , T1.skin_colour FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T2.publisher_name = "Dark Horse Comics" AND T3.gender = "Female"
SELECT T2.publisher_name FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.skin_colour_id = T2.skin_colour_id WHERE T1.colour = T2.colour_id AND T1.colour = T2.colour_id AND T1.colour = T2.colour_id
SELECT T1.superhero_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.power_id WHERE T2.power_name = 'A-Bomb'
SELECT count(*) , gender_id FROM superhero WHERE gender = 'F' AND eye_colour_id = 'blue' GROUP BY gender_id HAVING count(*) > 0
SELECT superhero_name , race FROM superhero WHERE full_name = "Charles Chandler"
SELECT DISTINCT t1.gender FROM gender AS t1 JOIN superhero AS t2 ON t1.id = t2.gender_id WHERE t2.superhero_name = "Agent 13"
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.power_id WHERE t2.power_name = 'adaptation'
SELECT count(*) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 10173
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id = "amber"
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM colour WHERE colour = 'black') AND hair_colour_id = (SELECT hair_colour_id FROM colour WHERE colour = 'black')
SELECT eye_colour_id FROM superhero WHERE skin_colour_id = "gold"
SELECT full_name FROM superhero WHERE race = 'vampire' AND gender = 'male'
SELECT T1.superhero_name FROM superhero AS T1 JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = "neutral"
SELECT count(*) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_type = 'strength')
SELECT T1.race , T1.alignment FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.superhero_name = "Cameron Hicks"
SELECT count(*) * 100.0 / count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.gender = 'female' AND T2.publisher_name = 'Marvel Comics'
SELECT avg(weight_kg) FROM superhero WHERE race_id = 'Alien'
SELECT weight_kg - (SELECT weight_kg FROM superhero WHERE superhero_name = "Emil Blonsky") FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT avg(height_cm) FROM superhero
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.superhero_name = "Abomination"
SELECT count(*) FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE race = 'god/eternal') AND gender = 'Male'
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE alignment = "neutral"
SELECT T2.attribute_name , T1.attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T1.hero_id = '3D Man'
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "brown"
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = "Hawkman" AND T1.superhero_name = "Karate Kid" AND T1.superhero_name = "Speedy"
SELECT count(*) FROM superhero WHERE publisher_id = "null"
SELECT count(*) , avg(T1.eye_colour_id) FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.eye_colour_id = 'blue'
SELECT count(*) , gender_id FROM superhero GROUP BY gender_id HAVING count(*) > 1
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = "cryokinesis"
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = "null"
SELECT eye_colour FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = "Helen Parr"
SELECT race FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id GROUP BY T1.race_id ORDER BY AVG(attribute_value) DESC LIMIT 1
SELECT T1.alignment , T2.power_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.power_id WHERE T1.superhero_name = "Atom IV"
SELECT full_name FROM superhero WHERE eye_colour_id = "blue"
SELECT avg(t2.attribute_value) FROM hero_attribute AS t1 JOIN attribute AS t2 ON t1.attribute_id = t2.id WHERE t2.attribute_name = "neutral"
SELECT T1.skin_colour_id FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value = 100 GROUP BY T1.skin_colour_id HAVING count(*) = 100
SELECT count(*) FROM superhero WHERE gender_id = 2 AND gender = 'female'
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id WHERE t2.attribute_value BETWEEN 75 AND 80
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.gender_id = 1 AND T2.full_name LIKE '%blue-haired%' AND T2.gender_id = 1
SELECT count(*) , (count(*) / (SELECT count(*) FROM superhero WHERE gender_id = "female") ) FROM superhero WHERE gender_id = "female"
SELECT count(*) - count(*) FROM superhero WHERE weight_kg = "null" AND eye_colour_id = "blue"
SELECT weight_kg FROM superhero WHERE superhero_name = "The Hulk"
SELECT power_name FROM superpower WHERE power_name LIKE "%Ajax%"
SELECT count(*) FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.skin_colour_id = "green" AND T2.gender_id = "female" AND T2.alignment_id = "unknown";
SELECT count(*) FROM superhero WHERE gender_id = 1 AND publisher_name = 'Marvel Comics'
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.power_id WHERE t2.power_name = "wind" ORDER BY t1.superhero_name
SELECT t1.gender FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'Phoenix Force'
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE superhero_name LIKE '%non-human%' AND publisher_id = 568
SELECT count(*) FROM superhero WHERE power_name = 'Fastest'
SELECT count(*) FROM superhero WHERE publisher_id = "DC" OR publisher_id = "Marvel Comics"
SELECT T2.attribute_name FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T1.hero_id = 1 AND T2.attribute_name = "weakest" AND T1.superhero_name = "Black Panther"
SELECT eye_colour FROM superhero WHERE superhero_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT count(*) , count(*) / count(*) FROM superhero WHERE gender_id = 1 AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superman' AND publisher_name = 'George Lucas' )
SELECT count(*) , avg(T1.good) FROM superhero AS T1 JOIN superpower AS T2 ON T1.power_name = T2.power_name JOIN superhero_name AS T3 ON T1.superhero_name = T3.superhero_name WHERE T1.publisher_name = 'Marvel Comics' GROUP BY T3.superhero_name
SELECT count(*) FROM superhero WHERE full_name LIKE "%John%"
SELECT hero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT t1.full_name FROM superhero AS t1 JOIN colour AS t2 ON t1.skin_colour_id = t2.id JOIN attribute AS t3 ON t2.colour = t3.id WHERE t3.attribute_value = 'brown' AND t1.weight_kg < 100
SELECT T2.attribute_value FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = "Aquababy"
SELECT weight_kg , race FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender_id = 1 AND alignment = 1
SELECT T1.hero_id FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Intelligence'
SELECT eye_colour FROM superhero WHERE full_name = "Blackwulf"
SELECT t1.power_name FROM superpower AS t1 JOIN superhero AS t2 ON t1.id = t2.id WHERE t2.height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T3.raceId = T2.raceId WHERE T3.name = "20" AND T2.status = "eliminated" AND T2.round = 1
SELECT T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 19 ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T2.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Shanghai"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Circuit de Barcelona-Catalunya"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Germany"
SELECT T2.position FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T1.name = "Renault"
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid != 'ASIA' AND circuitid != 'Europe'
SELECT T2.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Australian Grand Prix"
SELECT T2.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Sepang International Circuit"
SELECT TIME FROM races WHERE circuitid = 'Sepang International Circuit'
SELECT T2.lng , T2.lat FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Abu Dhabi Grand Prix"
SELECT T1.country FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.round = 24 AND T3.constructorid = T1.constructorid AND T3.points = 1
SELECT q1 FROM qualifying WHERE raceid = 354 AND driverid = "Bruno Senna";
SELECT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 355 AND T2.q1 = "0:01:40"
SELECT T1.number FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "0:01:54" AND T2.raceid = 903
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T2.year = 2007 EXCEPT SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T2.year = 2007 AND T1.statusid = 5
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.round = 901
SELECT count(DISTINCT driverId) FROM results WHERE raceId IN (SELECT raceId FROM races WHERE date LIKE "%2015/%22/29%" )
SELECT T1.forename FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.raceid = 592 ORDER BY T1.dob DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = 1 AND T2.milliseconds = 1000 AND T2.position = 0;
SELECT T1.name FROM circuits AS T1 JOIN laptimes AS T2 ON T1.circuitid = T2.circuitid JOIN races AS T3 ON T2.driverid = T3.driverid WHERE T3.round = 933 ORDER BY T2.milliseconds LIMIT 1
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Malaysian Grand Prix"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.number = 9 ORDER BY T1.points DESC LIMIT 1
SELECT results.points , results.position FROM results AS T1 JOIN driverid AS T2 JOIN races AS T3 ON T1.driverid = T2.driverid AND T1.raceid = T3.raceid WHERE T2.forename = "Lucas" AND T2.surname = "di Grassi" AND T3.number = 345
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN laptimes AS T3 ON T2.raceid = T3.raceid AND T3.driverid = T4.driverid WHERE T2.round = 347 AND T3.position = "Q2" AND T4.drivername = T5.surname AND T5.firstname = "0" AND T5.lastname = "01";
SELECT T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.round = 45 AND T2.position = 0 AND T2.time = "0:01:33";
SELECT T1.time FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid WHERE T3.driverref = "Bruce McLaren" AND T2.round = 743
SELECT T1.driver FROM drivers AS T1 JOIN results AS T2 ON T1.driver = T2.driver WHERE T2.year = 2006 AND T2.raceid = T3.raceid AND T3.name = "San Marino Grand Prix" AND T2.position = 2;
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name LIKE "2015/11/29" AND T1.status != "Finished"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 872 ORDER BY T1.dob LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 348 ORDER BY T2.position LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1
SELECT (T1.position - T2.position) / 100 FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.raceid = 853 ORDER BY T2.positionTEXT DESC LIMIT 1
SELECT avg(T2.laps) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 1983 AND T1.date = "7/16/16" GROUP BY T2.driverid
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = "Singapore Grand Prix"
SELECT name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races ORDER BY YEAR LIMIT 1
SELECT T1.name , T1.date FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year = 1999 ORDER BY T1.round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE YEAR = 2000
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "European Grand Prix" ORDER BY T1.country LIMIT 1;
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.circuitid = 'Brands Hatch' AND T2.name = 'British Grand Prix'
SELECT count(*) FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.name = "Silverstone Circuit" AND T2.name = "United Kindom Grand Prix";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2010 AND T3.name = "Singapore Grand Prix" ORDER BY T2.position ORDER BY T1.position
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid ORDER BY T2.points DESC LIMIT 1
SELECT T1.drivername , T1.points FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2017 AND T3.name = "2017 Chinese Grand Prix" ORDER BY T1.points DESC LIMIT 3;
SELECT T1.drivername , T1.name FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.lap DESC LIMIT 1
SELECT avg(T2.time) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "Lewis Hamilton" AND T1.round = 2 AND T1.position = 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T2.year >= 2010 AND T3.name != 'Hamilton 1st'
SELECT T1.driverRef , T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY max(T2.points) DESC LIMIT 1;
SELECT dob FROM drivers WHERE nationality = "Japanese" ORDER BY dob LIMIT 1
SELECT DISTINCT T1.circuitid FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 1990 AND 2000 GROUP BY T1.circuitid HAVING count(*) = 4
SELECT T2.name , T2.location , T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2006
SELECT T1.name , T2.name , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.round = 9
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Alex" AND T3.surname = "Yoong" AND T1.name < 20
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit" JOIN results AS T3 ON T1.raceid = T3.raceid JOIN driverstandings AS T4 ON T3.driverid = T4.driverid WHERE T4.positiontext = "win" AND T4.driverRef = "Michael Schumacher";
{"sql": "SELECT T1.name , T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN results AS T3 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid = T3.driverid WHERE T3.fastestlapspeed = (SELECT max(T3.fastestlapspeed) FROM results AS T3 JOIN laptimes AS T2 ON T2.driverid =
SELECT avg(T1.points) FROM results AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Eddie" AND T2.surname = "Irving" AND T1.year = 2000
SELECT T1.name , T1.points FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid WHERE T3.drivercode = "Lewis Hamilton" AND T2.year = T3.round ORDER BY T2.year
SELECT T1.name , T2.circuitRef FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2017 ORDER BY T1.date
SELECT T1.name , T1.year , T1.circuit FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid GROUP BY T2.raceid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , count(*) / (SELECT count(*) FROM races WHERE country = 'Germany') FROM races WHERE country = 'Europe'
SELECT lat , lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT location FROM circuits WHERE circuitRef = 'Silverstone Circuit' INTERSECT SELECT location FROM circuits WHERE circuitRef = 'Hungaroring' ORDER BY lat DESC LIMIT 1;
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = '';
SELECT T1.country FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN drivers AS T3 ON T2.raceid = T3.raceid WHERE T3.dob = (SELECT max(dob) FROM drivers)
SELECT surname FROM drivers WHERE nationality = "Italian"
SELECT DISTINCT T1.url FROM circuits AS T1 JOIN results AS T2 ON T1.circuitid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Anthony" AND T3.surname = "Davidson";
SELECT driverRef FROM drivers WHERE forename = "Lewis" AND surname = "Hamilton";
SELECT T1.circuitId FROM races AS T1 JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT T2.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Silverstone Circuit"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit"
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2010 AND T2.name = "Abu Dhabi Circuit"
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy"
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Barcelona-Catalunya"
SELECT T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix"
SELECT fastestlaptime FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Lewis Hamilton" AND T3.position = 1;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN lapTimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T3.raceId = T2.raceId WHERE T3.name = "Canadian Grand Prix" AND T3.year = 2007 ORDER BY T2.position = 1 LIMIT 1
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T2.position = 1 AND T1.round = 1
SELECT T1.fastestlapspeed FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix"
SELECT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT rank FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Chinese Grand Prix" AND T1.driverid = "Lewis Hamilton";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix" AND T2.position = 4
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2008 AND T3.name = "Australian Grand Prix"
SELECT T1.lap , T1.position , T1.time FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.driver = "Lewis Hamilton" AND T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" ORDER BY T1.position DESC LIMIT 1
SELECT T2.fastestLapTime FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T2.name = "AustChineseralian Grand Prix" AND T1.driverid = T2.driverid AND T1.position = 2
SELECT T1.name , T1.positionText FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Australian Grand Prix" SELECT T1.name , T1.positionText FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Australian Grand Prix"
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "2008 Australian Grand Prix" AND T2.statusid = 1
SELECT count(DISTINCT driverId) FROM results AS T1 JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.name = '2008 Chinese Grand Prix'
SELECT sum(T1.points) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T1.constructorid = T3.constructorid WHERE T2.name = "Formula_1" AND T3.driverid = T1.driverid AND T1.driverid = "Lewis Hamilton";
SELECT avg(T2.fastestlapsitime) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T2.name = "Formula_1"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Australian Grand Prix" AND T1.status = "completed"
SELECT avg(T1.fastestLapSpeed) - 100 FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" AND T1.driverid != T2.driverid
SELECT count(*) FROM circuits WHERE LOCATION = "Adelaide" AND country = "Australia";
SELECT lat , lng FROM circuits WHERE country = "United States"
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob > "1980-01-01"
SELECT max(T1.points) FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "British"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 291 AND T2.points = 0
SELECT count(*) FROM results AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.nationality = "Japanese" AND T2.points = 0
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.position = 1
SELECT count(*) FROM results AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T3.raceid = T1.raceid JOIN circuits AS T4 ON T4.circuitid = T3.circuitid WHERE T4.country = "France" AND T3.round > 50
SELECT T1.name , T1.position FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.nationality = "Japanese" AND T1.year BETWEEN 2007 AND 2009
SELECT avg(T2.time) , T1.year FROM seasons AS T1 JOIN results AS T2 ON T1.year = T2.raceid WHERE T1.year < 1975 GROUP BY T1.year
SELECT forename , surname FROM drivers WHERE dob > "1975-01-01" AND position = 2
SELECT count(*) FROM drivers WHERE nationality != 'Italian' AND driverid NOT IN ( SELECT driverid FROM results WHERE position = 'fin' )
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT fastestlaps FROM results WHERE race = 2009 AND position = 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT count(*) FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.lap > 50 AND T2.dob < '2005-04-15'
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "French" AND TIME(M2) < 02.00.00
SELECT DISTINCT code FROM drivers WHERE nationality = "USA"
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.raceid = 18
SELECT count(*) FROM drivers WHERE nationality = "Netherlandic" ORDER BY dob DESC LIMIT 3
SELECT driverRef FROM drivers WHERE forename = "Robert" AND surname = "Kubica";
SELECT count(*) FROM drivers WHERE dob = '1980' AND nationality = 'British'
SELECT T1.surname , T1.forename , T1.dob FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T2.milliseconds LIKE "1980-1990%" ORDER BY T2.time ASC LIMIT 3
SELECT driverRef FROM drivers WHERE dob = (SELECT max(dob) FROM drivers WHERE nationality = "German")
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob = "1971/1/1" INTERSECT SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1
SELECT T1.surname , T1.forename , T1.dob FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND T2.lap = (SELECT max(lap) FROM laptimes WHERE dob < 1982) ORDER BY T1.dob DESC LIMIT 10;
SELECT DISTINCT T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT YEAR FROM laptimes ORDER BY fastestlapspeed LIMIT 1
SELECT driverid FROM laptimes ORDER BY fastestlap TIME DESC LIMIT 5
SELECT count(*) FROM results AS T1 JOIN raceid AS T2 ON T1.raceid = T2.raceid WHERE T2.raceid BETWEEN 50 AND 100 AND T1.statusid = 3;
SELECT LOCATION , lat , lng FROM circuits WHERE country = "Austria"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.driverRef , T1.nationality , T1.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 23 AND T2.position = 2 AND T2.lap = 2
SELECT T1.name , T1.date , T1.time FROM drivers AS T1 JOIN qualifying AS T2 ON T2.driverid = T1.driverid ORDER BY T1.dob DESC LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN constructorresults AS T3 ON T3.constructorid = T2.constructorid WHERE T1.nationality = "American" AND T2.status = "puncture";
SELECT t1.name FROM constructors AS t1 JOIN constructorstandings AS t2 ON t1.constructorid = t2.constructorid ORDER BY t2.points DESC LIMIT 1 WHERE t1.nationality = 'Italian'
SELECT T1.url FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid GROUP BY T1.constructorid ORDER BY sum(T2.wins) DESC LIMIT 1
SELECT T1.driver FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 3 AND T1.driverref IN (SELECT T3.driverref FROM results AS T3 JOIN races AS T4 ON T3.raceid = T4.raceid WHERE T4.name = "French Grand Prix" ORDER BY T2.position DESC LIMIT 1) ORDER BY T2.position DESC LIMIT 1
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT avg(T2.fastestlapsit) FROM results AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2006 AND T3.name = "United States Grand Prix" ORDER BY T2.position DESC LIMIT 10
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY avg(T2.duration) ASC LIMIT 3 HAVING dob LIKE '1980-1985' AND nationality = "German"
SELECT T2.driver FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Canadian Grand Prix" ORDER BY T1.position DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "2009 Singapore Grand Prix" AND T2.status = "1"
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob BETWEEN "1981-01-01" AND "1991-12-31"
SELECT dob , url , forename , surname FROM drivers WHERE nationality = "German" AND dob BETWEEN 1971 AND 1985 ORDER BY dob DESC
SELECT LOCATION , country , {lat} , {lng} FROM circuits WHERE name = 'Hungaroring'
SELECT T1.name , T1.nationality , T1.points FROM constructors AS T1 JOIN constructorResults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Monaco Grand Prix" AND T2.year BETWEEN 1980 AND 2010 ORDER BY T1.name DESC LIMIT 1
SELECT avg(T1.points) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T1.constructorid = T3.constructorid WHERE T2.name = "Turkish Grand Prix" AND T3.positionText = "Lewis Hamilton";
SELECT avg(T1.round) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 2011 AND 2021
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.wins) FROM results AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.position ORDER BY T2.grid DESC LIMIT 1
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = (SELECT max(YEAR) FROM races)
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2008 AND T3.name = "Marina Bay Street Circuit" AND T2.position = 1 ORDER BY T1.forename , T1.surname
SELECT T1.forename , T1.surname , T1.nationality , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid WHERE T1.dob = (SELECT min(dob) FROM drivers)
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Canadian Grand Prix" ORDER BY T3.position DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverStandings AS T2 ON T1.driverid = T2.driverid WHERE T1.dob = (SELECT max(dob) FROM drivers) ORDER BY T1.forename , T1.surname
SELECT max(T2.time) FROM pitstops AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.stop = 'pit'
SELECT max(time) FROM laptimes
SELECT max(T2.time) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton";
SELECT T1.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2011 Australian Grand Prix" AND T1.driverid = drivers.driverid WHERE drivers.driverid = "Lewis Hamilton"
SELECT T2.time FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 AND T2.name = "2011 Australian Grand Prix"
SELECT T1.lap , T1.time FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T1.raceid JOIN drivers AS T4 ON T4.driverid = T1.driverid WHERE T4.forename = "Lewis" AND T3.name = "Formula_1" AND T2.position = "fastest";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 20
SELECT T1.circuitid FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN results AS T3 ON T3.raceid = T2.raceid JOIN laptimes AS T4 ON T4.driverid = T3.driverid WHERE T4.position = (SELECT min(position) FROM laptimes WHERE driverid = luisemartin)
SELECT T1.laps , T1.time FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Austrian Grand Prix Circuit"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Italy"
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.circuitid = 123456 AND T2.position = 1
SELECT T1.duration FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Austrian Grand Prix Circuit" AND T1.driverid = T3.driverid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid ORDER BY T1.duration DESC LIMIT 1
SELECT T1.location , T1.circuitid FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN laptimes AS T3 ON T2.raceid = T3.raceid WHERE T3.milliseconds LIKE "1:29.488%"
SELECT avg(T2.milliseconds) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis Hamilton"
SELECT avg(T1.milliseconds) , T2.circuitRef FROM circuits AS T1 JOIN laptimes AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Italy" GROUP BY T2.circuitid
SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1;
SELECT height , player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND attacking_work_rate = 'yes'
SELECT DISTINCT T1.player_api_id FROM Player_Attributes AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.away_player_11 GROUP BY T1.player_api_id ORDER BY crossing DESC LIMIT 5;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_long_name FROM Country AS T1 JOIN MATCH AS T2 ON T1.id = T2.country_id WHERE T2.season = 2016 GROUP BY T1.team_short_name ORDER BY count(*) LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_fifa_api_id ORDER BY penalties DESC LIMIT 10;
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN league AS T3 ON T3.id = T1.league_id WHERE T3.name = 'Scotland Premier League' AND T1.season = 2010 GROUP BY T2.team_short_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY buildUpPlaySpeed DESC LIMIT 4;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.stage = "draw" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.sprint_speed >= 97 AND T2.date >= "2013-01-01" AND T2.date <= "2015-01-01"
SELECT T1.name , count(*) FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(height) FROM Player WHERE birthday BETWEEN '1990-01-01' AND '1995-12-31'
SELECT player_api_id FROM Player_Attributes WHERE date = "2010" ORDER BY overall_rating DESC LIMIT 1;
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed BETWEEN 50 AND 60;
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.date = "2012" ORDER BY avg(T2.buildUpPlayPassing) DESC LIMIT 5;
SELECT count(*) * 100.0 / count(*) FROM Player_Attributes WHERE preferred_foot = "left" AND birthday BETWEEN 1987 AND 1992;
SELECT name FROM league ORDER BY sum(goal) DESC LIMIT 5;
SELECT avg(long_shots) FROM Player_attributes WHERE player_name = "Ahmed Samir Farag"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T2.player_api_id HAVING avg(heading_accuracy) > 180 ORDER BY avg(heading_accuracy) DESC LIMIT 10;
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = 'normal' AND T2.buildUpPlayDribblingClass = 'dribble' AND T2.date = '2014' GROUP BY T1.team_long_name HAVING avg(T2.chanceCreationPassing) < T2.chanceCreationPassingClass ORDER BY T2.chanceCreationPassingClass DESC;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2009 AND T2.stage = 1 GROUP BY T1.id HAVING avg(T2.home_team_goal) > avg(T2.away_team_goal)
SELECT team_short_name FROM Team WHERE team_long_name = "Queens Park Rangers";
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = 100 AND T2.potential = 100 AND T2.preferred_foot = "football" AND T2.date = "1970-10-15";
SELECT attacking_work_rate FROM Player_Attributes AS P JOIN Player AS T ON P.player_api_id = T.player_api_id WHERE T.player_name = "Franco Zennaro"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id JOIN MATCH AS T3 ON T2.team_fifa_api_id = T3.away_team_api_id WHERE T3.stage = 1 AND T3.date LIKE "01/%" INTERSECT SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id JOIN MATCH AS T3 ON T2.team_fifa_api_id = T3.away_team_api_id WHERE T3.stage = 1 AND T3.date LIKE "02/%"
SELECT finishing FROM Player_Attributes WHERE date = "18/09/2014" AND player_fifa_api_id = "FRANCE AFFOLTER";
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Gabriel Tamas" AND T2.date = 2011
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id JOIN league AS T3 ON T1.league_id = T3.id WHERE T3.name = 'Scotland Premier League' AND T1.season = '2015/2016';
SELECT T1.preferred_foot FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = (SELECT min(attacking_work_rate) FROM Player_Attributes) ORDER BY T1.birthday LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = 'left'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.chanceCreationPassingClass = 'Risky'
SELECT defensive_work_rate FROM Player_Attributes WHERE player_name = "David Wilson" AND preferred_foot = "football"
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Netherlands"
SELECT avg(T1.home_team_goal) FROM MATCH AS T1 JOIN TEAM AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = "Poland" AND T1.season = 2010 AND T1.year = 2011;
SELECT avg(T1.finishing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.football = 'yes' GROUP BY T2.player_name ORDER BY avg(T1.finishing) DESC LIMIT 1;
SELECT player_name FROM Player WHERE height > 180
SELECT count(*) FROM Player WHERE birthday > "1990-01-01"
SELECT count(*) FROM Player WHERE player_name = "Adam" AND weight > 170
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating > 80 AND T2.date BETWEEN '2008' AND '2010';
SELECT max(overall_rating) FROM Player_Attributes WHERE player_name = "Aaron Doran"
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "left"
SELECT DISTINCT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.buildUpPlaySpeedClass = 'fast'
SELECT buildUpPlayPassingClass FROM Team_Attributes WHERE team_fifa_api_id = "CLB"
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE buildUpPlayPassing > 70;
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.date BETWEEN '2010' AND '2015' AND T2.height > 170
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1;
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeed = 31 AND T1.buildUpPlayDribbling = 53 AND T1.buildUpPlayPassing = 32;
SELECT avg(overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Aaron Doran'
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany 1. Bundesliga' AND T1.date LIKE "08-01%" AND T1.date LIKE "10-01%";
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T1.home_team_goal = 10 UNION SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.home_team_goal = 10
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.balance DESC LIMIT 1;
SELECT avg(ball_control) - (SELECT avg(ball_control) FROM Player_Attributes WHERE player_name = "Abdou Diallo") FROM Player_Attributes AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Appindangoye"
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN";
SELECT player_name FROM Player WHERE birthday > '1990-01-01' INTERSECT SELECT player_name FROM Player WHERE birthday > '1990-01-01'
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate != "null";
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Belgium Jupiler League"
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Germany"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Team_Attributes AS T3 ON T2.team_api_id = T3.team_api_id JOIN Team AS T4 ON T3.team_api_id = T4.team_api_id WHERE T1.birthday < 1986 AND T4.defending_teamwidthclass = 'L' AND T3.defenceteamwidthclass = 'R'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best'
SELECT heading_accuracy FROM Player WHERE player_name = "Ariel Borysiuk"
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T1.season = "2008/2009" AND T2.name = "Belgium"
SELECT long_passing FROM Player ORDER BY birthday DESC LIMIT 1;
SELECT count(*) FROM MATCH AS T1 JOIN country_id AS T2 ON T1.country_id = T2.id JOIN country AS T3 ON T3.id = T2.id WHERE T3.name = "Belgium Jupiler League" AND date LIKE "2009-04%";
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2008 AND T2.stage = "1" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < "1986-01-01"
SELECT (overall_rating - 50) / 50 FROM Player_Attributes WHERE player_name = "Ariel Borysiuk" INTERSECT SELECT (overall_rating - 50) / 50 FROM Player_Attributes WHERE player_name = "Paulin Puel"
SELECT avg(buildUpPlaySpeed) FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T2.team_long_name = 'Heart of Midlothian';
SELECT avg(overall_rating) FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Pietro Marino'
SELECT sum(T1.crossing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennox"
SELECT chanceCreationPassing , chanceCreationPassingClass FROM Team_Attributes WHERE chanceCreationPassing = 'Highest'
SELECT preferred_foot FROM Player_Attributes WHERE player_name = "Abdou Diallo"
SELECT max(overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_fifa_api_id WHERE T2.player_name = "Dorlan Pabon"
SELECT avg(T1.goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN country AS T3 ON T3.id = T2.country_id WHERE T3.name = "Italy" AND T2.team_short_name = "Parma";
SELECT name FROM Player WHERE birthday = "2016-06-23" AND overall_rating = 77 ORDER BY height DESC LIMIT 1;
SELECT T1.overall_rating FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Aaron Mooy' AND T1.date = '2016/2/4'
SELECT potential FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_fifa_api_id WHERE T1.player_name = "Francesco Parravicini" AND T2.date = "2010-08-30";
SELECT T1.attacking_work_rate FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = "Francesco Migliore" AND T1.date = "2015-05-01"
SELECT defensive_work_rate FROM Player_Attributes WHERE date = "2013/2/22" AND player_name = "Kevin Berigaud";
SELECT T1.date FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.away_player_11 = T2.player_api_id WHERE T2.cross = (SELECT max(cross) FROM Player_Attributes) AND T1.stage = 'B365H' AND T1.season = 2023;
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN Player AS T2 ON T1.team_api_id = T2.player_api_id WHERE T2.player_name = "Willem II" AND T1.date = "2011/2/22";
SELECT T1.buildUpPlayDribbling FROM Player_Attributes AS T1 JOIN Team_Attributes AS T2 ON T1.player_fifa_api_id = T2.team_api_id WHERE T2.buildUpPlayDribblingClass = "LEI" AND T2.date = "2015/9/10"
SELECT buildUpPlayPassingClass FROM Team_Attributes WHERE team_fifa_api_id = "FC Lorient" AND date = "2010/2/22"
SELECT chanceCreationPassingClass FROM Team_Attributes WHERE chanceCreationPassingClass = "PEC Zwolle" AND date = "2013/9/20"
SELECT chanceCreationCrossingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = "Hull City" AND T1.date = "2010-02-22";
SELECT defenceAggressionClass FROM Team_Attributes WHERE date = "2015/9/10" AND team_fifa_api_id = "Hannover 96";
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = "Marko Arnautovic" AND T1.date BETWEEN "2007/2/22" AND "2016/4/21";
SELECT count(*) FROM Player_Attributes AS P JOIN Player AS T ON P.player_api_id = T.player_api_id WHERE P.date = "2013/7/12" AND T.player_name = "Landon Donovan" AND T.overall_rating > (SELECT overall_rating FROM Player_Attributes AS P JOIN Player AS T ON P.player_api_id = T.player_api_id WHERE P.date = "2013/7/12" AND T.player_name = "Jordan Bowery")
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.weight DESC LIMIT 10;
SELECT player_name FROM Player WHERE birthday LIKE "35%"
SELECT count(*) FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Team AS T3 ON T2.team_fifa_api_id = T3.team_fifa_api_id JOIN Player_Attributes AS T4 ON T4.player_api_id = T3.player_api_id WHERE T4.player_name = "Aaron Lennon" AND T1.stage = "goal"
SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN Team AS T3 ON T2.team_fifa_api_id = T3.team_fifa_api_id WHERE T3.team_short_name = 'Daan Smith' INTERSECT SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN Team AS T3 ON T2.team_fifa_api_id = T3.team_fifa_api_id WHERE T3.team_short_name = 'Filipe Ferreira';
SELECT sum(T1.home_team_goal) FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.home_team_api_id = T2.player_api_id WHERE T2.player_api_id IN (SELECT player_api_id FROM Player WHERE birthday < '2030-04-15')
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate > 0 AND T2.player_fifa_api_id IN (SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate > 0)
SELECT max(T1.player_name) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.finishing = 1;
SELECT T1.player_name FROM Player AS T1 JOIN Country AS T2 ON T1.player_api_id = T2.id WHERE T2.name = "Belgium"
SELECT T1.player_name , T3.name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Country AS T3 ON T1.player_fifa_api_id = T3.id WHERE T2.vision >= 90;
SELECT T1.name FROM Country AS T1 JOIN league AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY avg(T1.weight) DESC LIMIT 1;
SELECT team_long_name FROM TEAM_Attributes WHERE buildUpPlaySpeedClass = "slow";
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE chanceCreationPassing = 'safe'
SELECT avg(T1.height) FROM Player AS T1 JOIN Country AS T2 ON T1.id = T2.id WHERE T2.name = "Italy";
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name ASC LIMIT 3;
SELECT count(*) FROM Player WHERE birthday > "1990-01-01" AND player_name = "Aaron"
SELECT jumping - 23 FROM Player_Attributes
SELECT DISTINCT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'right' ORDER BY T1.potential DESC LIMIT 5;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND crossing = (SELECT max(crossing) FROM Player_Attributes WHERE preferred_foot = 'left' )
SELECT count(*) * 100.0 / count(*) FROM Player_Attributes WHERE strength > 80 AND stamina > 80
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Poland Ekstraklasa"
SELECT T1.goal , T2.goal FROM MATCH AS T1 JOIN MATCH AS T2 ON T1.away_team_api_id = T2.away_team_api_id WHERE T1.date = "2008-09-24" AND T2.stage = "final" AND T1.league_id = "Belgian Jupiler League" AND T2.home_team_api_id = T1.home_team_api_id
SELECT acceleration , agility , sprint_speed FROM Player_Attributes WHERE player_name = "Alexis Blin"
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_fifa_api_id = "ksv cercle brugge";
SELECT count(*) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Italy' AND T1.season = '2015-2016';
SELECT max(T1.goal) FROM MATCH AS T1 JOIN league AS T2 ON T1.league_id = T2.id JOIN country_id AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Netherlands' AND T1.stage = 'home'
SELECT T1.finishing , T1.curve FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.weight DESC LIMIT 1;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2015 AND T2.season = 2016 GROUP BY T1.id ORDER BY count(*) DESC LIMIT 4;
SELECT T2.team_long_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id GROUP BY T1.away_team_api_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) * 100.0 / count(*) FROM Player_Attributes WHERE overall_rating > 70 AND height < 180;
SELECT count(*) , count(*) - count(*) FROM patient WHERE sex = 'M' GROUP BY diagnosis IF diagnosis = 'inpatient' OR diagnosis = 'outpatient'
SELECT count(*) / count(*) FROM patient WHERE birthdate > 1930 AND sex = 'F'
SELECT count(*) , sum(admission) / sum(admission) * 100 FROM patient WHERE birthdate BETWEEN "1930-01-01" AND "1940-12-31"
SELECT count(*) , sum(count(*) ) FROM ( SELECT T1.id , T2.diagnosis FROM patient AS T1 JOIN ( SELECT id , diagnosis FROM examination WHERE diagnosis = 'SLE') AS T2 GROUP BY T1.id HAVING sum(count(*) ) > 100 )
SELECT T1.Date FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 30609
SELECT T2.sex , T2.birthday , T1.examination_date , T3.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 163109
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > 100
SELECT T1.id , T1.birthdate FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PT > 100
SELECT T1.id , T1.sex , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Severe'
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = 1937 AND T2.T-CHO > 140
SELECT T1.id , T1.sex , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.alp < 3.5
SELECT count(*) , % from patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO > 100
SELECT avg(IGG) FROM patient WHERE birthday LIKE "%50%"
SELECT count(*) FROM patient WHERE sex = 'F' AND admission = date('1997', 'month') JOIN examination ON patient.id = examination.patient WHERE examination.id NOT IN (SELECT id FROM examination WHERE diagnosis = 'immediate')
SELECT max(Birthdate - Admission) FROM Patient
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T2.examination_date = '1997' AND T1.sex = 'F'
SELECT max(Birthdate) - min(Birthdate) FROM patient WHERE diagnosis = 'Normal triglyceride'
SELECT T1.Symptoms , T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID ORDER BY T2.Birthdate LIMIT 1
SELECT avg(T2.TBIL) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date LIKE "%1998%" AND T2.sex = "M"
SELECT T2.TBIL , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthdate = (SELECT birthdate FROM patient ORDER BY birthdate LIMIT 1)
SELECT count(DISTINCT sex) , count(DISTINCT sex) FROM patient WHERE id IN (SELECT id FROM examination WHERE diagnosis = 'Uric Acid Abnormal' )
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT id FROM examination WHERE examinationdate - firstdate < 12 )
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday < 1990 AND T2.birthday <= 1993
SELECT count(*) FROM patient WHERE sex = 'M' INTERSECT SELECT count(*) FROM laboratory WHERE T-BIL > 100
SELECT T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date >= "01/01/1985" AND T1.date <= "12/31/1995" JOIN laboratory AS T3 ON T2.id = T3.id WHERE T3.id = T1.id GROUP BY T2.diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.age) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE "1999%" AND T2.examination_date LIKE "10/1991%"
SELECT T1.birthday , T3.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.id IN (SELECT id FROM laboratory ORDER BY T-LABORATORY.hgb DESC LIMIT 1)
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.date = '1996-12-02' AND T2.id = 3605340
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1995-09-04" AND T2.id = 2927464 AND T3.diagnosis = "Normal"
SELECT T2.sex FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "AORTITIS"
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T1.date = "1994/2/19" INTERSECT SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T1.date = "1994/2/19"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = "1992-06-12" AND T1.glu = 9
SELECT T1.Birthdate FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.date = "1991-10-21" AND T2.U-PRO = 8.4
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.admission = '1991/6/13' AND T1.diagnosis = 'SJS' JOIN laboratory AS T3 ON T3.id = T1.id WHERE T3.date = '1995'
SELECT T1.Admission FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "SLE" AND T1.birthday = 1997/1/27
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.birthday = "1959/3/1" AND T1.examination_date = "1993/9/27"
SELECT avg(T2.T-CHO) - avg(T1.T-CHO) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1959-02-18" AND T2.date LIKE "1981-11%" INTERSECT SELECT avg(T2.T-CHO) - avg(T1.T-CHO) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1959-02-18" AND T2.date LIKE "1981-12%"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Behcet's" AND T2.examination_date BETWEEN "01/01/197" AND "12/31/1997"
SELECT T2.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.examination_date BETWEEN '1987/7/6' AND '1996/1/31' AND T2.gpt > 30 AND T2.alb < 4;
SELECT id FROM patient WHERE sex = 'F' AND birthday = 1964 ORDER BY admission
SELECT count(*) FROM examination WHERE thrombosis = "2" AND ana_pattern = "S" AND (igm - 20% * (SELECT avg(igm) FROM examination)) > 0
SELECT count(*) * 100 / count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO > 0 AND T2.UA < 0.5
SELECT count(*) * 100 / count(*) FROM patient WHERE first_date = 1981 AND sex = 'M' INTERSECT SELECT count(*) * 100 / count(*) FROM patient WHERE first_date = 1981 AND diagnosis = "BEHCET"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE "1991-10-%" AND T1.sex = "F" AND T2.T-BIL < 100
SELECT count(*) FROM patient WHERE sex = 'F' AND birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM examination WHERE ana = 'ANA Pattern'
SELECT T1.sex FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T2.id = T3.id WHERE T1.diagnosis = "PSS" AND T3.crp = 2 AND T3.tg = 123 AND T3.pte = 1
SELECT avg(LAB90) FROM patient WHERE sex = 'F' AND diagnosis = 'SLE' AND PLT > 400
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "SLE" GROUP BY T1.Symptoms ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.date , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473
SELECT count(*) FROM patient WHERE diagnosis = 'APS' AND sex = 'F'
{"sql": "SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = '1997' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination
SELECT count(*) / count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.diagnosis = 'Thrombocytopenia' AND T2.diagnosis = 'SLE'
SELECT count(*) , sex FROM patient WHERE birth = 1980 AND diagnosis = "RA" GROUP BY sex HAVING count(*) > 0
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.examination_date BETWEEN 1995 AND 1997 AND T1.diagnosis = "Behcet disease" AND T1.admission != T2.admission
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND WBC < 3.5
SELECT T2.TAT - T1.Admission FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 821298 AND T2.diagnosis = "EVALUATION"
SELECT 1 FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO < 1.9 AND T2.U-PRO > 0.5
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473 AND glu > 0
SELECT T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = 1994 AND T2.gut <= 100
SELECT id FROM patient WHERE sex = 'M' INTERSECT SELECT id FROM laboratory WHERE gpt = 'ALT glutamic pylvic transaminase' AND (TLH > 0)
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis != "normal" ORDER BY T2.birthday
SELECT avg(LDH) FROM Laboratory WHERE LDH < 100 AND LDH > 0
SELECT T1.id , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > 300 AND LDH < 100
SELECT T1.id , T1.Admission , T2.Admission FROM patient AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.alp < 150 AND T2.admission = 'inpatient'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1982-04-01" AND T2.alp < 15
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TU PRO BELOW THE LOWER RANGE OF THE NORMAL INDEX
SELECT T1.id , T1.TP - 109 FROM LABORATORY AS T1 JOIN PATIENT AS T2 ON T1.id = T2.id WHERE T2.sex = "F" AND T1.TP > 109
SELECT * FROM patient WHERE sex = 'M' AND alb > 10 AND birthday = (SELECT max(birthday) FROM patient WHERE sex = 'M' AND alb > 10) ORDER BY birthday DESC
SELECT COUNT(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1982" AND ALB < 100
SELECT % of the female patients whose UA is greater than the normal range FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F"
SELECT avg(T2.U-PRO) FROM EXAMINATION AS T1 JOIN LABORATORY AS T2 ON T1.ID = T2.ID WHERE T2.U-PRO = "Normal"
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE UN >= 0.5 AND UN < 1.5
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'RA' INTERSECT SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'UN'
SELECT count(*) FROM patient WHERE sex = 'M' INTERSECT SELECT count(*) FROM patient WHERE (SELECT cre FROM laboratory WHERE cre = "normal")
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine > 0 OR count(*) FROM patient WHERE sex = 'F' AND creatinine < 0
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY sum(T2.T-BIL) DESC LIMIT 1
SELECT count(*) , sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id GROUP BY T1.sex HAVING T2.T-BIL < 150
SELECT T1.id , T3.T-CHO FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id JOIN patient AS T3 ON T1.id = T3.id WHERE T1.birthday = (SELECT max(birthday) FROM patient) ORDER BY T3.T-CHO DESC LIMIT 1
SELECT avg(T1.Birthdate) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T1.sex = "M" AND T3.Diagnosis = "High Cholesterol"
SELECT T1.id , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.TG > 100
SELECT count(*) FROM patient WHERE TG > (100 - 300) AND birthday > 50
SELECT DISTINCT id FROM examination WHERE diagnosis = "outpatient" AND CPK < 150
SELECT count(*) FROM patient WHERE birthday BETWEEN 1936 AND 1956 AND sex = 'M' AND CPK > (SELECT avg(cpk) FROM laboratory WHERE diagnosis = 'Normal')
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu != "normal" INTERSECT SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.tcho != "normal"
SELECT T2.id , T1.glu FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date LIKE "1991%"
SELECT T1.id , T1.sex , T1.birthday , T1.id , (SELECT avg(T2.first_date) FROM patient AS T2 JOIN laboratory AS T1 ON T1.id = T2.id WHERE T1.wbc > 1000 GROUP BY T1.sex) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY avg(T2.first_date) ASC
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.aCL IgG = (SELECT T3.aCL IgG FROM examination AS T3 WHERE T3.RBC < 40)
SELECT T1.sex , T1.birthday , T1.admission , T2.RBC , T1.admission FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T1.birthday >= "1950-04-15" AND T2.RBC > 14000 IFNULL(T1.admission , "No")
SELECT DISTINCT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HGB < 120
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = 'SLE' AND T1.lambd = 'normal')
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING count(*) >= 2 AND T2.diagnosis = 'Hematoclit'
SELECT avg(HCT) FROM EXAMINATION WHERE DATE = "1991" AND HCT < (SELECT avg(HCT) FROM EXAMINATION WHERE DATE = "1991")
SELECT count(*) , count(*) FROM patient WHERE PLT < 100 AS lower , count(*) , count(*) FROM patient WHERE PLT > 100 AS higher
SELECT DISTINCT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = 1984 AND T1.age < 50 AND T2.plt = "normal"
SELECT count(*) , sex , sum(PT) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > 55 GROUP BY sex HAVING sum(PT) > 100
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.first_date > 1992 AND T2.PT = "Normal"
SELECT count(*) FROM examination WHERE examination_date > '1997-01-01' AND PT = 'inactivated partial prothrombin time'
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT id FROM examination WHERE PTT = 'activated' AND diagnosis = 'thrombosis' )
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND WBC = "Normal" EXCEPT SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.FG = "Abnormal"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > "1980-01-01" AND T2.FG = "positive"
SELECT DISTINCT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T1.id WHERE T3.U-PRO > 100
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T1.id WHERE T1.diagnosis = 'SLE' AND T3.U-PRO = 'Normal'
SELECT count(*) FROM patient WHERE IGG > (SELECT avg(IGG) FROM patient)
SELECT count(*) FROM examination WHERE Diagnosis = "Normal IgG" INTERSECT SELECT count(*) FROM examination WHERE Symptoms = "Yes"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.idpatient = T2.id WHERE T1.aCLigA <= 100 AND diagnosis != "Normal" ORDER BY T1.aCLigA DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.birthday > 19900101 AND T2.diagnosis = "Normal IgA"
SELECT T1.id , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.IGM = 'Abnormal' GROUP BY T2.diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination) AND CRP = 'positive'
SELECT count(*) FROM patient WHERE id NOT IN (SELECT patient FROM patient WHERE creatinine > 0 AND age != 70)
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RA = "Normal" INTERSECT SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RF > 0
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday > "1985-01-01" INTERSECT SELECT T1.diagnosis FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday > "1985-01-01" AND T1.RF = "RHam"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RF = "Negative" AND T1.birthday > "1960-01-01"
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT id FROM examination WHERE thrombosis = 'yes' ) AND diagnosis = 'normal'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.ANA Pattern = "P" AND T3.C3 = "Normal"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HCT != "Normal" ORDER BY T2.IGG DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'blood clot in veins' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'normal complement 4')
SELECT count(*) FROM patient WHERE admission = 'yes' AND diagnosis = 'normal'
SELECT T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.RNP > 0
SELECT count(*) FROM patient WHERE diagnosis = 'Normal Anti-SM' EXCEPT SELECT count(*) FROM patient WHERE diagnosis = 'Thrombosis'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SM = "Abnormal" ORDER BY T1.first_date LIMIT 3
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date > '1997-01-01' AND T1.diagnosis = 'Normal Anti-scl70'
SELECT count(*) FROM patient WHERE sex = 'F' AND diagnosis = 'Normal anti-scl70' AND symptoms = 'none'
SELECT count(*) FROM patient WHERE first date < 2000 AND diagnosis = 'Normal Anti-SSA'
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Abnormal Anti-SSA' ORDER BY T1.first_date LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' AND T1.diagnosis = 'Normal Anti-SSB'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.symptoms != "Normal" AND T2.symptoms != "No symptoms"
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal" AND T2.diagnosis = "Normal") AND T2.sex = "M";
SELECT T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.DNA = 'abnormal'
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT id FROM examination ) AND DNA = "normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.IGG = 'Normal' AND T2.diagnosis = 'Hospital'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" AND T1.GLU < 100
SELECT count(*) FROM patient WHERE sex = "M" AND GLU > 0.06 AND GLU < 0.08
SELECT max(Birthdate) FROM patient WHERE Diagnosis = "Glutamic oxaloacetic transaminase"
SELECT T1.Birthdate FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU < 100 AND T2.Diagnosis = "Normal" ORDER BY T2.GLU DESC LIMIT 3
SELECT count(*) FROM patient WHERE sex = 'M' AND first date = (SELECT min(first date) FROM patient WHERE sex = 'M' AND GLU = "normal");
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = "Male" AND T1.ldh <= 100 AND T1.ldh >= 12 AND T2.birthday = (SELECT max(birthdate) FROM patient)
SELECT max(T2.Date) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "Lactate Dehydrogenase Abnormal"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp = 'abnormal' AND T1.admission = 'yes'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp = "normal"
SELECT T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T2.id = T3.id WHERE sum(T3.U-PRO) < 1000000
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = "SJS" AND (SELECT avg(T4.U-PRO) FROM LABORATORY AS T4 JOIN patient AS T5 ON T4.id = T5.id WHERE T5.sex = "M") = 0
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id WHERE T3.alb <= 40 AND T3.diagnosis = 'Normal'
SELECT count(*) FROM patient WHERE sex = 'M' AND (SELECT max(T1) FROM laboratory WHERE ID = (SELECT min(ID) FROM patient WHERE sex = 'M') INTERSECT SELECT max(T1) FROM laboratory WHERE ID = (SELECT min(ID) FROM patient WHERE sex = 'F') )
SELECT IGM FROM Laboratory WHERE ID IN (SELECT T1.ID FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.sex = "F" AND T3.ua < 50) ORDER BY IGM DESC LIMIT 1
SELECT max(IIGG) FROM LABORATORY WHERE CRE = "normal"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CRE = "Normal" INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.IGG = (SELECT max(IGG) FROM laboratory)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T3.T-BIL > 100 INTERSECT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T3.ANA_PATTERN = 'Positive'
SELECT IGG FROM Laboratory WHERE T-BIL < 1500 AND diagnosis = 'Normal' ORDER BY IGG DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-CHO > 140 AND T2.PT < 0
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.ana_pattern = 'P' AND T3.cholesterol >= 140
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'normal' INTERSECT SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'other')
SELECT T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T2.id = T3.id WHERE T3.TG < 150 AND T3.TG >= 100
SELECT id FROM patient EXCEPT SELECT id FROM examination WHERE CPK = "ab"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.cpk > 0 AND T2.PT > 0
SELECT T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "blood glucose is abnormal" ORDER BY T1.birthday DESC LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = 'Normal' EXCEPT SELECT count(*) FROM patient WHERE diagnosis = 'Thrombosis'
SELECT count(*) FROM patient JOIN laboratory ON patient.id = laboratory.id WHERE WBC = "normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' AND T3.wbc = 'normal'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC > 140 AND T1.admission = 'out clinic'
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM examination WHERE PLT = "Normal" INTERSECT SELECT id FROM examination WHERE Symptoms != "null")
SELECT T2.PLT FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.diagnosis = "MCTD" AND T2.PLT < 150
SELECT avg(U-PRO) FROM patient WHERE sex = 'M' AND PT = 'Normal'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Severe thrombosis' AND T1.PT = 'Normal'
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Angela" AND T2.last_name = "Sanders";
SELECT count(*) FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id WHERE T1.department = 'College of Engineering'
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Art and Design'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T2.phone FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer" AND T1.t_shirt_size = "medium"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Vice President'
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclean";
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Sacha" AND T3.last_name = "Harrison" AND T2.event_date = "2019-04-25" AND T1.position = "Student Club"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.member_id IN (SELECT T1.member_id FROM attendance AS T1 JOIN major AS T3 ON T1.link_to_member = T3.major_id WHERE T3.major_name = 'Student_Club') AND T2.type = 'meeting' GROUP BY T1.member_id HAVING count(*) > 10;
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.attended_members > 20 EXCEPT SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.type = 'Fundraiser'
SELECT avg(link_to_event) FROM attendance WHERE event_date LIKE "2020%"
SELECT t1.major_name FROM major AS t1 JOIN budget AS t2 ON t1.major_id = t2.link_to_event WHERE t2.event_status = 'Support' INTERSECT SELECT t3.major_name FROM major AS t3 JOIN budget AS t4 ON t3.major_id = t4.link_to_event WHERE t4.event_status = 'Club' GROUP BY t3.major_id ORDER BY sum(t4.spent) DESC LIMIT 1
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering" AND T2.position = "Student_Club"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.event_id = (SELECT event_id FROM event WHERE event_name = "Laugh Out Loud")
SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Law" AND T1.major_name = "Constitutional Studies";
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey";
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Tyler" AND T2.last_name = "Hewitt"
SELECT T1.amount FROM budget AS T1 JOIN income AS T2 ON T1.link_to_event = T2.link_to_member WHERE T2.position = "Vice President";
SELECT T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = "Student_Club" AND T1.event_date = "2023-09-15"
SELECT T3.city , T3.state FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN zip_code AS T3 ON T2.zip = T3.zip_code WHERE T1.major_name = "Student_Club" AND T2.position = "President"
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = "Illinois"
SELECT T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = "Student_Club" AND T1.date_received = "2023-09-15";
SELECT department FROM major WHERE major_id = (SELECT major_id FROM member WHERE first_name = "Pierce" AND last_name = "and" ) INTERSECT SELECT department FROM major WHERE major_id = (SELECT major_id FROM member WHERE first_name = "Guidi" AND last_name = "lee")
SELECT sum(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Speaker"
SELECT * FROM expense WHERE approved = 'Yes' AND expense_date LIKE "2019-10-08"
SELECT avg(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date LIKE "9/%" OR T1.event_date LIKE "10/%" AND T2.category = "Expense" AND T2.major_name = "Elijah Allen"
SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.category = 'Student_Club' AND T1.year = 2019 INTERSECT SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.category = 'Student_Club' AND T1.year = 2020
SELECT LOCATION FROM event WHERE event_name = "Spring Budget Review"
SELECT T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.category = "Budget" AND T2.expense_date = "2019/9/4" AND T2.expense_description = "Posters";
SELECT remaining FROM budget WHERE category = "Food" ORDER BY amount DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019-09-14"
SELECT count(*) FROM major WHERE department = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs";
SELECT county FROM zip_code WHERE city = "Adela O'Gallagher"
SELECT count(*) FROM budget WHERE event_id IN (SELECT event_id FROM budget WHERE event_date LIKE "%November%" ) AND amount > (SELECT max(amount) FROM budget WHERE event_date LIKE "%November%" )
SELECT sum(T2.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "September Speaker"
SELECT status FROM event WHERE event_date = "2019-08-20" AND TYPE = "Post Cards, Posters"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Brent" AND T2.last_name = "Thomason";
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "medium"
SELECT TYPE FROM zip_code WHERE zip = "(Christof) Nielson"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'Vice President'
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison";
SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'President'
SELECT T1.event_date FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.member_id WHERE T2.first_name = "Connor" AND T2.last_name = "Hilton";
SELECT first_name , last_name FROM member WHERE POSITION = 'paid'
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T1.category = "Advertisement" AND T1.amount > T1.amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T1.category = "Advertisement" AND T1.amount > T1.amount
SELECT spent / amount FROM budget WHERE event_id IN (SELECT event_id FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date = "November") UNION SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date = "November" AND T1.category = "Parking"
SELECT sum(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia"
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT T1.zip FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Amy" AND T2.last_name = "Firth";
SELECT T1.remaining FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.amount = (SELECT min(amount) FROM budget)
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "October Meeting"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major GROUP BY T1.college ORDER BY count(*) DESC LIMIT 1
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.amount DESC LIMIT 1
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Vice President'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer";
SELECT date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Casey" AND T2.last_name = "Mason";
SELECT count(*) FROM zip_code WHERE state = 'Maryland'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "School of Applied Sciences, Technology and Education";
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'closed' GROUP BY T1.event_id ORDER BY T2.spent / (T2.amount) DESC LIMIT 1
SELECT count(*) FROM member WHERE POSITION = 'president'
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_date LIKE "2020%"
SELECT sum(T2.spent) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = "food"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.first_name , T2.last_name HAVING count(*) > 7
SELECT T2.member_id FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = "Interior Design" JOIN attendance AS T3 ON T2.member_id = T3.member_id WHERE T3.event_id = 1
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T1.state = "South Carolina" AND T1.city = "Georgetown"
SELECT sum(T1.amount) FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour";
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE amount > 40
SELECT sum(t3.cost) FROM budget AS t1 JOIN expense AS t2 ON t1.budget_id = t2.budget_id JOIN event AS t3 ON t3.event_id = t2.link_to_event WHERE t3.event_name = 'Yearly Kickoff'
SELECT T2.first_name , T2.last_name FROM budget AS T1 JOIN member AS T2 ON T1.link_to_event = T2.member_id WHERE T1.category = "Yearly Kickoff" AND T1.event_status = "Confirmed";
SELECT T1.first_name , T1.last_name , T1.position , T2.source FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.position ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.budget_id ORDER BY T2.amount LIMIT 1
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date = '2023-01-01' AND T2.type = 'Yearly Kickoff'
SELECT count(*) , department FROM major WHERE department = 'Finance' INTERSECT SELECT count(*) , department FROM major WHERE department = 'Physics'
SELECT source FROM income WHERE date_received LIKE "9/%" AND amount <= (SELECT max(amount) FROM income WHERE date_received LIKE "9/%" )
{"sql": "SELECT first_name , last_name , email FROM member WHERE POSITION = 'Student_Club\'s Secretary'"}
SELECT count(*) FROM major AS T1 JOIN student_club AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Community Theater" AND T1.date = "2019"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi"
SELECT avg(budget.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Student_Club' AND T2.event_date = (SELECT event_date FROM event ORDER BY event_date LIMIT 1)
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent DESC LIMIT 1
SELECT T1.remaining FROM budget AS T1 JOIN link_to_event AS T2 ON T1.link_to_event = T2.event_id JOIN attendance AS T3 ON T3.link_to_event = T2.event_id AND T3.link_to_member = T2.event_id WHERE T2.event_name = "Women's Soccer" AND T3.person.first_name = "Maya" AND T3.person.last_name = "Mclean";
SELECT count(*) , event_name FROM event WHERE event_date = '2019' AND TYPE = 'Event' AND event_name IN (SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN major AS T3 ON T3.major_id = T2.member WHERE T3.major_name = 'Student Club' AND T1.type = 'Event') AND T1.type = 'Event' AND T1.event_name = 'Community Service' GROUP BY T1.event_name
SELECT T1.amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "September Speaker" AND T1.category = "Expense";
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = 'closed' AND T2.amount > (SELECT max(T3.amount) FROM budget AS T3 ON T3.link_to_event = T1.event_id WHERE T3.event_status = 'closed' )
SELECT T1.type , sum(T2.cost) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Meeting' AND T2.event_status = 'approved' GROUP BY T1.type
SELECT category FROM budget WHERE event_id IN (SELECT event_id FROM event WHERE event_name = 'April Speaker') ORDER BY amount ASC
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(T2.spent) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Parking'
SELECT sum(T2.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_date = '08/20/2019'
SELECT T2.first_name , T2.last_name , sum(T1.cost) FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_id = "rec4BLdZHS2Blfp4v" GROUP BY T1.expense_id
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison";
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = "X-Large"
SELECT zip_code FROM member WHERE sum(T1.expense) < 50
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Phil" AND T2.last_name = "Cullen"
SELECT T1.position FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.department = 'Business'
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "Medium"
SELECT T1.type FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT TYPE FROM event WHERE event_date = "2020-03-24T12:00:00"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = "Vice President"
SELECT count(*) * 100.0 / (SELECT count(*) FROM major WHERE major_name = 'Business' )
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences'
SELECT T2.last_name , T1.department , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215" AND T1.spent = 0
SELECT T3.city , T3.state FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN zip_code AS T3 ON T2.zip = T3.zip_code
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Vice President" AND T2.location = "900 E. Washington St."
SELECT T2.last_name , T2.position FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T3.event_id = T1.link_to_event WHERE T3.event_date = '09/10/2019' AND T1.type = 'buy'
{"sql": "SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women\'s Soccer'"}
SELECT count(*) , sum(T1.amount) FROM budget AS T1 JOIN income AS T2 ON T1.link_to_event = T2.link_to_member WHERE T1.category = 'Student_Club' AND T1.amount = 50 AND T1.t_shirt_size = "medium" GROUP BY T1.t_shirt_size
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.zip_code = (SELECT T3.zip_code FROM zip_code AS T3)
SELECT zip_code FROM zip_code WHERE state = 'Puerto Rico' AND county = 'San Juan Municipio'
SELECT event_name FROM event WHERE status = 'closed' AND event_date BETWEEN '3/15/2019' AND '3/20/2020' AND TYPE = 'game'
SELECT T1.event_id , T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'member' AND T1.event_date > '2023-04-01' AND T2.amount > 50
SELECT T2.first_name , T2.last_name , T1.link_to_event FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.date_approved BETWEEN '01-10' AND '11-19'
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Katy" AND T1.major_name = "rec1N0upiVLy5esTO"
SELECT T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "College of Agriculture and Applied Sciences"
SELECT T.member.email FROM member AS T JOIN income AS S ON T.member_id = S.link_to_member WHERE S.date_received BETWEEN "09-10-2019" AND "11-19-2019" AND T.amount > 20
SELECT count(*) FROM major AS T1 JOIN department AS T2 ON T1.department = T2.department WHERE T1.major_name = 'College of Education & Human Services'
SELECT count(*) * 100.0 / (SELECT sum(spent) FROM budget) FROM budget WHERE event_status = 'over'
SELECT event_id , LOCATION , status FROM event WHERE event_date BETWEEN "2019-11-01" AND "2020-03-01"
SELECT T1.expense_description FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.spent > 50
SELECT first_name , last_name FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) , TYPE FROM zip_code WHERE TYPE = "PO box"
SELECT T2.event_name , T2.location FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING sum(T1.spent) < 200000
SELECT T1.event_name , T1.event_date FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event JOIN expense AS T3 ON T2.budget_id = T3.budget_id WHERE T3.cost BETWEEN 50 AND 100 AND T2.category = 'Pizza'
SELECT T1.first_name , T1.last_name , T1.link_to_major , T3.major_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member JOIN major AS T3 ON T1.link_to_major = T3.major_id WHERE T2.cost > 100
SELECT T3.city , T3.state FROM income AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id JOIN event AS T3 ON T3.event_id = T1.link_to_event GROUP BY T3.city HAVING sum(T1.amount) > 40;
SELECT T2.first_name , T2.last_name FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id ORDER BY sum(T1.cost) DESC LIMIT 1
SELECT avg(amount) FROM member EXCEPT SELECT avg(amount) FROM major WHERE position = 'member'
SELECT event_name FROM event WHERE TYPE = 'event' GROUP BY event_name HAVING avg(cost) < (SELECT avg(cost) FROM expense)
{"sql": "SELECT count(*) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = \"Major\" AND T2.expense_description LIKE \"%meeting%\" AND T2.approved = 1 AND T1.remaining != \"remaining\" AND T1.spent != \"spent\" AND T1.amount != \"remaining\" AND T1.amount != \"spent\" AND T1.amount != \"total\" AND T1.amount != \"remaining\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"total\" AND T1.amount != \"
SELECT category FROM budget WHERE category = 'water' OR category = 'chips' OR category = 'cookies' ORDER BY amount DESC LIMIT 1
SELECT first_name , last_name FROM member WHERE POSITION = 'President' ORDER BY spent DESC LIMIT 5
SELECT T2.first_name , T2.last_name , T2.phone FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member HAVING avg(T1.cost) > (SELECT avg(T1.cost) FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member)
SELECT COUNT(*) - COUNT(*) FROM zip_code WHERE state = "New Jersey" INTERSECT SELECT COUNT(*) - COUNT(*) FROM zip_code WHERE state = "Vermont"
SELECT T_major.department , T_major.major_name FROM major AS T_major JOIN member AS T_member ON T_major.major_id = T_member.member_id WHERE T_member.first_name = "Garrett" AND T_member.last_name = "Gerke"
SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = 'water' INTERSECT SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = 'veggie tray' INTERSECT SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = 'supplies'
SELECT T.member_id , T.last_name FROM member AS T JOIN major AS S ON T.link_to_major = S.major_id WHERE S.major_name = 'Elementary Education'
SELECT category , amount FROM budget WHERE event_id = (SELECT event_id FROM event WHERE event_name = 'January Speaker')
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE category = 'food'
SELECT T1.first_name , T1.last_name , T1.amount FROM income AS T1 JOIN major AS T2 ON T1.link_to_member = T2.major_id WHERE T1.date_received = "9/9/2019"
SELECT T1.category FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT T1.first_name , T1.last_name , T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Secretary'
SELECT T2.event_name , T1.spent FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Speaker'
SELECT T2.zip FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Garrett" AND T1.last_name = "Gerke"
SELECT T.member_id , T.first_name , T.last_name , T.position FROM member AS T JOIN zip_code AS S ON T.zip = S.zip_code WHERE S.city = "Lincolnville" AND S.state = "NC" AND S.zip_code = "28092";
SELECT count(*) FROM gasstations WHERE country = "CZE" AND price = "Premium"
SELECT sum(amount) / sum(amount) , currency FROM customers WHERE currency = 'EUR' INTERSECT SELECT sum(amount) / sum(amount) , currency FROM customers WHERE currency = 'CZK'
SELECT T2.customerid FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date LIKE "2012/%" ORDER BY consumption LIMIT 1
SELECT avg(Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.segment = 'SME' AND T1.Date LIKE "2013/%"
SELECT T1.customerid , T2.consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "CZK" AND T2.date LIKE "2011%" ORDER BY T2.consumption DESC LIMIT 1
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.Consumption < 30000 AND T2.segment = "KAM"
SELECT max(T2.Consumption) - min(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" INTERSECT SELECT max(T2.Consumption) - min(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "EUR"
SELECT T2.Date , T1.Date FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.Date = T2.Date JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID WHERE T3.currency = "EUR" GROUP BY T2.Date ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid GROUP BY T1.segment ORDER BY sum(T2 Consumption) LIMIT 1
SELECT T2.Date , T1.Consumption FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.Date = T2.Date WHERE T1.currency = "CZK" GROUP BY T1.Date ORDER BY SUM(consumption) DESC LIMIT 1
SELECT T2.Date FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = 'SME' AND T2.Date LIKE "2013%" ORDER BY T2.Consumption DESC LIMIT 1
SELECT avg(Consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" AND T2.Segment = "SME" INTERSECT SELECT avg(Consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" AND T2.Segment = "LAM" INTERSECT SELECT avg(Consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" AND T2.Segment = "KAM" INTERSECT SELECT avg(Consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" AND T2.Segment = "SME" INTERSECT SELECT avg(Consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" AND T2.Segment = "LAM" INTERSECT SELECT avg(Consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" AND T2.Segment = "KAM" AND T2.Segment != "SME" AND T2.Segment != "LAM" AND T2.Segment != "KAM";
SELECT t1.segment , max(t2.consumption) , min(t2.consumption) FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t1.currency = 'EUR' AND t1.date <= "2013-04-01" AND t1.date >= "2012-04-01" GROUP BY t1.segment
SELECT sum(Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.segment = 'August' OR T2.segment = 'November 2013' AND T1.Date < 2013 AND T1.Date > 2012
SELECT count(*) - count(*) FROM gasstations WHERE country = 'Czech Republic' DIFFER FROM gasstations WHERE country = 'Slovakia'
SELECT consumption - 5 FROM yearmonth WHERE date = '2013-04' AND customerid = 7
SELECT count(*) - count(*) FROM customers WHERE currency = 'CZK' - count(*) FROM customers WHERE currency = 'EUR'
SELECT T2.customerid , T1.description FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "Euro" AND T2.month = "10" AND T2.year = 2013 ORDER BY T2.consumption DESC LIMIT 1
SELECT T2.ConsumerID , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.CustomerID ORDER BY Consumption DESC LIMIT 1
SELECT sum(Consumption) FROM yearmonth WHERE Date = "2013-05" AND customerID = "KAM"
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.Consumption > 46.73 AND T2.Segment = "LAM"
SELECT country , count(*) FROM gasstations GROUP BY country HAVING sum(price) >= 1000
SELECT sum(amount) * 100.0 / sum(amount + price) FROM transactions_1k AS T1 JOIN products AS T2 ON T1.productid = T2.productid WHERE T2.description = 'Electricity' AND T1.customerid IN (SELECT customerid FROM customers WHERE currency = 'EUR') AND T1.date LIKE "2023%"
SELECT %p FROM yearmonth WHERE date LIKE "2012/%" AND consumption > 528.3
SELECT count(*) , country FROM gasstations WHERE country = 'Slovakian' AND segment = 'premium'
SELECT customerid FROM yearmonth WHERE date = '2013-09' GROUP BY customerid ORDER BY consumption DESC LIMIT 1
SELECT T2.segment FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2013-09" GROUP BY T2.segment ORDER BY sum(T1.consumption) LIMIT 1
SELECT T1.segment , T2.consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date LIKE "2012%" ORDER BY T2.consumption ASC LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE DATE LIKE "2012/%"
SELECT max(T2.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'Euro'
SELECT T2.Description FROM yearmonth AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Date = "2013-09"
SELECT T2.country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid JOIN ymtp1k AS T3 ON T1.date = T3.date WHERE T3.year = 2013 AND T3.month = '06'
SELECT T2.chainid FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.price = 0x01
SELECT T2.Description FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Amount > 0 AND T1.Currency = "EUR"
SELECT avg(price) FROM transactions_1k WHERE date LIKE "2012-01-%"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "euro" AND T2.Consumption > 1000
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID WHERE T2.GasStationID IN (SELECT GasStationID FROM gasstations WHERE Country = "Czech Republic")
SELECT T2.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = 11;
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.country = "Czech Republic" AND T1.price > 1000
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.country = "Czech Republic" AND T1.date > "2012-01-01"
SELECT avg(T1.price) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.country = "Czech Republic"
SELECT avg(T1.Amount) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "euro"
SELECT T1.Date FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/8/25" ORDER BY T2.Amount DESC LIMIT 1
SELECT T3.country FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.date = T2.date JOIN gasstations AS T3 ON T3.gasstationid = T1.gasstationid WHERE T1.date LIKE "2012/08/25" AND T2.segment = "1" AND T3.segment = "1" ORDER BY T1.price LIMIT 1
SELECT T1.Currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-24 16:25:00'
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2012/8/23 21:20:00"
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/08/26" AND TIME LIKE "Morning" AND amount > 0 AND price = 100
SELECT segment FROM customers ORDER BY date LIMIT 1
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = "2012/8/24 12:42:00"
SELECT ProductID FROM transactions_1k WHERE Date = "2012/08/23" AND TIME LIKE "21:20:00"
SELECT T1.Date , T1.Amount , T1.Date FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/01/24" AND T2.Amount = 124.05
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/8/26" AND TIME LIKE "8:%-9:%" AND country = "CZE"
SELECT T2.Currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2013-%" AND T1.Consumption = 214582.17
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.cardid = "667467"
SELECT T1.Country FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID JOIN yearmonth AS T3 ON T2.Date = T3.Date WHERE T3.Date LIKE "2012/8/24" AND T2.Amount = 548.4
SELECT count(*) FROM customers WHERE date = "2012/8/25" AND currency = "EUR"
SELECT consumption - consumption_2012 / consumption_2012 FROM yearmonth WHERE date = "2012/8/25"
SELECT GasStationID FROM transactions_1k GROUP BY GasStationID ORDER BY sum(amount) DESC LIMIT 1
SELECT count(*) , sum(price) , sum(segment) FROM products WHERE description LIKE "%premium%" GROUP BY sum(segment) HAVING country = "SVK"
SELECT sum(T1.Amount) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID WHERE T3.CustomerID = 38508 AND T1.Date LIKE "01/02/%" AND T2.Segment = "Gas"
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID ORDER BY Price DESC LIMIT 5
SELECT T2.Currency , avg(T1.Price) , T2.CustomerID FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T2.CustomerID ORDER BY avg(T1.Price) DESC LIMIT 1
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.productid = 2 ORDER BY T2.price DESC LIMIT 1
SELECT T1.Consumption FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.ProductID = 5 AND T2.Date LIKE "08/2012%" AND T2.Price > 29.00
