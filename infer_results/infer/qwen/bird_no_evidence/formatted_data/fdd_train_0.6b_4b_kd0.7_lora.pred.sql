SELECT max(eligible free rate) FROM frpm WHERE county_name = "Alameda County"
{"sql": "SELECT min(T1.FRPM Count(Ages-5-17)) , min(T1.FRPM Count(Ages-5-17)) , min(T1.FRPM Count(Ages-5-17)) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.T1.CDSCode = \"C-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1
SELECT zip FROM schools WHERE county = "Fono" AND charter = "Y"
SELECT T1.StreetAbr FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCcode = T2.CDSCcode GROUP BY T1.StreetAbr ORDER BY T2.FRPM Count (T2.FRPM) DESC LIMIT 1
SELECT phone FROM schools WHERE opendate > "2000-01-01"
SELECT count(*) FROM schools WHERE school_type = 'VIRTUAL' AND avg_scrmath > 400
SELECT T1.school , T1.Magnet FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.NumTstTakr > 500 GROUP BY T1.school HAVING T1.Magnet = 'Magnet'
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AverageScrRead > 1500 GROUP BY T1.CDSCode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM frpm WHERE school_code = (SELECT school_code FROM schools GROUP BY school_code ORDER BY frpm_count (K-12) DESC LIMIT 1)
SELECT charter, charternum FROM charter_funding WHERE charter_type = 'Yes' AND avg_scrmath > 560
SELECT count(*) , T1.Tname , T2.Ages FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.AverageScrRead = (SELECT avg(SATscore) FROM satscores AS T3 WHERE T3.rtype = 'Reading' AND T3.Ages BETWEEN 5 AND 17)
SELECT school_code FROM schools WHERE enroll12 > 500
SELECT max(Egitable Free Rate) , T1.AdmFName1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Egitable Free Rate > 0.3 GROUP BY T1.AdmFName1 HAVING T1.AdmAge BETWEEN 5 AND 17
SELECT phone FROM schools WHERE T3 = 3 ORDER BY T3 DESC LIMIT 3
SELECT T1.NCESdist , T1.NCESschool , T1.CDScode FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode WHERE T2.Enroll12 = 100 ORDER BY T2.Enroll12 DESC LIMIT 5
SELECT T1.District_name FROM schools AS T1 JOIN satscores AS T2 ON T1.CDScode = T2.cds WHERE T2.rtype = 'Reading' GROUP BY T1.dname ORDER BY avg_scrread DESC LIMIT 1
SELECT count(*) FROM schools WHERE school_type = 'Magnet' AND merged_school_count < 100
SELECT charter_number FROM schools WHERE avg_scrwrite > 499 ORDER BY avg_scrwrite DESC
SELECT count(*) FROM schools WHERE charter_type = "Directly funded" AND school_name = "Fono" AND numtstteston <= 250
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AverageScrMath = (SELECT max(AverageScrMath) FROM satscores)
SELECT count(*) FROM schools WHERE low_grade = 9 AND high_grade = 12
SELECT count(*) FROM frpm WHERE school_code = (SELECT cdsscode FROM schools WHERE school_name = "K-12" AND (free meal count (K-12) > 500 OR free meal count (K-12) < 700))
SELECT T1.CID FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.NumTstTakr DESC LIMIT 1
SELECT T1.Street , T1.School FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enroll12 - T1.Enroll12 > 30 AND T1.Age BETWEEN 5 AND 17
SELECT T1.school_name FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.percent_eligable_fre_meal_k-12 > 0.1 AND T2.AverageScrMath >= 1500
SELECT fundingtype FROM schools WHERE avg_scrmath > 400 AND school_name LIKE '%Riverside%'
SELECT T1.school_name , T1.street FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.count_age_15-17 > 800 AND T2.FRPM_count_age_15-14 = 200
SELECT T1.school_name , avg(T2.AverageScrWrite) , T2.CDSCcode , T2.ClosedDate FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCcode = T2.CDSCcode WHERE T1.OpenDate > 1991 OR T1.ClosedDate < 2000
{"sql": "SELECT T1.School , T1.DOCTYPE FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.T12 - T2.K-12 > (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12 = (SELECT avg(T2.K-12) FROM schools AS T2 WHERE T2.T12 - T2.K-12
SELECT opendate FROM schools ORDER BY enroll12 DESC LIMIT 12
SELECT T1.City FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCcode = T2.CDSCcode GROUP BY T1.City ORDER BY enroll12 LIMIT 10
SELECT T1.Tank , T1.FRPM Count (T1.Enroll12) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCCode = T2.CDSCCode WHERE T1.Greacast = 10 AND T1.Greacast = 11
SELECT T1.FRPM Count(T1.FRPM) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.CDSCcode = "66" ORDER BY T1.FRPM DESC LIMIT 5
SELECT T2.school , T1.name FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FRPM Count (Age) >= 1000 AND T1.FRPM Count (Age) <= 2000
SELECT T1.FRPM Count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.District_type = "School" AND T1.Cchool = "Kacey Gibson" AND T1.Enroll12 BETWEEN 5 AND 17
SELECT T1.AdmEmail1 FROM schools AS T1 JOIN chartered_schools AS T2 ON T1.CDSCcode = T2.CDSCcode GROUP BY T1.CDSCcode ORDER BY count(*) LIMIT 1
SELECT T2.AdmFName1 , T2.AdmLName1 FROM schools AS T1 JOIN satscores AS T2 ON T1.Cds = T2.cds WHERE T1.NumTstTakr >= 1500 ORDER BY T2.AdmFName1 ASC LIMIT 1
SELECT T1.Street , T1.City , T1.Zip , T1.State FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Rtype = 'L' ORDER BY T2.Rtype ASC LIMIT 1
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.count(12) BETWEEN 2000 AND 3000 AND T1.count(County) = "Los Angeles County"
SELECT avg(T2.NumTstTakr) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.OpenDate BETWEEN 1/1/1980 AND 12/31/1980
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.Rtype = "Read" ORDER BY avgScrRead LIMIT 1
SELECT T1.school_name FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds ORDER BY avg_scrread LIMIT 5
SELECT T1.EdOpsName FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AverageScrMath = (SELECT max(AverageScrMath) FROM satscores)
SELECT avg( AvgScrMath ) , count(*) , count(*) , count(*) FROM satscores WHERE school.code = (SELECT cdsscode FROM schools GROUP BY school.code ORDER BY avg_scrmath LIMIT 1)
SELECT T2.City FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.NCESD = 100 GROUP BY T1.CDSCode ORDER BY avg( T2.AverageScrWrite ) DESC LIMIT 1
SELECT avg_scrwrite , school FROM satscores WHERE rtype = 'Ricci Ulrich' GROUP BY school
SELECT T1.State , T1.Enroll12 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCCode = T2.CDSCCode WHERE T1.Enroll12 = (SELECT T3.Enroll12 FROM schools AS T3 JOIN frpm AS T2 ON T3.CDSCCode = T2.CDSCCode WHERE T2.AdmFName1 = "1-12")
SELECT count(*) FROM schools WHERE county = "Alameda County" AND opendate = "1980" AND district_type = "Elementary School District"
SELECT count(*) , count(*) FROM schools WHERE district_type = "Unified School District" AND county_name = "Orange County" GROUP BY count(*)
SELECT T1.county , T1.clo serviced FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode GROUP BY T1.county ORDER BY count(*) DESC LIMIT 1
SELECT T1.School , T1.Street FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AverageScrMath = (SELECT avg(ScrtR4) FROM satscores ORDER BY T2.AverageScrMath DESC LIMIT 1)
SELECT T2.Street , T1.school_name FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode ORDER BY avg_scrread + avg_scrmath LIMIT 1
SELECT count(*) FROM schools WHERE T1.T1_SAT_SCORE >= 1500 AND T1.MailCity = "Lakeport"
SELECT count(*) FROM schools WHERE mailcity LIKE "%Fono%"
SELECT T1.StaffName , T1.MailZip FROM schools AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Coyname = "Avetik Atoian" AND T1.Coyname = "Avetik Atoian"
SELECT count(*) , count(county) FROM schools WHERE state = "California" INTERSECT SELECT count(county) , count(county) FROM schools WHERE state = "Humboldt" GROUP BY county ORDER BY count(county) ASC LIMIT 1
SELECT count(*) FROM schools WHERE state = "California" INTERSECT SELECT count(*) FROM schools WHERE mailstate = "San Joan City" AND statustype = "Active"
SELECT T1.Phone , T1.Ext , T2.Campus FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AverageScrWrite = (SELECT avg(ScrWrite) FROM satscores ORDER BY T3.CdsCode DESC LIMIT 1)
SELECT T2.school , T2.phone , T2.ext FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.zip = 95203 - 3704
SELECT T1.website FROM schools AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.administrator = "Mike Larson" AND T1.administrator = "Dante Alvarez"
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE charterschool (Y) = 'Y' AND county = "San Joan"
SELECT count(*) FROM schools AS T1 JOIN chartered_schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Tname = "Elementary School District" AND T1.City = "Hickman"
SELECT sum(count(*)) FROM frpm WHERE county_name = "Los Angeles" AND (percent (%) Eligible FRPM (Age 1-12) < 0.18)
SELECT T1.school_name , T1.city FROM schools AS T1 JOIN chartered_schools AS T2 ON T1.CDSCode = T2.CharderNumber WHERE charternumber = 00D2
{"sql": "SELECT sum(ch charternum) FROM schools WHERE mailcity = "Hickman" AND charternum = 00D4"}
SELECT count(*) , sum(T1.FPRM Count (K-12)) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCCode = T2.CDSCCode WHERE T1.FPRM Type = 'Char charter school' AND T1.County = 'Santa Clara County' GROUP BY T1.FPRM Type ORDER BY count(*) = 1 LIMIT 1
SELECT count(*) FROM schools WHERE opendate BETWEEN 1/1/2000 AND 12/31/2005 AND county_name = 'Stanislaus'
{"sql": "SELECT sum(T2.FRPM Count (K-12)) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear = 1989 AND T1.CYACAcademicYear =
SELECT T1.county , T1.county AS count_of_school_closures , T1.yielding_code FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.academic_year = 1980 AND T1.county = "Y Youth Authority Facilities (CEA)"
SELECT T2.NCESDist FROM schools AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.NCESSchool = 'State Special Schools'
SELECT count(*) , count(*) FROM schools WHERE county = "Alpine" AND statustype = "active" OR statustype = "closed"
SELECT district_code FROM schools WHERE magnet = 'Y' AND city = "Fono"
SELECT count(*) FROM schools WHERE school_code = "State Special School" AND academy_year = 2014-2015 AND county_name = "Fremont" AND admfname1 = "Student" AND admemail1 = "Student"
SELECT count(*) FROM frpm WHERE school_code = (SELECT cdsscode FROM schools WHERE mailstreet = 'PO Box 1040') AND age BETWEEN 5 AND 17 AND type = 'Y Youth Authority School' UNION SELECT count(*) FROM frpm WHERE school_code = (SELECT cdsscode FROM schools WHERE mailstreet = 'PO Box 1040') AND type = 'Y Youth Authority School'
SELECT min(High Grade) FROM frpm WHERE District_CODE = 0613360
SELECT T1.school_name FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.T1_2 = 2 AND T2.count(12) = 2014 - 1000
SELECT T1.City FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCcode = T2.CDSCcode WHERE T2.LowGrade = 9 AND T2.HighGrade = 12 AND T1.County = 'Merced'
SELECT T1.count(Grades) , T1.Percent_% Eligible FRPM (Age 5-17) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCcode = T2.CDSCcode WHERE T1.count(Grade) >= 0 AND T1.count(Grade) <= 9 AND T2.count(Grade) = 100 AND T2.County_name = "Los Angeles"
SELECT T1.District_Type FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.City = "Adelanto" GROUP BY T1.District_Type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , county FROM schools WHERE county != "San Diego" AND county != "Santa Barrio" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT T1.School , T1.Latitud, T1.Latitud FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.Latitud DESC LIMIT 1
SELECT T2.school , T1.Latitude , T1.Grade FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = "California" ORDER BY T1.Latitude , T1.Grade LIMIT 1
SELECT max(Longitude) , T1.GradeSpan FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.GradeSpan = (SELECT max(GradeSpan) FROM schools AS T3 WHERE T3.GradeSpan = T2.GradeSpan)
SELECT count(*) , city FROM schools WHERE magnet = "Y" AND high_grade - kindergarten BETWEEN 8 - 10 AND 8 - 10 GROUP BY city
SELECT T1.District , T1.AdmFName1 , T1.AdmLName1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.District ORDER BY count(*) DESC LIMIT 2
SELECT T1.Districtcode FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode WHERE T2.Percent (%) Eligible FRPM (K-12) = "Y" AND T1.Tname = "Alusine"
SELECT T1.adminfname , T2.county , T3.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode JOIN schools AS T3 ON T2.chardiffcode = T3.chardiffcode WHERE charter = 40
SELECT T1.AdmEmail1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCcode = T2.CDSCcode WHERE T1.County = "San Bernardino county" AND T1.TopSchoolType = "Public Intermediate Schools" AND T2.OpenDate BETWEEN 1/1/2009 AND 12/31/2010 AND T1.TopSchoolType = "Unified Schools"
SELECT T1.school_name FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.NumGE1500 >= 100 ORDER BY T2.NumGE1500 DESC LIMIT 1
SELECT count(*) FROM account WHERE district_id = (SELECT district_id FROM account WHERE transaction_id = (SELECT trans_id FROM trans WHERE city = "East Bohemia") AND type = "issuing")
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 1000 AND T1.status = 'L'
SELECT avg(unemployment_ratio) FROM loan WHERE DATE = '1995' INTERSECT SELECT avg(unemployment_ratio) FROM loan WHERE DATE = '1996' ORDER BY avg(unemployment_ratio) DESC LIMIT 1
SELECT count(DISTINCT district_id) FROM account WHERE gender = 'F' AND average_salary BETWEEN 6000 AND 10000
SELECT count(*) FROM client WHERE gender = 'M' AND district_id = (SELECT district_id FROM client WHERE birth_date = (SELECT birth_date FROM client WHERE gender = 'M' AND district_id = (SELECT district_id FROM client WHERE salary > 8000)) AND district_id = (SELECT district_id FROM client WHERE birth_date = (SELECT birth_date FROM client WHERE gender = 'M' AND salary = 8000)) WHERE gender = 'M' AND district_id = (SELECT district_id FROM client WHERE birth_date = (SELECT birth_date FROM client WHERE gender = 'M' AND salary = 8000)) AND district_id = (SELECT district_id FROM client WHERE birth_date = (SELECT birth_date FROM client WHERE gender = 'M' AND salary = 8000)) GROUP BY district_id HAVING avg(Salary) > 8000
SELECT account_id FROM client WHERE gender = 'F' ORDER BY birth_date DESC , avg(amount) - max(amount)
SELECT account_id FROM client WHERE birth_date = (SELECT min(birth_date) FROM client) INTERSECT SELECT account_id FROM loan WHERE avg(amount) = (SELECT max(amount) FROM loan)
SELECT count(*) FROM customer WHERE customer_type = 'statement' AND customer_id = (SELECT client_id FROM order WHERE transaction_type = 'weekly')
SELECT client_id FROM trans WHERE transaction_type = 'Dispostion' AND trans_id = (SELECT trans_id FROM trans WHERE amount = (SELECT max(amount) FROM trans WHERE transaction_type = 'Dispostion'))
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date = 1997 GROUP BY T1.account_id ORDER BY T2.amount LIMIT 1
SELECT T1.account_id , T1.date FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 1000 GROUP BY T1.account_id ORDER BY T1.date DESC LIMIT 1
SELECT count(*) FROM client WHERE gender = 'F' AND birth_date < '1950' AND district_id = 1000 WHERE city = 'Sokolov'
SELECT account_id FROM account WHERE date = '1995'
SELECT DISTINCT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date < '1997' AND T2.amount > 3000
SELECT client_id FROM card WHERE issued = '1994/3/3'
SELECT T1.date FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.amount = 840 AND T2.date = '1998/10/14' AND T2.type = 'transaction'
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1994-08-25'
SELECT max(amount) FROM trans AS T1 JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T2.birth_date = "1996-10-21"
SELECT T1.gender FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id WHERE T2.frequency = (SELECT frequency FROM account ORDER BY T2.date DESC LIMIT 1) AND T2.balance = (SELECT max(balance) FROM account)
SELECT T1.client_id , T1.amount FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = (SELECT T3.district_id FROM account AS T3 JOIN loan AS T4 ON T3.account_id = T4.account_id ORDER BY T4.amount DESC LIMIT 1)
SELECT count(*) FROM client WHERE gender = "F" AND district_id = "Jesenik"
SELECT T2.trans_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount = 5100 AND T1.date = "1998/9/2"
SELECT count(*) FROM account WHERE date = "1996" AND district_id = "Litomerice"
SELECT T1.district_id FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = "F" AND T1.birth_date = "1976/1/29"
SELECT T1.birthday FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.amount = 98832 AND T2.date = '1996/1/3'
SELECT account_id FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = (SELECT client_id FROM client WHERE district_id = 2 AND city = 'Prague')
SELECT count(*) , sum( gender) FROM client WHERE district_id = (SELECT district_id FROM client WHERE area = 'South Bohemia' AND total_inhabitants > (SELECT max(total_inhabitants) FROM client WHERE district_id = (SELECT district_id FROM client WHERE area = 'South Bohemia') ) ) GROUP BY gender ORDER BY count(*) DESC LIMIT 1;
SELECT T1.balance - T2.balance FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1993/3/22' INTERSECT SELECT T1.balance - T2.balance FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1998/12/27'
SELECT sum(T2.amount) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'paid' AND T1.amount = (SELECT max(amount) FROM loan WHERE status = 'paid')
SELECT sum(T2.status) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < 100000
SELECT account_id , T1.district_name , T1.district_region FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date > (SELECT max(date) FROM account WHERE date = 1993)
SELECT account_id , frequency FROM account WHERE date BETWEEN 1995 AND 2000 AND district_id = 'east Bohemia'
SELECT account_id , date FROM account WHERE district_id = 'Prachatice'
SELECT T1.district_id , T1.A2 , T1.A3 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.loan_id = 4990
SELECT account_id , district_id , district FROM loan WHERE amount > 300000
SELECT loan_id , district_id , avg(balance) FROM loan WHERE duration = 60 GROUP BY loan_id
SELECT T1.district_id , T2.district , sum(T3.amount - T2.amount) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.district_id = T2.district_id AND T1.status = 'L' AND T1.date = '1995' INTERSECT SELECT T1.district_id , T2.district , sum(T3.amount - T2.amount) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.district_id = T2.district_id AND T1.status = 'L' AND T1.date = '1996' GROUP BY T1.district_id
SELECT sum(T2.frequency) , T1.district_id FROM account AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = 1993 GROUP BY T1.district_id HAVING sum(T2.frequency) = 100
SELECT account_id FROM account WHERE frequency = 'monthly'
SELECT district_id , count(*) FROM account GROUP BY district_id ORDER BY count(*) DESC LIMIT 9
SELECT T2.amount FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = (SELECT district_id FROM account WHERE date = '2016-01-19' AND type = 'non-credit card' ) GROUP BY T2.account_id ORDER BY sum(amount) DESC LIMIT 10
SELECT count(*) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T1.district_id = T3.district_id WHERE T3.district_id = 2000 AND T2.status = 'credit' AND T3.district_id = 2000
SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id GROUP BY T2.account_id ORDER BY SUM(T2.amount) DESC LIMIT 1
SELECT avg(amount) FROM loan WHERE gender = "male";
SELECT T1.district_id , T2.A2 , T2.A3 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.frequency = 1996 ORDER BY T2.A3 DESC LIMIT 1
SELECT count(*) FROM account WHERE date = "1996" GROUP BY account_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM account WHERE balance < 0 AND date = (SELECT account_id FROM trans WHERE amount = -1)
SELECT count(*) FROM loan WHERE date BETWEEN '1/1/1995' AND '12/31/1997' AND status = 'approved' AND account_id IN (SELECT account_id FROM loan WHERE amount >= 250000)
SELECT count(*) FROM account WHERE frequency = 1 AND account_id IN (SELECT account_id FROM order WHERE bank_to = 1)
SELECT count(*) FROM client WHERE gender = 'M' AND district_id = (SELECT district_id FROM client WHERE date = '2015-01-02' AND total_cops_count = 2)
SELECT count(*) FROM card WHERE TYPE = "OWNER"
SELECT count(*) FROM account WHERE district_id = "Pisek"
SELECT T1.district_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.amount > 10000 AND T1.district_id = 1997
SELECT T1.account_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.amount = 1 AND T2.bank_to = 'Pisek'
SELECT account_id FROM card WHERE type = 'gold'
SELECT avg(amount) FROM loan WHERE date = '2021-10-10' AND status = 'credit_card'
SELECT T1.account_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.amount < (SELECT avg(amount) FROM trans WHERE T2.date = '1998' AND T2.type = 'credit')
SELECT T1.gender FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = "F" AND T2.type = "loan"
SELECT count(*) FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = "F" AND T2.district_id = (SELECT district_id FROM client WHERE district_id = "South Bohemia")
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = "Tabor"
SELECT T1.type , avg(T2.amount) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.type != 'loan' AND T2.amount > 8000 AND T2.amount <= 9000 GROUP BY T1.type
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN customer AS T3 ON T2.account_to = T3.account_id WHERE T3.district_id = 2 AND T3.district_id = 2 AND T2.bank_to = 'AB'
SELECT T1.district_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'withdrawal'
SELECT sum(T2.amount) FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 4000 AND T1.district_id = 1000 AND T2.date = 1995
SELECT count(*) FROM card WHERE type = 'classic'
SELECT count(*) FROM client WHERE gender = 'M' AND district_id = (SELECT district_id FROM client WHERE district_id = 'Hl.m. Prata')
SELECT count(*) FROM card WHERE issued > 1998 AND type = 'Gold'
SELECT T1.client_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id GROUP BY T1.account_id ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT count(*) FROM account WHERE date = "1995" AND district_id = 532
SELECT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.amount = 33333
SELECT T1.amount FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 3356 AND T1.type = 'cash'
SELECT count(*) FROM loan WHERE amount < 200000
SELECT T2.type FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T1.account_id = T3.client_id WHERE T3.client_id = 13539
SELECT T2.district_id FROM loan AS T1 JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T1.amount = 3541
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'no problem' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.client_id FROM order AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount = 32423
SELECT T2.operation FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = 5
SELECT count(*) FROM account WHERE district_id = "Jesenik";
SELECT client_id FROM card WHERE type = 'junior' AND issued > 1996
SELECT count(*) , count(*) FROM client WHERE district_id = (SELECT district_id FROM client WHERE avg(balance) > 10000 AND gender = 'M')
SELECT sum(T1.amount) , T1.date FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date BETWEEN '1996-01-01' AND '1997-01-01' AND T2.gender = 'M'
SELECT count(*) FROM trans WHERE date > "1995" AND op == "credit_card_withdrawal"
SELECT count(*) FROM account AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.district_id = 2 AND T2.district_id = 2 AND T1.date = '2016-01-01' AND T2.district_id = 2
SELECT count(*) , count(DISTINCT disp_id) FROM disp WHERE account_id BETWEEN 1 AND 10
SELECT count(*) , sum(debiting) FROM order AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.account_id = 3
SELECT birth_date FROM client WHERE client_id = 130
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN loan AS T3 ON T2.trans_id = T3.trans_id WHERE T3.status = 'Statement' AND T1.district_id = 'Owner'
SELECT sum(T1.amount) , T1.status FROM loan AS T1 JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T2.client_id = 992
{"sql": "SELECT T1.account_id , T2.balance FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.trans_id = 851 WHERE T2.balance = (SELECT sum(balance) FROM trans AS T3 JOIN trans AS T4 ON T3.trans_id = T4.trans_id WHERE T4.trans_id = 851 AND T4.balance = (SELECT max(balance) FROM trans AS T5 WHERE T5.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T5 WHERE T5.trans_id = 851 AND T5.balance = (SELECT max(balance) FROM trans AS T6 WHERE T6.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T6 WHERE T6.trans_id = 851 AND T6.balance = (SELECT max(balance) FROM trans AS T7 WHERE T7.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T7 WHERE T7.trans_id = 851 AND T7.balance = (SELECT max(balance) FROM trans AS T8 WHERE T8.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T8 WHERE T8.trans_id = 851 AND T8.balance = (SELECT max(balance) FROM trans AS T9 WHERE T9.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T9 WHERE T9.trans_id = 851 AND T9.balance = (SELECT max(balance) FROM trans AS T10 WHERE T10.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T11 WHERE T11.trans_id = 851 AND T11.balance = (SELECT max(balance) FROM trans AS T12 WHERE T12.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T12 WHERE T12.trans_id = 851 AND T12.balance = (SELECT max(balance) FROM trans AS T13 WHERE T13.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T13 WHERE T13.trans_id = 851 AND T13.balance = (SELECT max(balance) FROM trans AS T14 WHERE T14.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T14 WHERE T14.trans_id = 851 AND T14.balance = (SELECT max(balance) FROM trans AS T15 WHERE T15.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T15 WHERE T15.trans_id = 851 AND T15.balance = (SELECT max(balance) FROM trans AS T16 WHERE T16.trans_id = 851)) WHERE T2.balance = (SELECT max(balance) FROM trans AS T16 WHERE T16.trans_id =
SELECT type FROM card WHERE card_id = (SELECT card_id FROM loan WHERE client_id = 9)
SELECT sum(T1.amount) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1998' AND T1.client_id = 617
SELECT client_id FROM client WHERE birth_date BETWEEN "1983" AND "1987" AND district_id = "East Bohemia"
SELECT client_id FROM loan WHERE status = "L" AND gender = "F" ORDER BY amount DESC LIMIT 3
{"sql": "SELECT count(*) FROM client WHERE gender = 'male' AND birth_date BETWEEN 1974 AND 1976 AND account_id IN (SELECT account_id FROM trans WHERE amount > 4000 AND customer_id = 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM account WHERE date > '1996' AND district_id = 1000
SELECT count(*) FROM client AS T1 JOIN customer AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = "F" AND T2.type = "Junior credit card"
SELECT count(*) , count(t1.gender) FROM client AS t1 JOIN account AS t2 ON t1.client_id = t2.client_id WHERE t2.district_id = 1 AND t1.gender = 'F'
SELECT count(*) , count(*) / (SELECT count(*) FROM client WHERE gender = 'male') FROM client WHERE gender = 'male'
SELECT count(*) FROM client AS T1 JOIN order AS T2 ON T1.client_id = T2.client_id WHERE T2.amount = "weekly issuance" AND T1.owner = "Owner"
SELECT T1.account_id , T1.date FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 INTERSECT SELECT T1.account_id , T1.date FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.date < 1997 GROUP BY T1.account_id ORDER BY T1.appared_amount , T1.date LIMIT 1
SELECT account_id FROM client WHERE gender = 'female' ORDER BY birth_date , avg(amount) LIMIT 1
SELECT count(*) FROM client WHERE birth_date = "1920" AND district_id = 1000
SELECT count(*) FROM loan WHERE duration = 24 AND payments = 'pre-payment'
SELECT avg(amount) FROM loan WHERE status = 'running' AND trans.trans_id NOT IN (SELECT trans_id FROM trans WHERE date = (SELECT date FROM loan WHERE status = 'running' AND trans.trans_id IN (SELECT trans_id FROM trans WHERE date = (SELECT date FROM loan WHERE status = 'running' AND trans.trans_id IN (SELECT trans_id FROM trans WHERE date = (SELECT date FROM loan WHERE status = 'running' AND trans.trans_id IN (SELECT trans_id FROM trans WHERE date = (SELECT date FROM loan WHERE status = 'running' ) ) )) )) )
SELECT client_id , district_id FROM client WHERE district_id IN (SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration = 'permanent' OR T2.status = 'loan')
SELECT client_id , age FROM client WHERE gender = 'M' AND birth_date = '2000-12-12' AND type = 'credit_card' AND status = 'loan'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element = 'Cl'
SELECT avg(number_of_oxygen_atoms) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'C'
SELECT avg(count(*)) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecular_id = T2.molecular_id WHERE T2.label = 'Sodium' AND T2.label != 'Cancer'
SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = 'carcinogenic'
{"sql": "SELECT sum( ( SELECT count(*) FROM atom AS A , atom2 AS B WHERE A.molecule_id = 2 AND B.molecule_id = 2 AND A.element = 2 AND B.element = 2 ) ) / ( count(*) ) FROM atom AS A JOIN atom AS B ON A.molecule_id = 2 AND B.molecule_id = 2 WHERE A.element = 2 AND B.element = 2 GROUP BY 2 HAVING sum( ( ( ( SELECT count(*) FROM atom AS A , atom2 AS B WHERE A.molecule_id = 2 AND B.molecule_id = 2 AND A.element = 2 AND B.element = 2 ) ) ) = 2 / ( count(*) ) WHERE ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( (
SELECT count(*) FROM bond WHERE bond_type = 'Triple'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule WHERE molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic' AND molecule_id < 100)
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'carbon'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 0 AND T2.bond_type = "004_8_9"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN molecule AS T3 ON T2.bond_id = T3.bond_id WHERE T3.label = "double"
SELECT element FROM atom WHERE element = 'H' GROUP BY element ORDER BY count(*) DESC LIMIT 1
SELECT type FROM bond WHERE bond_type = 'Cl'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id WHERE T2.bond_id = (SELECT bond_id FROM connected AS T4 JOIN atom AS T5 ON T4.atom_id = T5.atom_id WHERE T5.element = (SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond)) AND T4.bond_id = (SELECT bond_id FROM connected AS T6 JOIN atom AS T7 ON T6.atom_id = T7.atom_id WHERE T7.element = (SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond)) AND T6.bond_id = (SELECT bond_id FROM connected AS T8 JOIN atom AS T9 ON T8.atom_id = T9.atom_id))
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "non-carcinogenic"
SELECT element FROM atom WHERE molecule_id NOT IN (SELECT molecule_id FROM bond) INTERSECT SELECT element FROM atom WHERE molecule_id NOT IN (SELECT molecule_id FROM bond) GROUP BY element ORDER BY count(*) LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id = 004_20 AND molecule_id = 004_8
SELECT label FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'tin')
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'iodine' INTERSECT SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'sulfur'
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id WHERE T3.element = "bond_type" AND T2.bond_id = 3
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T3.atom_id = T1.atom_id JOIN atom AS T4 ON T3.atom_id2 = T4.atom_id WHERE T2.label = "TR181" AND T4.element = "atom"
SELECT count(*) FROM molecule WHERE label != 'carcinogenic-type' AND molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'fluorine')
SELECT count(*) , sum( (SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'C' AND T1.molecule_id = T2.molecule_id AND T1.molecule_id = T2.molecule_id) ) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = 3
SELECT DISTINCT element FROM atom WHERE molecule_id = "TR000" ORDER BY element LIMIT 3
{"sql": "SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 2 AND T1.molecule_id = 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) - count(*) FROM molecule WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic')
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "TR000_2_5"
SELECT bond_id FROM bond WHERE molecule_id = (SELECT molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 2)
SELECT label FROM molecule WHERE molecule_id IN (SELECT molecule_id FROM bond GROUP BY molecule_id HAVING count(*) = 2 ORDER BY count(*) DESC LIMIT 5)
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR008" AND T2.bond_type = "double"
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "carcinogenic"
SELECT sum( element) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR206" AND T1.element = "H"
SELECT T2.bond_type FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR000"
SELECT T1.label , T1.atom_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "TR060"
SELECT bond_type , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR010" AND T2.label != "carcinogenic" GROUP BY T1.bond_type ORDER BY count(*) DESC LIMIT 1
{"sql": "SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label NOT IN (SELECT T2.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE
SELECT DISTINCT T2.molecule_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR006" ORDER BY T1.label LIMIT 2
SELECT count(*) FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id JOIN bond AS t3 ON t3.molecule_id = t2.molecule_id WHERE t2.element = 12 AND T1.label = "TR009"
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "carcinogenic" AND T1.element = "Br"
SELECT bond_type , T1.element FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T2.molecule_id = 6 AND T1.bond_id = 9
{"sql": "SELECT T2.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id , T1.molecule_id ,
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 19
SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = "TR004")
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic')
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 21 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 25
SELECT T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T3.atom_id = T2.atom_id WHERE T3.element = 'phosphine' INTERSECT SELECT T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T3.atom_id = T2.atom_id WHERE T3.element = 'nitrogen'
{"sql": "SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label = (SELECT t1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' AND T1.label
SELECT avg(bond_id) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "iodine"
SELECT bond_type , bond_id FROM bond WHERE molecule_id = 45
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "Triple" AND T2.molecule_id = "TR041"
SELECT element FROM atom WHERE atom_id = 144_8_19
SELECT molecule_id FROM bond GROUP BY molecule_id HAVING count(*) = 2
SELECT element FROM atom GROUP BY element ORDER BY count(*) LIMIT 1
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = "lead")
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'double'
SELECT sum(T2.element) , count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id GROUP BY T2.atom_id HAVING count(*) = (SELECT count(*) FROM atom AS T2 WHERE T2.element = (SELECT element FROM atom GROUP BY T2.element ORDER BY count(*) DESC LIMIT 1))
SELECT count(*) , sum(bond_type) FROM bond WHERE bond_type = 'reactive' AND molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'reactive')
SELECT sum(atom_id) FROM atom WHERE element = "carbon" INTERSECT SELECT sum(atom_id) FROM atom WHERE element = "hydrogen"
SELECT atom_id2 FROM atom WHERE element = "Sulfur"
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'S Tin')
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT sum(atol) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "Phosphorus\" OR T2.label = "Brine"
SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT molecule_id FROM bond WHERE bond_type != 'cancer'
SELECT count(*) , sum( (SELECT count(*) FROM atom AS A JOIN molecule AS B ON A.molecule_id = B.molecule_id WHERE B.label = 'Cl' AND B.label = 'Cl' AND B.label = 'Cl' ) ) FROM atom AS A JOIN molecule AS B ON A.molecule_id = B.molecule_id GROUP BY B.molecule_id HAVING sum( (SELECT count(*) FROM atom AS A JOIN molecule AS B ON A.molecule_id = B.molecule_id WHERE B.label = 'Cl' AND B.label = 'Cl' ) ) = 1 HAVING count(*) = 1
SELECT label FROM molecule WHERE label LIKE "%TR000%" UNION SELECT label FROM molecule WHERE label LIKE "%TR001%" UNION SELECT label FROM molecule WHERE label LIKE "%TR002%"
SELECT molecule_id FROM molecule WHERE label != 'carcinogenic'
SELECT sum(total_carcaric_molecules) FROM molecule WHERE molecule_id BETWEEN 0 AND 30
SELECT DISTINCT bond_type FROM bond WHERE molecule_id BETWEEN 0 AND 50
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 10 AND T2.bond_type = "00" AND T2.molecule_id = 10
SELECT count(DISTINCT bond_id) FROM bond WHERE element = "iodine"
SELECT count(*) FROM atom WHERE element = 'Ca' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'Ca' AND type = 'cancerous')
SELECT T1.molecule_id , T2.element FROM atom AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.element = "Cl" INTERSECT SELECT T1.molecule_id , T2.element FROM atom AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.element = "CO"
SELECT molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T2.bond_id = T3.bond_id WHERE T3.label = "double bond" AND T1.molecule_id = 3 AND T3.label = "carcinogenic" EXCEPT SELECT molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T2.bond_id = T3.bond_id WHERE T3.label = "carcinogenic" INTERSECT SELECT molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T2.bond_id = T3.bond_id WHERE T3.label = "double bond" AND T1.molecule_id = 3 AND T3.label = "carcinogenic"
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecular_id = T2.molecular_id WHERE T2.label = "carcinogenic" AND T1.element = "chlorine"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR001"
SELECT molecule_id FROM bond WHERE bond_type = 'double'
SELECT T1.atom_id , T2.atom_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double' GROUP BY T1.atom_id , T2.atom_id HAVING count(*) = 2
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 2 AND T2.bond_type = "toxicity" AND T2.molecule_id = "bond_id TR000_1_2"
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "single bond" AND T1.bond_type = "bond_type" AND T2.label != "cancerous"
SELECT label FROM molecule WHERE label LIKE "bond ID %s" WHERE bond_id = "TR001_10_11"
SELECT T1.bond_id , T2.molecule_id , T3.bond_type FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T1.atom_id = T3.atom_id WHERE T2.label = "double bond" AND T3.element = "double bond"
SELECT count(*) , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "carcinogenic" AND T1.element = 4 GROUP BY T1.element
SELECT count(*) , element FROM atom WHERE element = 'Hydrogen' AND molecule_id = 'TR006' GROUP BY element
SELECT T1.molecule_id , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Ca' AND T2.label = 'carcinogenic'
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carbon')
SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'TR001_10_11')
SELECT count(*) , sum( ( SELECT count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id FROM molecule AS T2 JOIN bond AS T3 ON T2.molecular_id = T3.molecular_id WHERE T3.bond_type = 'Triple' ) ) / ( SELECT count(*) FROM molecule AS T2 JOIN bond AS T3 ON T2.molecular_id = T3.molecular_id ) FROM molecule AS T2 JOIN bond AS T3 ON T2.molecular_id = T3.molecular_id WHERE T3.bond_type = 'Triple'
{"sql": "SELECT sum( ( ( ( SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecular_id = T2.molecular_id WHERE T2.label = \"TR047\" AND T1.bond_type = 2 ) / ( ( SELECT count(*) FROM molecule AS T2 JOIN atom AS T3 ON T2.molecular_id = T3.molecular_id WHERE T3.label = \"TR047\") ) * 100 ) ) , 1) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecular_id = T2.molecular_id GROUP BY T2.molecular_id HAVING sum( ( ( ( SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecular_id = T2.molecular_id WHERE T2.label = \"TR047\" AND T1.bond_type = 2 ) / ( ( SELECT count(*) FROM molecule AS T2 JOIN atom AS T3 ON T2.molecular_id = T3.molecular_id WHERE T3.molecular_id = \"TR047") ) * 100 ) ) ) = 100 }"}
SELECT T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "TR001_1" AND T2.label = "carcinogenic"
SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'TR' AND T1.label = 'TR151' AND T1.label = 'carcinogenic'
SELECT element FROM atom WHERE molecule_id = 'TR151'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carbon" AND T1.molecule_id BETWEEN 0 AND 0
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
SELECT DISTINCT T2.bond_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "carcinogenic" GROUP BY T2.bond_id HAVING count(*) = 2
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'hydrogen' AND T2.label = 'carcinogenic'
SELECT t1.molecule_id FROM molecule AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.bond_type = "TR000_1_2" AND t1.label = "TR000_1_2"
SELECT atom_id FROM atom WHERE element = 'carbon' EXCEPT SELECT atom_id FROM atom WHERE element != 'carcinogenic'
SELECT count(*) , sum( ( ( ( SELECT count(*) FROM atom WHERE element = 'H' ) - ( SELECT count(*) FROM atom WHERE element != 'H' ) ) / ( ( SELECT count(*) FROM atom WHERE element != 'H' ) ) ) FROM atom WHERE element = 'H'
SELECT is_carcineous FROM molecule WHERE label = "TR124"
SELECT element FROM atom WHERE atom_id = 186
SELECT bond_type FROM bond WHERE molecule_id = "TR007_4_19"
SELECT DISTINCT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = "TR001_2_4")
SELECT count(*) , sum(case WHEN type = 'double' THEN 1 ELSE 0 END) , sum(case WHEN type = 'carcinogenic' THEN 1 ELSE 0 END) FROM bond WHERE molecule_id = 'TR006'
SELECT element , molecule_id FROM atom WHERE element = "carcinogenic"
SELECT T2.label , T1.element FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "single"
SELECT DISTINCT T2.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T1.bond_id = T3.bond_id GROUP BY T1.molecule_id HAVING count(*) = 3
SELECT DISTINCT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = "TR000_2_3")
{"sql": "SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.label = "clustresystem")
SELECT T1.atom_id , count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "346" GROUP BY T1.atom_id
SELECT count(*) , label FROM molecule WHERE label = 'carcinogenic' AND bond_type = 'double'
SELECT count(*) FROM atom WHERE element != 'sulfs' AND element != 'double'
SELECT label FROM molecule WHERE label LIKE "TR001_2_4"
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR001"
SELECT count(*) FROM bond
SELECT t1.molecule_id FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.element = "cl" AND t1.label = "carcinogenic"
SELECT DISTINCT T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "c" EXCEPT SELECT DISTINCT T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "carcinogenic"
SELECT count(*) , sum( (SELECT count(*) FROM atom WHERE element = 'Cl') ) FROM atom WHERE element = 'Cl'
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT count(*) FROM bond WHERE bond_id = "TR001_3_4"
SELECT bond_type FROM bond WHERE molecule_id = 1 AND atom_id = 2 AND atom_id2 = 2
SELECT molecule_id FROM atom WHERE atom_id = "TR000_2" INTERSECT SELECT molecule_id FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = 000_1
SELECT is_carac_from_table FROM molecule WHERE label = "TR000"
SELECT count(*) , sum(bond_type) FROM bond WHERE bond_type = 'single'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic' AND T1.element = 'N'
SELECT t1.molecule_id FROM atom AS t1 JOIN molecule AS t2 ON t1.molecule_id = t2.molecule_id WHERE t1.element = "Sulfur" AND t2.label = "C2H2"
SELECT molecule_id FROM atom WHERE element != 'carcinogenic' GROUP BY atom_id HAVING sum(atom_id) > 5
SELECT DISTINCT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double')
SELECT T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "carcinogenic" GROUP BY T2.molecule_id ORDER BY count(*) DESC LIMIT 1
{"sql": "SELECT sum( (select count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecular_id = T2.molecular_id WHERE T2.label = \"C致癌分子\" AND T1.element = \"H") ) , "percentage": "100 - (select count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecular_id = T2.molecular_id WHERE T2.label = \"C致癌分子\" AND T1.element = \"H"))"}
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'carcinogenic'
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR004" AND T2.bond_type = "1" AND T2.molecule_id BETWEEN 0 AND 10
SELECT count(*) FROM atom WHERE molecule_id = "TR008"
SELECT element FROM atom WHERE atom_id = 004_7 EXCEPT SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "carcinogenic"
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "double bonded oxygen"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM bond WHERE bond_type = 'double bond') AND molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic')
SELECT T2.element , T2.bond_type FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR002"
SELECT atom_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR012" AND T2.element = "double bonded carbon"
SELECT atom_id FROM atom WHERE element = 'cancer' AND molecule_id = (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic' AND element = 'oxygen')
{"sql": "SELECT cardKingdomId FROM cards WHERE cardKingdomId IN (SELECT cardKingdomId FROM cards WHERE cardKing00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM cards WHERE cardKingdomId != 'power' AND cardKingid != 'power'
SELECT faceName FROM cards WHERE faceConvertedManaCost > (SELECT faceConvertedManaCost FROM cards WHERE faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE faceConvertedManaCost > (200)) ) )
SELECT name FROM cards WHERE frame_effects LIKE '%2015%' AND edhrecrank < 100
SELECT * FROM cards WHERE rarity = 'mythic' AND cardKingdomId = 'gladiator'
SELECT legalities.status FROM legalities AS T1 JOIN cards AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T2.faceConvertedManaCost != T1.faceConvertedManaCount AND T1.format = "vintage play format"
SELECT id , artist FROM cards WHERE power != "power" AND legalities.format = "commander play format"
SELECT T1.asciiName , T1.cardKingdomId , T1.colorIdentity , T1.contransferred, T1.contransferredManaCost , T1.contransferredHand , T1.contransferredManaCost , T1.contransferredManaCost FROM cards AS T1 JOIN rulings AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T1.artist = "Stephen Daniel" AND T2.text = "Prestal Pricelist"
SELECT T1.date , T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.asciiName = 'Sublime Epiphanity' AND T2.count = 74
SELECT card, artist , count(*) FROM cards WHERE isPromo = 1 GROUP BY card ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Annul" AND T2.langcode = "en"
SELECT DISTINCT cardKingdomId FROM cards WHERE hasAlternative AND language = "Japanese"
SELECT count(*) , sum(availability) FROM cards WHERE language = "Chinese Simplified"
SELECT count(*) , T1.code FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T2.language = "Italian" GROUP BY T1.code
SELECT count(*) FROM cards AS T1 JOIN cards AS T2 ON T1.artist = T2.artist WHERE T1.artist = "Aaron Boyd" AND T1.asciiName = "card art"
SELECT keywords FROM cards WHERE cardname = "Angel of Mercy"
SELECT count(*) FROM cards WHERE power = "infinite"
SELECT promoTypes FROM cards WHERE cardKingdomId = "Duress"
SELECT borderColor FROM cards WHERE cardKingdomId = "Ancestor's Chosen"
SELECT type FROM cards WHERE originalType = "Ancestor's Chosen"
SELECT T1.language FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.code WHERE T1.artist = 'Angel of Mercy' INTERSECT SELECT T1.language FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.code
SELECT count(*) FROM legalities AS T1 JOIN cards AS T2 ON T1.status = 'Restricted' AND T1.uuid = T2.cardKingdomId
SELECT t1.description FROM legalities AS t1 JOIN cards AS t2 ON t1.uuid = t2.uuid WHERE t2.cardKingdomId = "Condemn"
SELECT count(*) FROM legalities AS T1 JOIN cards AS T2 ON T1.status = 'restricted' AND T1.id = T2.cardKingdomId WHERE T1.id = 'legalities' AND T1.status = 'restricted' AND T1.id = 'legalities'
SELECT status FROM cards WHERE asciiname = "Cloudchaser Eagle"
SELECT cardKingdomId FROM cards WHERE faceName = "Benalish Knight"
SELECT rule FROM cards WHERE asciiName = "Benalish Knight"
SELECT artist FROM cards WHERE cardKingdomId = "Phyrexian"
SELECT count(*) , sum(available性) FROM cards WHERE bordercolor != "borderless"
SELECT count(*) FROM cards WHERE cardKingdomId = "Germany" INTERSECT SELECT count(*) FROM cards WHERE setCode = "reprint"
SELECT count(*) FROM cards WHERE cardKingdomid != 'borderless' AND language = 'Russian'
SELECT count(*) , sum( (SELECT count(*) FROM cards WHERE language = "French) ) FROM cards WHERE storyspotlight = "Y"
SELECT count(*) FROM cards WHERE toughness = 99
SELECT cardKingdomId FROM cards WHERE asciiName = "Aaron Boyd"
SELECT count(*) FROM cards WHERE colorIdentity = 'black' AND cardKingdomId = 'mtg'
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE "%flying%"
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND subtypes != "Angel"
{"sql": "SELECT cardKingdomId FROM cards WHERE cardKingdomId NOT IN (SELECT cardKingdomId FROM cards WHERE cardKing02_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1
SELECT id FROM cards WHERE cardKingdomId = "duel deck a"
SELECT edhrecrank FROM cards WHERE frame_version = 2015
SELECT artist FROM cards WHERE asciiname LIKE '%Chinese%'
SELECT id FROM cards WHERE availability = "paper" AND language = "Japanese"
SELECT count(*) FROM cards WHERE colorIdentity = "white"
SELECT cardKingdomId , language FROM cards WHERE cardKingdomId = 'legacy'
SELECT date FROM rulings WHERE text LIKE '%Beacon of Immortality%'
SELECT count(*) , status FROM legalities WHERE frameversion = "future"
SELECT colorIdentity FROM cards WHERE setCode = "OGW" AND colorIdentity != "black"
SELECT T1.asciiName , T1.transferredManaCost , T1.contractedManaCost , T1.contractedName FROM cards AS T1 JOIN set_translations AS T2 ON T1.contractedManaCost = T2.contractedManaCost WHERE T1.setCode = "10E" AND T2.transferredManaCost = 5 AND T2.language = "english"
SELECT T1.asciiName , T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE originalType = "Elf" AND T1.originalType = "Elf"
SELECT colorIdentity , format FROM cards WHERE id BETWEEN 1 AND 20
SELECT DISTINCT T1.colorIdentity , T1.asciiName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.cardKingdomId = T2.multiverseid WHERE T1.colorIdentity = "black" AND T2.language = "en"
SELECT name FROM cards WHERE rarity = 'uncommon ORDER BY date ASC
SELECT count(*) FROM cards WHERE cardKingdomId = "non-powerful" AND artist = "John Avon"
SELECT count(*) FROM cards WHERE colorIdentity = "white" AND power = "power"
SELECT count(*) FROM cards AS T1 JOIN cards AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T1.artist = "UDON" AND T1.type = "mtgprinttype" AND T1.computedManaCost = -1
SELECT count(*) FROM cards WHERE frame_version = "1993" AND available ON paper AND has_contentwarning
SELECT manaCost FROM cards WHERE frame_version = "2003" AND border_color = "black" AND layout = "normal" AND available = "paper" AND available_in_mtg = 1
SELECT sum(convertedManaCost) FROM cards WHERE artist = "Rob Alexander"
SELECT DISTINCT cardKingdomId FROM cards
SELECT set_code FROM set_translations WHERE language = "Spanish"
SELECT count(*) FROM cards WHERE frameEffect = "Legendary frame effect" AND online_available = "Yes"
SELECT count(*) , id FROM cards WHERE storyspotlight AND hasTextless EXCEPT SELECT count(*) , id FROM cards WHERE storyspotlight AND hasTextless
SELECT count(*) , asciiName FROM cards WHERE language = "Spanish" GROUP BY asciiName
SELECT T1.lang FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.baseSetSize = 309
SELECT count(*) FROM set_translations AS T1 JOIN languages AS T2 ON T1.setcode = T2.setcode WHERE T2.language = "Portuguese" AND T1.setcode = "Commander"
SELECT DISTINCT cardKingdomId FROM cards WHERE cardKingdomId IN (SELECT id FROM legalities WHERE status = "legal")
SELECT type FROM cards WHERE language = "German";
SELECT count(*) FROM cards WHERE cardKingdomId = "1" AND cardKingdomName = "Triggerability"
SELECT count(*) FROM cards WHERE cardKingdomId = "Pre-Modern" EXCEPT SELECT count(*) FROM cards WHERE cardKingid = (SELECT id FROM cards WHERE cardKingname = "This is a triggered mana ability." AND cardKingtype = "Pre-Modern")
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "paper" AND cardKingdomId = "paurent"
SELECT artist FROM cards WHERE cardKingdomId = "Das perfekte Gegenmittel zu einer dicht formation"
{"sql": "SELECT T1.asciiName , T1.colorIdentity , T1.cardKingdomId , T1.currency, T1.currencyName , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.cardKingdomId = T2.currency WHERE T1.type = 'Creature' AND T2.currencyName = 'French' AND T2.type = 'Normal' AND T2.borderColor = 'Black' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T2.currencyName = 'Black Border Color' AND T
SELECT count(*) FROM cards WHERE rarity = "01/02/2007"
SELECT T1.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Ravnica" AND T1.setCode = "180"
SELECT count(*) FROM cards WHERE format = "commander" AND legal_status != "warning"
SELECT count(*) FROM cards WHERE power != "power" AND language = "French"
SELECT count(*) FROM set_translations AS T1 JOIN languages AS T2 ON T1.language = T2.id WHERE T2.language = "Japanese" INTERSECT SELECT count(*) FROM set_translations AS T1 JOIN languages AS T2 ON T1.language = T2.language WHERE T2.language = "Expansion"
SELECT T1.printing FROM cards AS T1 JOIN cards AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T1.artist = "Daren Bader"
SELECT count(*) FROM cards WHERE coloridentity != "border" AND edhrecrank > 12000
SELECT count(*) FROM cards WHERE oversize_count = 1 AND set_code LIKE '%promotion%'
SELECT power FROM cards WHERE promoTypes LIKE '%Promo%' ORDER BY count(*) LIMIT 3
SELECT language FROM cards WHERE multiverseid = 149934
SELECT cardKingdomId FROM cards ORDER BY cardKingdomId DESC LIMIT 3
SELECT count(*) FROM cards WHERE cardKingdomId != "Normal"
SELECT cardKingdomId FROM cards WHERE faceConvertedManaCost != 0 AND subtypes LIKE '%Angel%' INTERSECT SELECT cardKingid FROM cards WHERE faceConvertedManaCost != 0 AND subtypes LIKE '%Wizard%'
SELECT name FROM sets WHERE isforeign_only = 'yes' OR isNonFoil = 'no' ORDER BY count(*) LIMIT 3
SELECT DISTINCT language FROM cards WHERE cardKingdomid = "Archenemy" AND cardKingdomcode = "ARC"
SELECT name FROM sets WHERE code = "setnumber 5"
SELECT language , expansion_type FROM cards WHERE id = 206
SELECT cardKingdomId , cardKingid FROM cards WHERE language = "Italian" AND block = "Shadowmoor" ORDER BY cardKingid DESC LIMIT 2
SELECT cardKingdomId FROM cards WHERE cardKingdomId NOT IN (SELECT cardKingdomId FROM sets WHERE setCode NOT IN (SELECT setCode FROM sets WHERE setCode != "United States") AND cardKingtype != "foil" AND cardKingtype != "name") AND cardKingtype != "name" AND cardKingtype != "name" AND cardKingtype != "name" AND cardKingtype != "name" AND cardKingtype != "name" AND cardKingtype != "name" AND cardKingtype != "name" AND cardKingtype != "name" AND cardKingtype != "name" AND cardKingtype != "name" AND cardKingtype != "name")
SELECT count(*) FROM cards WHERE language LIKE "%Russian%"
SELECT count(*) , sum(availability) FROM cards WHERE language = "Chinese Simplified" AND isOnlineOnly = 1
SELECT count(*) FROM SETS AS T1 JOIN foreign_data AS T2 ON T1.code = T2.code WHERE T2.language = "Japanese" EXCEPT SELECT count(*) FROM SETS AS T1 JOIN foreign_data AS T2 ON T1.code = T2.code WHERE T2.language = "Magic: The Gathering Online"
SELECT id FROM cards WHERE colorIdentity = 'black'
SELECT id FROM frame_effects WHERE frameEffects = "extendedart"
SELECT cardKingdomId FROM cards WHERE colorIdentity = "black" AND hasFullArt
SELECT language FROM cards WHERE setCode = "174"
SELECT code FROM SETS WHERE code = "ALL"
SELECT language FROM foreign_data WHERE name = "A Pel re Fellwar"
SELECT setcode FROM sets WHERE releaseDate = "07/13/2007"
SELECT baseSetSize , block FROM sets WHERE block LIKE "%Masques%" OR block LIKE "%Mirage%";
SELECT code FROM sets WHERE type = 'expansion'
SELECT T1.asciiName , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T2.type = "boros"
SELECT T1.flavorText , T1.lang, T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.cardKingdomId = T2.cardKing0000 WHERE T2.flavorText = "colorpie watermark"
SELECT count(*) FROM cards WHERE convertedManaCost = 10 AND cardKingdomId = "Abyssal Horror"
SELECT code FROM sets WHERE type = "Expansion Commander"
SELECT T1.asciiName , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T2.flavorText = "abanzam"
SELECT T1.lang FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.lang = "azorius"
SELECT count(*) FROM cards WHERE artist = "Aaron Miller" AND cardKingdomId = "Incredibly Powerable"
SELECT count(*) FROM cards WHERE cardKingdomId IN (SELECT cardKingdomId FROM cards WHERE convertedManaCost > 0) AND hand = "paper"
SELECT asciiName FROM cards WHERE cardKingdom_id = "textbox"
SELECT convertedManaCost FROM cards WHERE asciiName = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = "white" EXCEPT SELECT count(*) FROM cards WHERE power = "unknown"
{"sql": "SELECT faceName FROM cards WHERE promoType = \"Promo\" AND faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE promoType = \"Promo\" AND faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE promoType = \"Promo\" AND faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE promoType = \"Promo\" AND faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE promoType = \"Promo\" AND faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE promoType = \"Promo\" AND faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE promoType = \"Promo\" AND faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE promoType = \"Promo\" AND faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE promoType = \"Promo\" AND faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE promoType = \"Promo\"))))))")}
SELECT cardKingdomId FROM cards WHERE faceName = "Molimo, Maro-Sercerer"
SELECT T1.name FROM cards AS T1 JOIN promotional_types AS T2 ON T1.promoTypes = T2.promoTypes WHERE T2.promoTypes = "bundle"
SELECT count(*) FROM cards WHERE bordercolor = "black" AND cardkingdomid = "" AND availableity = "available" AND printings = "arena" INTERSECT SELECT count(*) FROM cards WHERE bordercolor = "black" AND availableity = "available" AND printings = "mtgarena"
SELECT convertedManaCost FROM cards WHERE cardKingdomId = "Serra Angel" OR cardKingdomId = "Shrine Keeper"
SELECT artist FROM cards WHERE promoType = "Batra, Dark Destroyer"
SELECT T1.asciiName FROM cards AS T1 JOIN cards AS T2 ON T1.convertedManaCost = T2.convertedManaCost ORDER BY T1.contractedManaCost DESC LIMIT 3;
SELECT asciiName FROM cards WHERE cardKingdomId = "Ancestor's Chosen" AND language = "Italian"
SELECT count(*) FROM set_translations AS T1 JOIN languages AS T2 ON T1.setcode = T2.setcode WHERE T2.language = "Angel of Mercy"
SELECT asciiName FROM cards WHERE setCode = "Hauptset Zehorde Edition"
SELECT T1.asciiName FROM cards AS T1 JOIN languages AS T2 ON T1.asciiName = T2.asciiName WHERE T2.language = "Korean" AND T1.asciiName LIKE '%Ancestor's Chosen%'
SELECT count(*) FROM cards WHERE cardKingdomId = "Hauptset Zehnte Edition" AND artist = "Adam Rex"
SELECT count(*) FROM cards WHERE setCode = "Hauptset Zehnte Edition"
SELECT T1.asciiName FROM cards AS T1 JOIN set_translations AS T2 ON T1.cardKingdomId = T2.cardKingdomId JOIN languages AS T3 ON T2.language = T3.language WHERE T3.language = "Simplified Chinese" AND T2.setCode = "Eighth Edition"
SELECT count(*) FROM cards WHERE cardKingdomId = "Angel of Mercy"
SELECT date FROM sets WHERE code = "Ancestor's Chosen"
SELECT expansion_type FROM cards WHERE set_code = "Hauptset Zehorde Edition"
SELECT count(*) FROM set_translations AS T1 JOIN languages AS T2 ON T1.setcode = T2.setcode WHERE T2.language = "Italian" AND T1.setcode = "Ice Age"
SELECT count(*) FROM cards WHERE cardKingdomId = "Adarkar Valkyrie" AND availability != "United States"
SELECT count(*) FROM set_translations AS T1 JOIN languages AS T2 ON T1.code = T2.code WHERE T2.language = "Italian" AND T1.setcode = "base_set_size" AND T1.setcode < 100
SELECT count(*) FROM cards WHERE coloridentity = "Coldspark" AND borderColor = "Black";
SELECT cardKingdomId FROM cards WHERE convertedManaCost = (SELECT convertedManaCost FROM cards WHERE setCode = "Coldsnap") GROUP BY cardKingdomId ORDER BY count(*) DESC LIMIT 1
SELECT artist FROM cards WHERE cardKingdomId = "Coldsnap" AND artist = "Jeremy Jarvis" OR artist = "Chippy"
SELECT cardKingdomId FROM cards WHERE cardKingdomId = "Coldsnap" AND cardNumber = "4"
SELECT count(*) FROM cards WHERE convertedManaCost > 5 AND cardKingdomId = "Coldspot" EXCEPT SELECT count(*) FROM cards WHERE cardKingdomId = "Coldspit"
SELECT flavor_text FROM cards WHERE flavor_text LIKE "%Ancestor's Chosen%"
SELECT DISTINCT language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.mcftid = T2.id WHERE T1.flavortext = "Ancestor's Chosen"
SELECT cardKingdomId FROM cards WHERE asciiName LIKE "%Ancestor's Chosen%" AND language = "German"
SELECT T1.text FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "Italian" AND T2.cardKingdomId = "Coldsnap"
{"sql": "SELECT asciiName FROM cards WHERE cardKingdomId = \"Coldspoint\" INTERSECT SELECT asciiName FROM cards WHERE convertedManaCost = (SELECT max(convertedManaCost) FROM cards WHERE cardKingdomId = \"Coldspoint\") AND cardKingdomId = \"Coldspoint\" AND cardKing00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT date FROM rulings WHERE asciiname = "Reminisce"
SELECT count(*) FROM cards WHERE convertedManaCost = 7 AND setCode = "Coldsnap"
SELECT count(*) FROM cards WHERE cardKingdomId = "Incredibly Powerfull" AND setCode = "Coldspart"
SELECT code FROM sets WHERE releaseDate = "2017/7/14"
SELECT keyrune_code FROM sets WHERE code = "PKHC"
SELECT T1.mcmid FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T2.code = 'SS2'
SELECT T1.mcmName FROM sets AS T1 JOIN foreign_data AS T2 ON T1.mcmId = T2.mcmId WHERE T1.originalReleaseDate = "2017/6/9"
SELECT expansion_type FROM cards WHERE set_code = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE code LIKE "%Commander 2014 Oversized%"
SELECT T1.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = "Jim Pavelec"
SELECT T1.originalReleaseDate FROM sets AS T1 JOIN foreign_data AS T2 ON T1.code = T2.code WHERE T2.flavorText = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T2.code = "Rinascita of Alara"
SELECT expansion_type FROM sets WHERE code = "Huitième édition"
SELECT T1.asciiName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.asciiName = T2.asciiName WHERE T2.language = "French" AND T2.mcmId = "Tendo Icing Bridge"
SELECT count(*) FROM set_translations AS T1 JOIN languages AS T2 ON T1.setcode = T2.setcode WHERE T2.language = "Tenth Edition"
SELECT T1.asciiName FROM cards AS T1 JOIN set_translations AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T2.language = "Japanese" AND T2.code = "Fellwar Stone"
SELECT card_name FROM cards WHERE set_code = "Journey into Nyx Hero's Path" ORDER BY convertedManaCost DESC LIMIT 1
SELECT date FROM sets WHERE code = "Ola de frío"
SELECT expansion_type FROM cards WHERE asciiName = "Samite Pilgrim"
SELECT count(*) FROM cards WHERE convertedManaCost = "3" AND setCode = "World Championship Decks 2004"
SELECT T1.asciiName , T1.asciiName FROM cards AS T1 JOIN set_translations AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T2.code = "Mirrodin" AND T2.language = "法语"
SELECT count(*) , sum(availableity) FROM cards WHERE language = "Japanese" AND nonfoil = "No"
SELECT count(*) , sum(availability) FROM cards WHERE language = "Brazil" AND online_only = 'Y' GROUP BY online_only
SELECT DISTINCT cardKingdomId FROM cards EXCEPT SELECT DISTINCT cardKing00 FROM cards WHERE cardKing00 = "Aleksi Briclot"
SELECT id FROM sets ORDER BY count(*) DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN cards AS T2 ON T1.artist = T2.artist WHERE T1.faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards WHERE faceConvertedManaCost = (SELECT faceConvertedManaCost FROM cards ORDER BY faceConvertedManaCost DESC LIMIT 1))
SELECT frameEffects FROM cards WHERE cardKingdomId = "Incredibly powerful" GROUP BY frameEffects ORDER BY count(frameEffects) DESC LIMIT 1
SELECT count(*) FROM cards WHERE cardkingdomid != 'foil' AND power != 'duel' AND cardkingdomid IN (SELECT cardkingdomid FROM cards WHERE cardtype = 'duel')
SELECT t1.id FROM sets AS t1 JOIN set_translations AS t2 ON t1.code = t2.code JOIN languages AS t3 ON t2.language = t3.id WHERE t1.type = "Set" AND t1.code = "Set-Commander" GROUP BY t1.id ORDER BY sum(count(*)) DESC LIMIT 1
SELECT max(uncochanged manacost) FROM cards WHERE cardKingdomid = "Duel"
SELECT max(originalReleaseDate) , format FROM legalities WHERE status = 'legal' AND format = 'legal'
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.cardKingdomId = T2.cardKing0000 WHERE T2.language = "French" AND T1.artist = "Volkan Bağım"
SELECT count(*) FROM legalities AS T1 JOIN cards AS T2 ON T1.status = "legal" AND T1.format = "Abundance" WHERE T1.format_status = "legal"
SELECT format , T1.name FROM legalities AS T1 JOIN legalities AS T2 ON T1.status = T2.status WHERE T1.format = "Banned" GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT language FROM languages WHERE code = "Battlebond"
SELECT T1.artist , T1.asciiName , T1.cardKingdomId , T1.con.transname FROM cards AS T1 JOIN legalities AS T2 ON T1.scryfallIllustration_id = T2.uuid GROUP BY T1.artist ORDER BY count(*) LIMIT 1
SELECT status FROM cards WHERE frame_version = "1997" INTERSECT SELECT status FROM cards WHERE card_name LIKE "%D. Alexander Gregory%" AND legalities.format = "legendary" AND legalities.status = "active" AND legalities.format = "legendary" AND legalities.status = "active"
SELECT name , banned_play_format FROM cards WHERE edhrecrank = 1;
SELECT avg(available) FROM cards WHERE originalReleaseDate BETWEEN '1/1/2012' AND '12/31/2015' AND language LIKE '%card%'
SELECT artist FROM cards WHERE availability = 'Arena' AND border_color = 'Black'
SELECT uuid FROM cards WHERE cardKingdomId = 'oldschool' OR format = 'banned'
SELECT count(*) FROM cards WHERE artist = "Matthew D. Wilson" AND available = "paper"
SELECT date FROM rulings WHERE cardKingdomId = "Kev Walker" ORDER BY date DESC
SELECT DISTINCT T1.formats FROM legalities AS T1 JOIN sets AS T2 ON T1.formats = T2.formats WHERE T2.code = "Hour of Devastation"
SELECT name FROM SET_TABLES WHERE code NOT IN (SELECT setcode FROM set_translations WHERE language = 'Korean')
SELECT frameEffects , cardKingdomId FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKingdomId FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams" INTERSECT SELECT frameEffects , cardKing0 FROM cards WHERE artist = "Allen Williams"
SELECT T1.displayname FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid JOIN posts AS T3 ON T3.postid = T2.postid WHERE T1.reputation > (SELECT min(reputation) FROM users WHERE displayname = 'Harlan' OR displayname = 'Jardro Dixon')
SELECT T2.Displayname FROM users AS T1 JOIN users AS T2 ON T1.AccountId = T2.AccountId WHERE T1.CreationDate = 2011
SELECT count(*) FROM users WHERE lastaccessed_date > '2014/9/1'
SELECT T1.displayname FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid GROUP BY T2.postid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM users WHERE upvotes > 100 INTERSECT SELECT count(*) FROM users WHERE downvotes > 1
SELECT count(*) FROM users WHERE id NOT IN (SELECT userid FROM votes WHERE creationdate > 2013 GROUP BY userid HAVING sum(viewcount) > 10)
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.displayname = "csgillespie"
SELECT T1.Title FROM posts AS T1 JOIN posts AS T2 ON T1.OwnerUserId = T2.OwnerUserId WHERE T2.OwnerUserId = 2000000000
SELECT T2.OwnerUserId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = "Eliciting priors from experts"
SELECT T1.Title FROM posts AS T1 JOIN posts AS T2 ON T1.OwnerUserId = T2.OwnerUserId WHERE T2.OwnerDisplayName = 'csgillespie' ORDER BY T2.ViewCount DESC LIMIT 1
SELECT T1.Displayname FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.postid WHERE T2.owneruserid = "csgillespie"
SELECT count(*) FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.userdisplayname = "csgillespie"
SELECT T1.displayname FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.lasteditoruserid WHERE T2.title = "Examples for teaching: Correlation does not mean causation" AND T2.lasteditdate = "2011-03-12"
SELECT count(*) FROM posts WHERE OwnerUserId = "csgillespie" AND PostId = (SELECT PostId FROM posts WHERE T1.ParentId = T2.PostId AND T1.OwnerUserId = "csgillespie")
SELECT T1.Displayname FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.postid IN (SELECT postid FROM posts WHERE status = 'Completed')
SELECT count(*) FROM posts WHERE OWNER_userid = (SELECT user_id FROM posts WHERE score > 19)
SELECT T2.Location FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = "Eliciting priors from experts"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T2.TagName = "bayesian";
SELECT t1.body FROM tags AS t1 JOIN posts AS t2 ON t1.excerptpostid = t2.id GROUP BY t2.excerptpostid ORDER BY count(*) DESC LIMIT 1
{"sql": "SELECT count(*) FROM badges WHERE id = (SELECT id FROM badges WHERE name = \"Csgillespie")"}
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.Displayname = 'Csgillespie'
SELECT count(*) FROM badges WHERE userid = 1 AND date = 2011
SELECT T1.displayname FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid GROUP BY T2.userid ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.Score) FROM posts AS T1 JOIN posts AS T2 ON T1.OwnerUserId = T2.OwnerUserId WHERE T2.OwnerDisplayName = "csgillespie"
SELECT avg(T1.badge_count) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.Views > 200
SELECT count(*) , count(OWNERUSERID) FROM posts WHERE score > 5 GROUP BY OWNERUSERID HAVING count(*) > 1
SELECT count(*) FROM votes WHERE voteid = 58 AND creationdate = "2010-7-19"
SELECT max(CreationDate) FROM votes
SELECT count(*) FROM badges WHERE Name = "Revolutionary";
SELECT T1.Title FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid ORDER BY T2.score DESC LIMIT 1
SELECT count(*) FROM posts WHERE ViewCount = 1910 GROUP BY PostId
SELECT count(*) FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.userdisplayname = 'User No. 3025' AND T2.creationdate = '2024-4-23 20:29:39'
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.ParentId WHERE T2.ParentId = 107829
SELECT count(*) FROM comments WHERE postid = (SELECT id FROM posts WHERE date = '2013/7/12' AND score = 1000)
{"sql": "SELECT reputation_points FROM users WHERE id = 20100222100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100010001000100
SELECT count(*) FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.postid JOIN posts AS T3 ON T2.postid = T3.id WHERE T1.displayname = "Tiago Pasqualini"
SELECT T2.Displayname FROM votes AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.id = 6347
SELECT count(*) FROM votes WHERE postid = 1;
SELECT T2.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.Displayname = "DatEpicCoderGuyWhoPrograms"
SELECT count(*) , count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T1.id = 24
SELECT count(*) FROM posts WHERE title = "Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer"
SELECT T1.Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.Reputation = 17
SELECT T1.username FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.postid = 'stackoverflow.com'
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.DisplayName = 'SilentGhost'
SELECT T1.displayname FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.text = 'thank you user93!'
SELECT T1.Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.DisplayName = 'A Lion'
SELECT T2.Reputation , T1.id FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.UserId WHERE T2.Text = 'Understanding what Dassault iSight is doing'
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.id WHERE T2.Title = "How does gentle boosting differ from AdaBoost"
SELECT T1.displayname FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = 'Necromancer' GROUP BY T1.displayname HAVING count(*) = 10
SELECT T2.lasteditdate FROM posts AS T1 JOIN lastedituser AS T2 ON T1.lastedituser_id = T2.lastedituser_id WHERE T1.title = "Open source tools for visualizing multi-dimensional data"
SELECT T1.Title FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T3.id = T2.lasteditoruserid WHERE T3.displayname = 'Vebjorn Ljosa'
SELECT sum(T1.Score) , T1.TwitterID FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.lastedituserid JOIN comments AS T3 ON T3.userid = T1.id WHERE T1.username = 'Yevgeny'
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "Why square the difference instead of taking the absolute value in standard deviation"
SELECT sum(bounties) FROM votes WHERE postid = 1 AND title = 'data'
SELECT T2.userdisplayname FROM votes AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.bountymamount = 50 AND T1.postid = T2.postid
SELECT T1.title , T1.text , T2.votecount FROM posts AS T1 JOIN votes AS T2 ON T1.postid = T2.postid JOIN posts AS T3 ON T2.postid = T3.postid WHERE T2.votetype = 2 AND T3.tags = 'humor' GROUP BY T2.postid ORDER BY count(*) DESC
SELECT sum(t1.usercount) FROM users AS t1 JOIN comments AS t2 ON t1.id = t2.userid WHERE t1.id = 13
SELECT T1.id FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid ORDER BY T2.voteTypeId DESC LIMIT 1
SELECT T1.id FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid ORDER BY T2.votecount LIMIT 1
SELECT count(*) FROM badges WHERE date = 2011
SELECT count(*) FROM badges WHERE id = (SELECT id FROM badges WHERE count > 5)
SELECT count(*) FROM badges WHERE user_id IN (SELECT id FROM users WHERE location = 'New York' AND userdisplayname = 'Teacher' INTERSECT SELECT id FROM users WHERE location = 'New York AND userdisplayname = 'Supporter')
SELECT T2.reputation , T1.id FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.postid = 1
SELECT T1.userdisplayname FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userid GROUP BY T1.id HAVING count(*) = 1000
SELECT T1.UserId , T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE users.id = (SELECT userid FROM badges WHERE name = 'Teacher') AND location = 'India';
SELECT count(DISTINCT date) - count(DISTINCT date) FROM badges WHERE date BETWEEN '2010-01-01' AND '2011-01-01'
SELECT count(DISTINCT t1.postid) , count(DISTINCT t1.postid) FROM posts AS t1 JOIN posthistory AS t2 ON t1.id = t2.postid WHERE t1.postid = 3720 GROUP BY t1.postid HAVING count(DISTINCT t1.postid) = 1 GROUP BY t1.postid HAVING count(DISTINCT t1.postid) = 1
SELECT T1.Title , COUNT(*) FROM posts AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T2.id = 61217 GROUP BY T1.Title
SELECT T1.Score , T1.LinkTypeID FROM posts AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T2.PostId = 395
SELECT T2.postid , T1.userid FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.postid WHERE T1.score > 60
SELECT sum(favorite_count) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.favorite_count WHERE T1.id = 686 AND T2.CreationDate = 2011
SELECT avg(upvotes) , avg(age) FROM users WHERE upvotes > 10
SELECT count(*) FROM badges WHERE name = "Announcer";
{"sql": "SELECT T2.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T1.Date = \"2010-07-19-07-39-08-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-
SELECT count(*) FROM comments WHERE text > "positive"
SELECT T1.Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.CreationDate = "2010-07-19 7:25:47"
SELECT count(*) FROM posts WHERE score = 10
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id ORDER BY T2.reputation DESC LIMIT 1
SELECT T1.reputation FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.date = "2010-07-19-7:39:08-PM"
SELECT T2.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.displayname = "Pierre"
SELECT T1.CreationDate FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.location = "Restock, NY"
SELECT count(*) , sum(t2.reputation) FROM badges AS t1 JOIN users AS t2 ON t1.userid = t2.id WHERE t1.name = "Teacher"
SELECT count(*) , count(*) FROM badges WHERE name = 'Organizer' AND age < 100 AND id = (SELECT id FROM badges WHERE name = 'Organizer' AND age < 100)
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate = "7/19/2010 7:19:56 PM"
SELECT T1.Text FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.CreationDate = "7/19/2010 7:37:33 AM"
SELECT T2.Age FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.Location = "Vienna, Austria" AND T1.Name = "List of users obtaining the badge"
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.age = 1 AND T1.id = T2.userid AND T2.name = 'Supporter'
SELECT count(*) FROM badges WHERE Date = "2010-07-19-7:39:08-PM"
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id ORDER BY T2.Reputation LIMIT 1
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.Displayname = "Sharpie"
SELECT count(*) FROM badges WHERE Name = "Supporter"
SELECT T1.Displayname FROM users AS T1 JOIN users AS T2 ON T1.id = T2.id WHERE T2.id = 30
SELECT count(*) FROM users WHERE LOCATION = "New York";
SELECT count(*) FROM votes WHERE CreationDate = "2010"
SELECT count(*) FROM users WHERE age > 10
SELECT T1.displayname FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid ORDER BY T2.votecount DESC LIMIT 1
SELECT count(*) , count(*) FROM votes WHERE cast(1 as integer) = 1 AND cast(1 as integer) = 2
SELECT T2.TagName FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.id WHERE T2.OwnerUserId = 1 AND T2.OwnerDisplayName = 'John Salvatier'
SELECT count(*) FROM users AS T1 JOIN users AS T2 ON T1.id = T2.id WHERE T1.displayname = "Daniel Vassallo"
SELECT count(*) FROM votes WHERE userdisplayname = 'Harlan'
SELECT T1.postid FROM posts AS T1 JOIN comments AS T2 ON T1.postid = T2.postid GROUP BY T1.postid ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM posts AS T1 JOIN votes AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T3.id = T2.userid WHERE T3.displayname = 'Harvey Motulsky' INTERSECT SELECT count(*) FROM posts AS T1 JOIN votes AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T3.id = T2.userid WHERE T3.displayname = 'Noach Snyd' ORDER BY T2.score DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId JOIN users AS T3 ON T3.id = T3.id WHERE T3.displayname = "Matt Parker" AND T1.votecount > 4
SELECT count(*) FROM comments WHERE userdisplayname = "Neil McGuigan" AND text = "-1";
SELECT T1.TagName FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T2.OwnerUserId = 2 AND T2.OwnerDisplayName = 'Mark Meckes'
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.reputation = 1
SELECT count(*) , count(*) FROM posts WHERE community_owned_date LIKE '%Community%' AND posttype_id = 2 GROUP BY community_owned_date
SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T1.OwnerUserId = 'Mornington' INTERSECT SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T1.OwnerUserId = 'Amos'
SELECT count(*) FROM badges WHERE DATE = '2014'
SELECT count(*) FROM posts WHERE CreationDate = "21/July/2010"
SELECT T1.Displayname , T2.Age FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid ORDER BY T2.bounties DESC LIMIT 1
SELECT lasteditdate , lastedituserid FROM posthistory WHERE title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE user_id = 13
SELECT T1.Title , T2.userdisplayname FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.Score = 1
SELECT T2.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.location = "North Pole" AND T1.date = "2011"
SELECT T1.displayname , T2.websiteurl FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.favoritecount WHERE T2.favoritecount > 150
SELECT count(*) , lasteditdate FROM posthistory AS T1 JOIN posts AS T2 ON T1.postid = T2.postid WHERE title = "What is the best introductory Bayesian statistics textbook"
SELECT T1.LastAccessDate , T1.Location FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId WHERE T2.name = 'outlooks'
SELECT T1.Title FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid WHERE T1.title = "How to tell if something happened in a data set which monitors a value over time"
SELECT T1.postid , T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'Samuel' AND T1.date = 2013
SELECT T2.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.id GROUP BY T2.OwnerUserId ORDER BY count(*) DESC LIMIT 1
SELECT T1.Displayname , T2.Location FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId JOIN tags AS T3 ON T2.ExcerptPostId = T3.ExcerptPostId WHERE T3.TagName = 'hypthesis-testing'
SELECT T1.title , T1.RelatedPostId FROM posts AS T1 JOIN postlinks AS T2 ON T1.id = T2.PostId WHERE T1.title = "What are principal component scores"
SELECT T1.Displayname FROM posts AS T1 JOIN postlinks AS T2 ON T1.ParentId = T2.PostId ORDER BY T1.Score DESC LIMIT 1
SELECT T1.displayname , T2.websiteurl FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.bountyamount = 8 ORDER BY T2.bountymount DESC LIMIT 1
SELECT T1.Title FROM posts AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId GROUP BY T2.PostId ORDER BY T2.ViewCount DESC LIMIT 5
SELECT count(*) FROM tags WHERE tagname LIKE '%post%' AND count BETWEEN 5000 AND 7000
SELECT T2.OwnerUserId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.Score DESC LIMIT 1
SELECT age FROM users ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T1.BountyAmount = 50 AND T2.CreationDate = 2011
SELECT id FROM users ORDER BY age LIMIT 1
SELECT sum(T2.Score) FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.CreationDate = "2010-07-19"
SELECT count(*) FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T2.AcceptedAnswerId = 2 AND T2.CreationDate = 2010 GROUP BY T1.PostId HAVING count(*) <= 2
SELECT T1.PostId FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId JOIN users AS T3 ON T1.UserId = T3.Id WHERE T3.id = 1465 ORDER BY T2.Score DESC LIMIT 1
SELECT T1.Title FROM posts AS T1 JOIN postlinks AS T2 ON T1.PostId = T2.PostId ORDER BY T2.CreationDate LIMIT 1
SELECT T1.displayname FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid GROUP BY T2.userid ORDER BY count(*) DESC LIMIT 1
SELECT max(CreationDate) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T1.votetype_id = 1 AND T1.UserId = 1
SELECT min(CreationDate) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T2.Age LIMIT 1
SELECT T1.displayname FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = 'Autobiographer'
SELECT count(*) FROM users WHERE LOCATION = "United Kingdom" INTERSECT SELECT count(*) FROM users WHERE favorite_count > 4
SELECT avg(T2.Age) FROM users AS T1 JOIN users AS T2 ON T1.id = T2.id WHERE T1.Age = (SELECT max(Age) FROM users)
SELECT T2.displayname FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid JOIN posts AS T3 ON T3.postid = T2.postid ORDER BY reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 INTERSECT SELECT count(*) FROM users WHERE views > 1000
SELECT T2.Displayname FROM users AS T1 JOIN users AS T2 ON T1.id = T2.id WHERE T1.age > 1
SELECT count(*) FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.userdisplayname = "Jay Stevens" AND T1.CreationDate = "2010"
SELECT T1.id , T1.title FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.userdisplayname = 'Harvey Motulsky' ORDER BY T2.votes DESC LIMIT 1;
SELECT postid , title FROM posts ORDER BY score DESC LIMIT 1;
{"sql": "SELECT avg(T1.Score) FROM posts AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T2.UserId = 20020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.displayname FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.acceptedanswerid JOIN comments AS T3 ON T2.id = T3.postid WHERE T2.reputation = 2011 AND T3.votetype_id = 200000
SELECT T1.id , T2.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.id WHERE T1.CreationDate = "2010" GROUP BY T1.OwnerUserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , sum(T1.reputation) FROM users AS T1 JOIN posts AS T2 ON T1.owneruserid = T2.owneruserid WHERE T2.creiondate = '2011' AND T1.reputation > 1000
SELECT count(*) FROM users WHERE age BETWEEN 11 AND 13
SELECT T1.Tcount FROM posts AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T1.Title = "Computer Game Datasets" ORDER BY T2.LasActivityDate DESC LIMIT 1;
SELECT sum(viewcount) FROM posts WHERE postid IN (SELECT postid FROM posts ORDER BY viewcount DESC LIMIT 1)
SELECT count(*) FROM comments WHERE postid IN (SELECT postid FROM comments ORDER BY score DESC LIMIT 1)
SELECT count(*) FROM posts WHERE viewcount > 35000 AND count(PostId) = 0
SELECT T1.Displayname , T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.lastedituserid WHERE T2.lasteditdate = '183'
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.Displayname = "Emmett" ORDER BY T1.Date DESC LIMIT 1
SELECT count(*) FROM users WHERE age > 100 GROUP BY age HAVING sum(upvotes) > 5000
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId WHERE T1.displayname = 'Zolomon'
SELECT count(*) , count(*) FROM comments AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.accountid = (SELECT min(accountid) FROM users)
SELECT T1.Text , T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T1.PostId = (SELECT PostId FROM comments ORDER BY T1.CreationDate DESC LIMIT 10)
SELECT count(*) FROM badges WHERE Name = 'Citizen Patrol'
SELECT count(*) FROM tags WHERE tagname = 'careers'
SELECT reputation , count(*) FROM users WHERE displayname = 'Jarrod Dixon'
SELECT count(*) , count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title = 'Clustering 1D data'
SELECT CreationDate FROM users WHERE Displayname = "IrishStat"
SELECT count(*) FROM posts WHERE bountyamount > 30
SELECT count(*) , sum(T2.Score) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T1.reputation = (SELECT max(T1.reputation) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T1.reputation > 50) GROUP BY T1.id HAVING count(*) > 1
SELECT count(*) FROM posts WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 GROUP BY id HAVING sum(count) <= 20
SELECT T2.ExcerptPostId , T1.ExcerptPostId FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T1.TagName = "sample"
SELECT T2.Reputation , T2.UpVotes FROM users AS T1 JOIN users AS T2 ON T1.id = T2.id WHERE T1.UpVotes = 1 AND T1.reputation = 1 AND T1.reputation = 1 AND T1.upvotes = 1 AND T1.reputation = 1 AND T1.reposition = 1 AND T1.reposition = 1
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.id WHERE T2.PostType = 'linear regression'
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId WHERE T2.ViewCount BETWEEN 100 AND 150 ORDER BY T1.Score DESC LIMIT 1
SELECT T1.CreationDate , T1.Age FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.postid = 2
SELECT count(*) FROM comments WHERE score = 0 AND count(*) < 5
SELECT count(*) FROM comments WHERE postid = 1
SELECT count(*) FROM users WHERE age = 40 GROUP BY age
SELECT T1.postid , T1.text FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.postid IN (SELECT T1.postid FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.text LIKE '%Group differences on a five point Likert item%')
SELECT T1.upvotes FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid JOIN posts AS T3 ON T3.postid = T2.postid WHERE T2.voteid = 1 AND T3.title = "R is also lazy evaluated"
SELECT T1.Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.displayname = "Harvey Motulsky"
SELECT T2.Displayname FROM comments AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.score BETWEEN 1 AND 5 GROUP BY T2.displayname HAVING count(*) = 0
SELECT count(*) , sum(upvotes) FROM votes WHERE score BETWEEN 5 AND 10 GROUP BY postid
SELECT power_name FROM superpower WHERE power_name LIKE "%3-D%"
SELECT count(*) FROM superhero WHERE superpower_id = 1
SELECT count(*) FROM superhero WHERE superpower_name = "Super Strength" AND height_cm > 200
SELECT superhero_name FROM superhero WHERE superpower_id > 15
SELECT count(*) FROM superhero WHERE eye_colour_id = 3;
SELECT skin_colour_id FROM superhero WHERE full_name = "Apical";
SELECT count(*) FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour_id = 2 AND superpower.id = 2
SELECT superhero_name FROM superhero WHERE eye_colour_id = 1 AND hair_color_id = 1
SELECT count(*) FROM superhero WHERE publisher_name = "Marvel Comics"
SELECT T2.height_cm FROM superhero AS T1 JOIN attribute AS T2 ON T1.height_cm = T2.height_cm ORDER BY T1.height_cm DESC
SELECT publisher_name FROM publisher WHERE publisher_name = "Sauron"
SELECT count(*) , eye_colour_id FROM superhero GROUP BY eye_colour_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(height_cm) FROM superhero WHERE superhero_name = "Marvel Comics"
SELECT superhero_name FROM superhero WHERE superpower_id = 1 AND superpower_name = 'Super Strength'
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "DC Comics"
SELECT publisher_name FROM publisher WHERE publisher_name LIKE "%the slowest superhero%"
SELECT count(*) FROM superhero WHERE eye_colour_id = "gold"
SELECT publisher_name FROM publisher WHERE publisher_name = "Blue Beetle II"
SELECT count(*) FROM superhero WHERE hair_colour_id = " blonde "
SELECT superhero_name FROM superhero ORDER BY full_name DESC LIMIT 1
SELECT race FROM superhero GROUP BY race ORDER BY count(*) DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE attribute_value = "50" AND attribute_name = "durability"
SELECT superhero_name FROM superhero WHERE power_name = "death touch"
SELECT count(*) FROM superhero WHERE gender_id = 2 AND full_name = "Female 100"
SELECT superhero_name FROM superhero GROUP BY superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE gender_id = 2;
SELECT count(*) , sum( (SELECT count(*) FROM superhero AS T1 JOIN superhero AS T2 ON T1.id = T2.id WHERE T1.full_name = "Superman" AND T1.gender_id = 1 AND T1.race_id = 1 AND T1.publisher_id = 1 AND T1.publisher_name = "Marvel Comics" ) ) FROM superhero WHERE T1.full_name = "Superman" AND T1.gender_id = 1 AND T1.race_id = 1 AND T1.publisher_name = "Marvel Comics"
SELECT publisher_name , count(*) FROM superhero WHERE publisher_name = "DC" INTERSECT SELECT publisher_name , count(*) FROM superhero WHERE publisher_name = "Marvel Comics" GROUP BY publisher_name ORDER BY count(*) DESC LIMIT 1;
SELECT publisher_id FROM superhero WHERE superhero_name = 'Star Trek'
SELECT avg(attribute_value) FROM superhero
SELECT count(*) FROM superhero WHERE full_name != "Superman"
SELECT eye_colour_id FROM superhero WHERE superhero_id = 75
SELECT superpower.power_name FROM superpower AS superpower_1 JOIN superhero AS superpower_2 ON superpower_1.id = superpower_2.id WHERE superpower.power_name = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT power_name FROM superpower AS t1 JOIN superpower AS t2 ON t1.power_id = t2.power_id WHERE gender_id = 1 GROUP BY power_name ORDER BY count(*) DESC LIMIT 5
SELECT superhero_name FROM superhero ORDER BY superhero_name
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 EXCEPT SELECT superhero_name FROM superhero WHERE eye_colour_id IN (SELECT eye_colour_id FROM superhero WHERE height_cm BETWEEN 170 AND 190)
SELECT superpower.power_name FROM superpower AS superpower1 JOIN hero_power AS superpower2 ON superpower2.id = superpower1.id WHERE superpower2.power_name = "superpower" AND superpower2.id = 56
SELECT full_name FROM superhero WHERE gender_id = 2 AND superhero_name = 'Demi-Gon'
SELECT count(*) FROM superhero WHERE superhero_name = 'bad superhero'
SELECT race FROM superhero WHERE weight_kg = 169;
SELECT hair_colour_id FROM superhero WHERE height_cm = 185
SELECT eye_colour_id FROM superhero WHERE height_cm = (SELECT max(height_cm) FROM superhero)
SELECT count(*) , count(*) FROM superhero WHERE height_cm BETWEEN 150 AND 180 AND publisher_name = 'Marvel Comics'
SELECT superhero_name FROM superhero WHERE gender_id = 1 AND height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT power_name FROM superpower GROUP BY power_name ORDER BY count(*) DESC LIMIT 1
SELECT attribute_value FROM superhero WHERE superhero_name = "Abomination"
SELECT superpower.power_name FROM superpower AS superpower1 JOIN hero_power AS superpower2 ON superpower2.id = superpower2.id JOIN superhero AS superpower3 ON superpower3.id = superpower3.id WHERE superpower3.id = 1;
SELECT count(*) FROM hero_attribute AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = "stealth power"
SELECT full_name FROM superhero ORDER BY hero_attribute.values DESC LIMIT 1
SELECT avg(t1.full_name) FROM superhero AS t1 JOIN colour AS t2 ON t1.skin_colour_id = t2.id WHERE t2.colour_id = "null"
SELECT count(*) FROM superhero WHERE publisher_name = "Dark Horse Comics"
SELECT superhero_name FROM superhero WHERE publisher_name = 'Dark Horse Comics' GROUP BY superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT eye_colour_id FROM superhero WHERE superhero_name = "Abraham Sapien"
SELECT superhero_name FROM superhero WHERE superpower_id = 1
SELECT eye_colour_id , hair_colour_id , skin_colour_id FROM superhero WHERE gender_id = 2 AND publisher_id = 1 AND publisher_name = 'Dark Horse Comics'
SELECT T2.publisher_name FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id JOIN superhero AS T3 ON T3.gender_id = T3.gender_id JOIN superhero AS T4 ON T3.race_id = T4.race_id JOIN superhero AS T5 ON T4.publisher_id = T5.publisher_name WHERE T1.eye_colour_id = T2.id AND T2.colour_id = T4.colour_id AND T4.publisher_name = T5.publisher_name
SELECT T2.alignment_id FROM superhero AS T1 JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T1.full_name = "A-Bomb"
SELECT count(*) , gender_id FROM gender AS T1 JOIN superhero AS T2 ON T1.id = T2.gender_id WHERE gender_id = 2 AND T1.gender = 'female' GROUP BY T1.id HAVING count(*) = 2
SELECT superhero_name , race_id FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT gender_id FROM gender WHERE gender_name = "Agent 13"
SELECT superhero_name FROM superhero WHERE power_name = 'Adaption Power'
SELECT count(*) FROM superhero WHERE superhero_name = "Amazo";
SELECT power_name FROM superpower AS T1 JOIN superhero AS T2 ON T1.power_id = T2.power_id WHERE T2.full_name = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id = 2;
SELECT superhero_name FROM superhero WHERE eye_colour_id = "black" AND hair_colour_id = "black"
SELECT eye_colour_id FROM superhero WHERE skin_colour_id = "gold"
SELECT full_name FROM superhero WHERE gender_id = 1 AND superhero_name = 'vampire hero'
SELECT superhero_name FROM superhero WHERE alignment_id = 1 AND alignment.alignment = 1
SELECT count(*) FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = "strength" ORDER BY T1.attribute_value DESC LIMIT 1
SELECT race , alignment FROM superhero WHERE superhero_name = "Cameron Hicks"
SELECT count(*) FROM hero_attribute AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id JOIN hero_attribute AS T3 ON T3.attribute_id = T2.id JOIN hero_attribute AS T4 ON T4.attribute_id = T2.id JOIN hero_attribute AS T5 ON T4.attribute_id = T2.id JOIN hero_attribute AS T6 ON T6.attribute_id = T2.id JOIN hero_attribute AS T7 ON T6.attribute_id = T2.id JOIN hero_attribute AS T8 ON T6.attribute_id = T2.id JOIN hero_attribute AS T9 ON T6.attribute_id = T2.id JOIN hero_attribute AS T10 ON T6.attribute_id = T2.id JOIN hero_attribute AS T11 ON T6.attribute_id = T2.id WHERE T1.id = 2 AND T2.power_name = 'Marvel Comics' AND T1.id = 2 AND T2.id = 2
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 1 AND race_id = 1
SELECT T2.height_cm - T1.height_cm FROM superhero AS T1 JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T1.height_cm = 1000 AND T1.height_cm = 1000
SELECT avg(height_cm) , superhero_name FROM superhero GROUP BY superhero_name
SELECT power_name FROM superpower WHERE power_name = "Abomination"
SELECT count(*) FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = "God/eternal" AND T1.gender_id = 1
SELECT superhero_name FROM superhero ORDER BY speed DESC LIMIT 1
SELECT count(*) FROM superhero WHERE alignment_id = 2
SELECT attribute_value FROM hero_attribute WHERE attribute_name = '3-D Man' GROUP BY attribute_value HAVING count(*) = 3
SELECT superhero_name FROM superhero WHERE eye_colour_id = 2 AND hair_color_id = 2
SELECT publisher_name FROM publisher WHERE publisher_name = "Hawkman" INTERSECT SELECT publisher_name FROM publisher WHERE publisher_name = "Karate Kid" INTERSEPT SELECT publisher_name FROM publisher WHERE publisher_name = "Speedy"
SELECT count(*) FROM superhero WHERE publisher_id != 1
SELECT count(*) , sum( eye_colour_id ) FROM superhero WHERE eye_colour_id = "blue"
SELECT count(*) , count(*) FROM gender AS t1 JOIN superhero AS t2 ON t1.id = t2.gender_id WHERE t1.gender_id = 1 GROUP BY t1.id HAVING count(*) > count(*)
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = "cryokisnesity"
SELECT superhero_name FROM superhero WHERE id = 294
SELECT superhero_name FROM superhero WHERE height_cm LIKE "%missing%"
SELECT eye_colour_id FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT superpower.power_name FROM superpower AS superpower1 JOIN superhero AS superpower2 ON superpower2.power_id = superpower2.power_name WHERE superpower2.full_name = "Helen Parr"
SELECT race FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT publisher_name FROM publisher WHERE id = 38
SELECT race FROM superhero GROUP BY race ORDER BY sum(attribute_value) DESC LIMIT 1
SELECT T2.alignment_name , T2.superpower_name FROM superhero AS T1 JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE superpower_name = "Atom IV"
SELECT full_name FROM superhero WHERE eye_colour_id = 2
SELECT avg(attribute_value) FROM superhero WHERE gender_id = 2 AND attribute_name = "neutral"
SELECT skin_colour_id FROM superhero WHERE attribute_value = 100
SELECT count(*) FROM gender AS T1 JOIN superhero AS T2 ON T1.id = T2.gender_id WHERE gender_id = 2 AND gender_name = "female"
SELECT superhero_name FROM superhero WHERE attribute_value BETWEEN 75 AND 80
SELECT race FROM superhero WHERE gender_id = 1 AND hair_colour_id = 2;
SELECT count(*) , gender_id FROM gender AS T1 JOIN superhero AS T2 ON T1.id = T2.gender_id WHERE gender_id = 2 GROUP BY gender_id HAVING count(*) = 1
SELECT count(*) , count(*) FROM superhero WHERE eye_colour_id != 'blue' AND skin_colour_id != 'black'
SELECT full_name FROM superhero WHERE superhero_name = "Hulk"
SELECT power_name FROM superpower WHERE power_name LIKE "%Ajax%"
SELECT count(*) FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id JOIN hero_attribute AS T3 ON T3.attribute_id = T2.id JOIN attribute AS T4 ON T3.attribute_value = T4.attribute_name WHERE T4.color_id = "green" AND T4.color_id = "green"
SELECT count(*) FROM superhero WHERE gender_id = 2 AND superhero_name = 'Superman'
SELECT superhero_name FROM superhero WHERE superpower_id = 1 AND attribute_name = 'wind' ORDER BY superhero_name
SELECT T2.gender FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.full_name = "Phoenix Force"
SELECT superhero_name FROM superhero WHERE height_cm = (SELECT max(height_cm) FROM superhero)
SELECT avg(height_cm) FROM superhero WHERE superhero_name = "Dark Horse Comics" AND gender_id = 2
SELECT count(*) FROM superhero WHERE superhero_name = "Godfather" AND superpower_name = "Defence"
SELECT publisher_name , count(*) FROM superhero GROUP BY publisher_name HAVING sum(count(*)) > 1;
SELECT min(attribute_name) FROM superhero WHERE race_id = 1 AND gender_id = 2;
SELECT eye_colour_id FROM superhero WHERE superhero_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT count(*) , count(*) FROM superhero WHERE gender_id = (SELECT id FROM gender WHERE gender_name = 'female') AND superhero_name = "George Lucas"
SELECT count(*) , sum( 'good' ) FROM superhero WHERE superhero_name = "Superman" AND publisher_name = "Marvel"
SELECT count(*) FROM superhero WHERE superhero_name LIKE "%John%"
SELECT hero_id FROM hero_attribute ORDER BY attribute_value ASC LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT superhero_name FROM superhero WHERE eye_colour_id = 100 AND gender_id = 100 AND skin_color_id = 100
SELECT attribute_value FROM superhero WHERE superhero_name = "Aquababy"
SELECT weight_kg , race FROM superhero WHERE superhero_id = 40
SELECT avg(height_cm) FROM superhero WHERE gender_id = 2 AND superhero_name = "neutral"
SELECT superhero_id FROM superpower AS t1 JOIN superhero AS t2 ON t1.power_id = t2.power_id JOIN superpower AS t3 ON t3.id = t2.power_id WHERE power_name = "intelligence"
SELECT eye_colour_id FROM superhero WHERE gender_id = 1 AND eye_colour_id = "Blackwulf"
SELECT power_name FROM superpower AS T1 JOIN superhero AS T2 ON T1.power_id = T2.id WHERE T2.height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT DISTINCT T1.name FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "1" AND T2.raceid = 20
SELECT T1.surname FROM qualifying AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.q1 = "19" AND T1.q2 = "2"
SELECT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Shanghai"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name LIKE '%T%' AND T2.round LIKE '%Barcelona - Cataluarte%'
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name LIKE "%Germany%"
SELECT DISTINCT T2.position FROM CONSTRAINTS AS T1 JOIN CONSTRAINTS AS T2 ON T1.constructorid = T2.constructorid WHERE T1.name = "Renault"
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid != "Asia" AND circuitid != "Europe"
SELECT name FROM races WHERE circuitid = (SELECT circuitid FROM races WHERE country = "Spain")
SELECT T1.lat , T1.lrg FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Australian grand prix"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit"
SELECT TIME FROM races WHERE NAME LIKE '%Sepang%'
SELECT T1.lat , T1.lol FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi Grand Prix"
SELECT t1.country FROM constructors AS t1 JOIN constructorresults AS t2 ON t1.constructorid = t2.constructorid JOIN races AS t3 ON t2.raceid = t3.raceid WHERE t3.name = "24" AND t2.points = 1
SELECT q1 FROM qualifying WHERE constructorId = "Bruno Senna";
SELECT nationality FROM qualifying WHERE q2 = "0:01:40" AND race_id = 355
SELECT T1.number FROM qualifying AS T1 JOIN driver_standings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "0:01:54" AND T1.raceid = 903
{"sql": "SELECT count(*) FROM qualifications AS T1 JOIN race AS T2 ON T1.raceid = T2.raceid WHERE T2.name = \"Bahrain Grand Prix\" AND T1.q1 = \"1\" AND T1.q2 = \"1\" AND T1.q3 = \"1\" AND T1.q1 = \"2\" AND T1.q2 = \"2\" AND T1.q3 = \"2\" AND T1.q2 = \"2\" AND T1.q3 = \"2\" AND T1.q1 = \"2\" AND T1.q2 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q1 = \"2\" AND T1.q2 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q1 = \"2\" AND T1.q2 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2\" AND T1.q3 = \"2
SELECT T2.name FROM races AS T1 JOIN season AS T2 ON T1.year = T2.year WHERE T1.raceid = 901
SELECT count(*) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.date = "2015/11/29" AND T1.name = "Driver Standings"
SELECT T1.fname , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "592" ORDER BY T1.fforename + " " + T1.surname LIMIT 1
SELECT T1.fname , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds = 0:01:27 AND T2.raceid = 161
SELECT T1.driverid FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "FASTEST" AND T2.raceid = 933
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Malian Grand Prix"
SELECT t1.name FROM constructors AS t1 JOIN constructorresults AS t2 ON t1.constructorid = t2.constructorid JOIN races AS t3 ON t2.raceid = t3.raceid WHERE t3.name = "No. 9" ORDER BY t2.points DESC LIMIT 1
SELECT q3 FROM qualifying WHERE constructorId = "Lucas di Grassi" AND raceId = 345
SELECT T1.country FROM drivers AS T1 JOIN laps AS T2 ON T1.driverid = T2.driverid WHERE T2.q2 = 0:01:15 AND T2.position = "347"
SELECT T1.code FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "No. 45" AND T1.q1 = 0:01:33
SELECT T1.status FROM status AS T1 JOIN results AS T2 ON T1.statusid = T2.statusid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Bruce" AND T2.raceid = 743
SELECT T2.position FROM constructorstandings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "San Marino Grand Prix" AND T2.year = 2006 AND T1.position = 2006
SELECT T2.name FROM races AS T1 JOIN season AS T2 ON T1.year = T2.year WHERE T1.raceId = 901
SELECT count(*) FROM qualifying AS T1 JOIN race AS T2 ON T1.raceid = T2.raceid WHERE T2.date = "2015/11/29" AND T1.position = "not finish"
SELECT min(fname) FROM drivers WHERE driverid IN (SELECT driverid FROM laptimes WHERE raceid = 872)
SELECT T1.fname , T1.forename FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = 348 ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT T2.position - T1.position FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.position = "853" AND T2.position LIKE "%%%%853%%" ORDER BY T2.position DESC LIMIT 1
SELECT count(*) FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.raceid = 1983 AND T2.date = '1983-07-16'
SELECT T2.year FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.constructorid = "Singapore" AND T1.q1 = "1" AND T1.q2 = "1" AND T1.q3 = "1"
SELECT count(*) , name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races WHERE YEAR = (SELECT max(year) FROM races) AND MONTH = (SELECT max(month) FROM races)
SELECT name , date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM constructorresults GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT T1.name FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.constructorref = 2000
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "European Grand Prix"
SELECT min(T1.year) FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid JOIN results AS T4 ON T3.constructorid = T4.constructorid JOIN results AS T5 ON T4.raceid = T5.raceid JOIN driverstandings AS T6 ON T5.raceid = T6.raceid JOIN drivers AS T7 ON T6.driverid = T7.driverid WHERE T7.nationality = 'British' AND T7.forename = 'Brack' AND T7.surname = 'Hatch'
SELECT count(*) FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = 'United Kindom grand prix'
SELECT T1.name FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 2010 AND T2.position = "1" ORDER BY T2.position
SELECT T1.name FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY sum(T1.points) DESC LIMIT 1
SELECT T1.name , T1.points FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 2017 INTERSECT SELECT T1.name , T1.points FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 2017 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 3
SELECT T1.name , T2.name FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid ORDER BY T1.milliseconds DESC LIMIT 1
SELECT avg(T2.milliseconds) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "2009 Malaysian Grand Prix" AND T1.driverid = "Lewis Hamilton"
SELECT count(*) FROM qualifying WHERE constructorId != (SELECT constructorId FROM constructorresults WHERE YEAR = 10) AND position != 1
SELECT T1.name , T2.nationality , T1.points FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY T1.points DESC LIMIT 1
SELECT T1.name , T1.age FROM drivers AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.country = "Japanese" ORDER BY T1.age LIMIT 1
SELECT circuitid FROM races WHERE YEAR BETWEEN 1990 AND 2000 GROUP BY circuitid HAVING COUNT(*) = 4
SELECT T1.name , T1.location , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2006 AND T2.country = 'USA'
SELECT T1.name , T2.circuitname , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.year = 2005 AND T1.round = 2005
SELECT T1.name FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T2.driverid = "Alex Yoong" AND T2.q1 < 20
SELECT count(*) FROM constructorstandings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Sepang International Circuit" AND T1.driverid = "Michael Schumacher"
{"sql": "SELECT T1.name , T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T2.position = 1 AND T2.driverId = 2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(points) FROM driver_standings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2000 AND T1.driverid = "Eddie Irvine"
SELECT T1.points , T1.position FROM driver_standings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Lewis Hamilton" AND T2.date = (SELECT max(date) FROM races WHERE name = "Laps of 1st Round")
SELECT name , circuitid FROM races WHERE YEAR = 2017 ORDER BY date
SELECT T1.name , T1.year , T1.circuitid FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid GROUP BY T1.raceid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , COUNT(*) FROM constructors AS T1 JOIN constructorResults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "European Grand Prix" AND T3.circuitid = "Germany"
SELECT lat , lng FROM circuits WHERE name = "Silverstone Circuit"
SELECT name FROM circuits WHERE lat > (SELECT min(lat) FROM circuits WHERE name = 'Silverstone Circuit' OR name = 'Hungaroring')
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code != "null"
SELECT country FROM drivers ORDER BY dob LIMIT 1
SELECT surname FROM drivers WHERE nationality = "Italian"
SELECT name FROM circuits WHERE name LIKE '%Anthony%' AND url != 'https://www.linkedin.com/%'
SELECT name FROM drivers WHERE forename = "Lewis";
SELECT T1.circuitid FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "2009" AND T2.name = "Spanish Grand Prix"
SELECT T2.year FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T3.name = "Silverstone Circuit"
SELECT T1.name FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.name = "Silverstone Circuit" GROUP BY T1.name HAVING count(*) > 1
SELECT T1.time FROM races AS T1 JOIN LAPTIMES AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.year = 2010 AND T1.name = "Abu Dhabi Circuit"
SELECT count(*) FROM races AS T1 JOIN circuit AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Italy"
SELECT date FROM races WHERE name = "Barcelona - Catalina"
SELECT url FROM circuits WHERE name LIKE '%2009%' AND country = "Spanish"
SELECT min(milliseconds) FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT t1.driverref FROM drivers AS t1 JOIN driverstandings AS t2 ON t1.driverid = t2.driverid JOIN races AS t3 ON t2.raceid = t3.raceid WHERE t3.year = 2007 AND t3.name = "Canadian Grand Prix" AND t3.name = "Canadian Grand Prix"
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T2.name FROM constructor_standings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" ORDER BY T2.rank LIMIT 1
SELECT min(T2.MSPACK) FROM CONSTRAINTS AS T1 JOIN RACE_RESULTS AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.constructorid = T2.constructorid AND T2.name = "SAPES"
SELECT T2.year FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.position FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "2008 Chinese Grand Prix" AND T1.forename = "Lewis" AND T1.surname = "Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.q1 = 4 AND T2.raceid = 1989 AND T2.circuitid = 2000
SELECT count(*) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Australian Grand Prix"
SELECT T1.lap FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.signature = "Hamilton" AND T1.year = 2008 ORDER BY T1.milliseconds LIMIT 1
SELECT T2.position FROM constructorstandings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "AustChiansolian Grand Prix" AND T1.position = 2 AND T2.year = 2008
SELECT T2.name FROM races AS T1 JOIN driver_standings AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Australian Grand Prix" UNION SELECT T2.name FROM races AS T1 JOIN driver_standings AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008
SELECT count(*) FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Australian Grand Prix"
SELECT count(*) FROM qualifiers AS T1 JOIN race AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Chinese Grand Prix" AND T1.constructorid = T2.constructorid
SELECT sum(points) FROM constructorresults AS T1 JOIN driverstandings AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT avg(T1.fastestLapTime) FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton"
SELECT count(*) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Australian Grand Prix"
SELECT T1.position , T1.position - T2.position FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "2008 Australian Grand Prix" AND T2.position = 1 GROUP BY T1.position ORDER BY T1.position - T2.position ASC LIMIT 1
SELECT count(*) FROM circuits WHERE country = "Australia" AND name = "Adelaide";
SELECT lat , lng FROM circuits WHERE country = "US"
SELECT count(*) FROM drivers WHERE nationality = 'British' AND dob > 1980
SELECT max(points) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T3.nationality = "British"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorResults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 291 AND T2.points = 0
SELECT count(*) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name LIKE '%Japanese%' AND T1.points = 0
SELECT DISTINCT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.position ASC LIMIT 1
SELECT count(*) FROM constructorstandings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE nationality = "French" AND T2.name LIKE "%50%"
SELECT count(*) FROM constructors AS T1 JOIN constructorResults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year BETWEEN 2007 AND 2009 AND T1.nationality = "Japanese"
SELECT avg(T1.milliseconds) , T1.year FROM LAPTIMES AS T1 JOIN RACES AS T2 ON T1.raceid = T2.raceid WHERE T2.year < 1975 GROUP BY T1.year
SELECT forename , surname FROM drivers WHERE dob > 1975 GROUP BY forename ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM drivers WHERE nationality = "Italian" EXCEPT SELECT count(*) FROM drivers WHERE driverid IN (SELECT driverid FROM laptimes WHERE position = "FISTOUT")
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT min(milliseconds) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.name = "Champion"
SELECT avg(T2.fastest_lap_speed) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "Spanish Grand Prix"
SELECT name , YEAR FROM LAPTIMES ORDER BY milliseconds ASC LIMIT 1
SELECT count(*) , count(*) FROM drivers WHERE dob < 1985 GROUP BY dob HAVING min(dob) < 2000 INTERSECT SELECT count(*) FROM drivers WHERE dob > 2005 GROUP BY dob HAVING min(dob) > 50
SELECT count(*) FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.country = "French" AND T1.milliseconds < 020000
SELECT code FROM drivers WHERE nationality = "America"
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(*) FROM constructors AS T1 JOIN constructorResults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.raceid = 18
SELECT count(*) , country FROM drivers ORDER BY birthdate DESC LIMIT 3 WHERE nationality = "Netherlandic"
SELECT name FROM drivers WHERE forename = "Robert" AND driverref = "R. Kubica";
SELECT count(*) FROM drivers WHERE nationality = 'British' AND dob = 1980
SELECT T1.name FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T2.milliseconds = (SELECT min(milliseconds) FROM laptimes WHERE T1.nationality = "German" AND T2.position = "top") AND dob >= 1980 AND dob <= 1990
SELECT T1.name FROM drivers AS T1 JOIN driver_standings AS T2 ON T1.driverid = T2.driverid WHERE nationality = "German" ORDER BY T2.position DESC LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob = "1971" ORDER BY T2.milliseconds LIMIT 1
SELECT DISTINCT T1.name FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND dob < 1982 ORDER BY T2.milliseconds DESC LIMIT 10
SELECT T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds ASC LIMIT 1
SELECT T2.year FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT driverid FROM laptimes ORDER BY milliseconds DESC LIMIT 5
SELECT count(*) FROM qualifying WHERE race_id BETWEEN 50 AND 100 AND position = "disqualified"
SELECT count(*) , T1.location , T1.lat , T1.lol FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Austria"
SELECT T1.raceid FROM races AS T1 JOIN driver_standings AS T2 ON T1.raceid = T2.raceid GROUP BY T1.raceid ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t2.nationality , t2.dob FROM qualifying AS t1 JOIN drivers AS t2 ON t1.driverid = t2.driverid WHERE t1.q1 = "23" AND t1.q2 = "23"
{"sql": "SELECT q3 , q2 , q3 , DATE_FORMAT(date, '%% %-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%-%
SELECT count(*) FROM drivers WHERE nationality = "American" AND status = "puncture"
SELECT T1.name , T1.url FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid ORDER BY T2.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid GROUP BY T1.constructorid ORDER BY sum(T2.points) DESC LIMIT 1
SELECT T2.position FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.raceid = 2 AND T1.position = 3
SELECT T1.lap , T1.milliseconds FROM LAPTIMES AS T1 JOIN RACE AS T2 ON T1.raceid = T2.raceid ORDER BY T1.milliseconds LIMIT 1
SELECT avg(T2.fastest_lap_time) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2006 AND T1.name = "United States Grand Prix"
SELECT T1.name FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" ORDER BY T2.duration LIMIT 3
SELECT T2.position , T2.time FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.year = 2008 AND T1.name = "Canadian Grand Prix"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "2009 Singapore Grand Prix" AND T3.circuitid = T1.circuitid
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austria" AND dob BETWEEN 1981 AND 1991
SELECT name , url , dob FROM drivers WHERE nationality = "German" AND dob BETWEEN 1971 AND 1985 ORDER BY dob DESC
SELECT T1.location , T2.country , T1.lat , T1.leng FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Hungaroring"
SELECT T1.points , T1.name , T1.country FROM constructorResults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Monaco Grand Prix" AND T2.year BETWEEN 1980 AND 2010
SELECT avg(T1.points) FROM drivers AS T1 JOIN driver_standings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "Lewis Hamilton"
SELECT avg(year) FROM races WHERE YEAR BETWEEN 2001 AND 2100
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM constructorstandings WHERE position = 1 AND raceid = (SELECT raceid FROM constructorstandings ORDER BY position DESC LIMIT 1)
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.name FROM races AS T1 JOIN race_results AS T2 ON T1.raceid = T2.raceid WHERE T2.year = (SELECT max(year) FROM constructorresults) JOIN circuits AS T3 ON T1.circuitid = T3.circuitid GROUP BY T1.name HAVING count(*) = 1
SELECT T1.fname , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.q1 = 3 AND T2.circuitid = 2008 AND T2.q3 = 1000000000
SELECT T2.name , T1.nationality , T1.name FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid ORDER BY T2.position ASC LIMIT 1
SELECT count(*) FROM pit_stops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.country = "Canadian" ORDER BY T2.points DESC LIMIT 1
SELECT T1.name , T2.position FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.wins = 1 ORDER BY T1.forename + T1.surname LIMIT 1
SELECT max(duration) FROM pit_stops
SELECT min(T2.time) FROM LAP_TIMES AS T1 JOIN RACE AS T2 ON T1.raceid = T2.raceid GROUP BY T1.raceid ORDER BY count(*) DESC LIMIT 1
SELECT max(duration) FROM pitstops WHERE driverId = "Lewis Hamilton"
SELECT T1.lap FROM LAPTIMES AS T1 JOIN DRIVER stands AS T2 ON T1.driverid = T2.driverid WHERE T2.driverid = "Lewis Hamilton" AND T2.position = "Pit stop" AND T1.raceid = 2011;
SELECT T2.time FROM pit_stops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2011 Australian Grand Prix"
SELECT T1.lap FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton"
SELECT t1.forename , t1.forename FROM drivers AS t1 JOIN laptimes AS t2 ON t1.driverid = t2.driverid ORDER BY t2.milliseconds ASC LIMIT 20
SELECT T1.position FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton" ORDER BY T1.milliseconds LIMIT 1
SELECT T1.lap FROM LAP_TIMES AS T1 JOIN RACE AS T2 ON T1.raceid = T2.raceid JOIN CONSTRAINTS AS T3 ON T2.raceid = T3.raceid WHERE T2.name = "Austustralian Grand Prix Circuit"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Italy"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Austustralian Grand Prix Circuit" AND T2.raceid = T2.raceid
SELECT T1.duration FROM pit_stops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Austustralian Grand Prix Circuit"
SELECT T1.lat , T1.lrg FROM circuits AS T1 JOIN laptimes AS T2 ON T1.circuitid = T2.circuitid WHERE T2.position = 1:29.488
SELECT avg(T2.milliseconds) FROM laps AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.driverid = "Lewis Hamilton"
SELECT avg(milliseconds) FROM laptimes JOIN races ON raceid = raceid WHERE circuitid = "Italy"
SELECT player_api_id FROM Player ORDER BY overall_rating DESC LIMIT 1;
SELECT T2.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential ASC LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND (goal = 1 AND (attack_move_id) = 1)
SELECT player_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = '1' GROUP BY T1.player_api_id ORDER BY count(*) DESC LIMIT 5;
SELECT T1.name FROM league AS T1 JOIN team AS T2 ON T1.country_id = T2.country_id WHERE T1.name = "2016" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT home_team_api_id FROM MATCH GROUP BY home_team_api_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id ORDER BY count(*) DESC LIMIT 10;
SELECT T1.away_team_api_id FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_fifa_api_id = "SCOOTER" AND T1.team_id = 1 AND season = 2010 GROUP BY T1.away_team_api_id ORDER BY count(*) DESC LIMIT 1;
SELECT buildUpPlaySpeed FROM Team_Attributes ORDER BY buildUpPlaySpeed DESC LIMIT 4
SELECT T1.name FROM league AS T1 JOIN league AS T2 ON T1.id = 2 WHERE T1.name = "Italy" AND T2.name = "Italy" AND T2.season = 2016 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.player_name , T1.player_fifa_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.sprint_speed >= 97 AND T1.birthday BETWEEN 2013 AND 2015
SELECT T1.name , T2.stal_count FROM league AS T1 JOIN league AS T2 ON T1.id = T2.id WHERE T1.name = (SELECT max(stal_count) FROM league)
SELECT avg(birthyear) FROM Player WHERE birthday BETWEEN 1990 AND 1995
SELECT player_fifa_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE YEAR( T2.date ) = 2010 ORDER BY T2.overall_rating DESC LIMIT 1;
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed > 50 AND buildUpPlaySpeed < 60;
SELECT team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE buildUpPlayPassing = (SELECT buildUpPlayPassing FROM Team_Attributes WHERE date = 2012 ORDER BY buildUpPlayPassing DESC LIMIT 1)
SELECT count(*) FROM Player WHERE preferred_foot = 'left' AND birthday BETWEEN 1987 AND 1992
SELECT league_id , name FROM league ORDER BY sum(goal_in_season) DESC LIMIT 5;
SELECT avg(long_shots) FROM Player_Attributes WHERE player_name = "Ahmed Samir Farag";
SELECT player_name FROM Player WHERE height > 180 GROUP BY player_name ORDER BY avg(heading_accuracy) DESC LIMIT 10;
SELECT T1.team_api_id FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE buildUpPlaySpeedClass = 'Normal' AND buildUpPlayDribbling = 'Normal' AND buildUpPassingClass = '100' ORDER BY chanceCreationPassing DESC
SELECT T1.name FROM league AS T1 JOIN team AS T2 ON T1.country_id = T2.country_id JOIN team AS T3 ON T1.league_id = T3.league_id WHERE T3.team_fifa_api_id = (SELECT t4.team_fifa_api_id FROM team AS T4 JOIN team AS T5 ON T4.team_api_id = T5.team_api_id WHERE T5.selection_year = 2009 AND T5.selection_year = 2010 AND T4.team_fifa_api_id = (SELECT t4.team_fifa_api_id FROM team AS T4 JOIN team AS T5 ON T4.team_api_id = T5.team_api_id WHERE T5.selection_year = 2010 AND T4.team_fifa_api_id = T4.team_fifa_api_id GROUP BY T4.team_fifa_api_id HAVING avg(T1.home_team_goal) > (SELECT avg(away_team_goal) FROM team AS T6 WHERE T6.selection_year = 2010 AND T6.selection_year = 2010))
SELECT team_short_name FROM Team WHERE team_fifa_api_id = "Queens Park Rangers";
SELECT player_name FROM Player WHERE birthday = '1970' AND birthmonth = 'October'
SELECT attacking_work_rate FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Franko Zennaro";
SELECT T1.team_fifa_api_id , T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = 1 AND T2.buildUpPlaySpeedClass = 2;
SELECT heading_accuracy FROM Player_Attributes WHERE date = "18/09/2014" AND player_name = "Freça Affolter";
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Gabriel Tamas" AND T2.date = 2011
SELECT count(*) FROM MATCH WHERE season = '2015-2016' AND country_id = 1 AND league_id = 2;
SELECT preferred_foot FROM Player ORDER BY player_name LIMIT 1
SELECT player_name FROM Player ORDER BY potential DESC LIMIT 1
SELECT count(*) FROM Player WHERE weight < 130 INTERSECT SELECT count(*) FROM Player WHERE preferred_foot = 'left' AND player_fifa_api_id IN (SELECT player_fifa_api_id FROM Player WHERE weight < 130)
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chChanceCreationPassingClass = 'Risky'
SELECT defensive_work_rate FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "David Wilson";
SELECT birthday FROM Player ORDER BY overall_rating DESC LIMIT 1
SELECT T1.name FROM league AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T2.name = "Netherlands"
SELECT avg(home_team_goal) FROM MATCH WHERE season = "2010/2011" AND country_id = 2000;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.finish DESC, T2.height DESC LIMIT 1
SELECT player_name FROM Player WHERE player_name > 180
SELECT count(*) FROM Player WHERE birthday > 1990
SELECT count(*) FROM Player WHERE player_name LIKE "%Adam%" AND weight > 170
SELECT player_name FROM Player WHERE overall_rating > 80 AND YEAR BETWEEN 2008 AND 2010;
SELECT potential FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Aaron Dora"
SELECT preferred_foot FROM Player WHERE preferred_foot = 'left'
SELECT T2.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_fifa_api_id = "FAST"
SELECT T1.name FROM league AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T2.name = "CLB"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE buildUpPlayPassing > 70
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name LIKE '%170%' AND T1.id BETWEEN 2010 AND 2015;
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1
SELECT T1.country_id , T1.name FROM Country AS T1 JOIN LEED AS T2 ON T1.id = T2.country_id WHERE T2.name = "Italy" AND T2.league_id = 1
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE buildUpPlaySpeed = 31 AND buildUpPlaySpeedClass = 31 AND buildUpPlayDribbling = 53 AND buildUpPlayPassing = 32;
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Aaron Doran";
SELECT count(*) FROM Match WHERE date BETWEEN '2008-08-10' AND '2008-10-10' AND league_id = 1 WHERE country_id = 1;
SELECT t1.team_long_name FROM Team AS t1 JOIN Team_Attributes AS t2 ON t1.team_api_id = t2.team_api_id WHERE t2.buildUpPlaySpeed = 10
SELECT t2.player_name FROM Player AS t1 JOIN Player_Attributes AS t2 ON t1.player_api_id = t2.player_api_id WHERE potential = 61
SELECT avg(ball_control) , (SELECT max(average_ball_control_score) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Abdou Daliou") - (SELECT max(average_ball_control_score) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Appindangoye")
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN";
SELECT player_name FROM Player WHERE birthday > (SELECT birthday FROM Player WHERE player_name = "Aaron Lennon") INTERSECT SELECT player_name FROM Player WHERE player_name = "Ablyzazir Barrada";
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'left' AND T2.attacking_work_rate = 1 AND T2.team_fifa_api_id = (SELECT t1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'left' AND T2.attacking_work_rate = 1 AND T2.team_fifa_api_id = (SELECT t1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'left' AND T2.attacking_work_rate = 1 AND T2.team_fifa_api_id = 1) AND T1.player_name = 'left' AND T2.attacking_work_rate = 1 AND T2.team_fifa_api_id = 1 GROUP BY T1.player_api_id HAVING count(*) = 1;
SELECT T2.country_id , T1.name FROM league AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Belmont Jupiler League'
SELECT name FROM league WHERE country_id = 2;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Team AS T2 ON T1.player_api_id = T2.team_api_id WHERE T1.birthday < 1986 INTERSECT SELECT count(*) FROM Player AS T1 JOIN Team AS T2 ON T1.player_api_id = T2.team_api_id WHERE T1.birthday > 1986 AND T2.team_id = 1000
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = '1' AND T1.player_name = 'Arouna Kone' ORDER BY T2.cross DESC LIMIT 1;
SELECT heading_accuracy FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Ariel Borysiuk"
SELECT count(*) FROM Player WHERE height > 180 INTERSECT SELECT count(*) FROM Player_Attributes WHERE volleys > 70
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70;
SELECT count(*) FROM MATCH WHERE season = 2008 OR season = 2009 AND country_id = 1;
SELECT t1.player_name FROM player AS t1 JOIN player_attributes AS t2 ON t1.player_api_id = t2.player_api_id ORDER BY t2.date DESC LIMIT 1
SELECT count(*) FROM MATCH AS T1 JOIN LEEDAS AS T2 ON T1.country_id = T2.country_id WHERE T2.name = 'Belgium Jupiler League' AND T1.date = '2009-04-10'
SELECT T1.name FROM league AS T1 JOIN team AS T2 ON T1.country_id = T2.country_id WHERE T1.name = "2008-2009" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT avg(overall_rating) FROM Player WHERE birthday < 1986
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Ariel Borysiu" AND T2.overall_rating - (SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Paulin Puel") LIKE "Ariel Borysiu - %" AND T2.overall_rating - (SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Paulin Puel") LIKE "Paulin Puel - %")
SELECT avg(buildUpPlaySpeed) FROM Team_Attributes WHERE team_fifa_api_id = "Heart of Midlothian";
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Pietro Marino"
SELECT sum(CROSSING) FROM Player_Attributes WHERE player_name = "Aaron Lenno";
SELECT chance_creation_passing_class , T2.name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_fifa_api_id = 'Ajax' ORDER BY T2.chance_creation_passing_class DESC LIMIT 1;
SELECT preferred_foot FROM Player WHERE player_name = "Abdou Diallo";
SELECT max(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Dorlan Pabon";
{"sql": "SELECT avg(away_team_goal) FROM Match AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Italy' AND T1.away_team_api_id = 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = 77 AND T2.date = '2016/6/23' ORDER BY T1.player_name ORDER BY T1.player_name ASC LIMIT 1;
SELECT overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Aaron Mooy AND T2.date = 2016/2/4;
SELECT potential FROM Player WHERE player_name = "Frace Parravicini" AND date = "2010/8/30";
SELECT attack_work_rate FROM Player_Attributes WHERE player_name = "Fracing Mioe" AND date = "2015/5/1";
SELECT defensive_work_rate FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Kevin Berigaud" AND T2.date = "2013-2-22";
SELECT date FROM Player_Attributes ORDER BY max(tactics_in_1) ASC LIMIT 1;
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_fifa_api_id = "Willem II" AND date = "2011/2/22";
SELECT buildUpPlayDribbling FROM Player_Attributes WHERE player_fifa_api_id = "LEI" AND date = "2015/9/10";
SELECT buildUpPlayPassing FROM Team_Attributes WHERE team_fifa_api_id = "FC Lorient" AND DATE = "2010/2/22";
SELECT chanceCreationPassing_CLASS FROM Team_Attributes WHERE team_fifa_api_id = "PEC Zwolle" AND DATE = "2013/9/20";
SELECT chanceCreationCrossing FROM Team_Attributes WHERE team_fifa_api_id = "Hull City" AND date = "2010/2/22";
SELECT defensive_aggression FROM Team_Attributes WHERE team_fifa_api_id = "Hannover 96" AND DATE = "2015/9/10";
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Marko Arnautovic" AND T2.date BETWEEN "2007/2/22" AND "2016/4/21";
SELECT count(*) , (sum(overall_rating) - (2013_7_12_100) ) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Landon Donovan" AND T2.date = "2013/7/12"
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT player_api_id FROM Player ORDER BY weight DESC LIMIT 10
SELECT player_name FROM Player WHERE player_name LIKE '%35%'
SELECT count(*) FROM Player AS T1 JOIN Team AS T2 ON T1.player_api_id = T2.team_fifa_api_id WHERE T1.player_name = "Aaron Lennon"
SELECT sum(away_team_goal) FROM Match AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T2.team_fifa_api_id = 2 AND T1.home_player_X1 = 1 AND T1.home_player_X2 = 1 AND T1.home_player_X3 = 1 AND T1.home_player_X4 = 1 AND T1.home_player_X5 = 1 AND T1.away_player_X1 = 1 AND T1.away_player_X2 = 1 AND T1.away_player_X3 = 1 AND T1.away_player_X4 = 1 AND T1.away_player_X5 = 1 AND T1.away_player_X6 = 1 AND T1.away_player_X7 = 1 AND T1.away_player_X8 = 1 AND T1.away_player_X9 = 1 AND T1.away_player_X10 = 1 AND T1.away_player_X11 = 1;
{"sql": "SELECT sum(T1.home_player_X1) , sum(T1.home_player_X2) , sum(T1.home_player_X3) , sum(T1.home_player_X4) , sum(T1.home_player_X5) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.away_player_11 GROUP BY T1.player_api_id HAVING T1.player_api_id LIKE '%30%' UNION SELECT sum(home_player_X1) , sum(home_player_X2) , sum(home_player_X3) , sum(home_player_X4) , sum(home_player_X5) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_1 WHERE T1.player_fifa_api_id = T2.home_player_api_id WHERE T1.player_fifa_api_id LIKE '%30%' }
SELECT T2.player_name FROM Player AS T1 JOIN Match AS T2 ON T1.player_api_id = T2.away_player_11 AND T2.away_player_10 = T1.player_api_id ORDER BY T1.player_api_id DESC LIMIT 1;
SELECT player_name FROM Player ORDER BY potential DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = 'attack' AND T2.player_fifa_api_id = (SELECT player_fifa_api_id FROM Player_Attributes WHERE attacking_work_rate = 'attack' AND T2.player_fifa_api_id = T3.player_fifa_api_id)
SELECT max(player_name) , player_name FROM Player WHERE finishing = 1 ORDER BY player_name ASC
{"sql": "SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1 AND T2.date = 1 AND T2.player_fifa_api_id = 1
SELECT T1.player_name , T2.country_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.vision = 90
SELECT T2.country_name , T1.height , T1.weight FROM Player AS T1 JOIN LEADING AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id ORDER BY avg(T1.weight) DESC LIMIT 1
SELECT team_long_name FROM Team WHERE class_code = 'slow speed class'
SELECT t1.team_short_name FROM Team AS t1 JOIN Team_Attributes AS t2 ON t1.team_api_id = t2.team_api_id WHERE t2.buildUpPlaySpeed = 'chanceCreationPassing' AND t2.buildUpPlaySpeedClass = 'chanceCreationPassing' AND t2.buildUpPlaySpeedClass = 'ch Chance'
SELECT avg(height) FROM Player WHERE country_id = 1 AND player_name = 'Italy';
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name LIMIT 3;
SELECT count(*) FROM Player WHERE player_name LIKE '%Aaron%' AND birthday > 1990
SELECT max(jumping) - (23 - 6) FROM Player
SELECT id FROM Player WHERE potential = (SELECT potential FROM Player WHERE preferred_foot = 'left) INTERSECT SELECT id FROM Player WHERE preferred_foot = 'right ORDER BY potential LIMIT 5;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferences = 'left' AND T2.pPotential = (SELECT max(2) FROM Player_Attributes WHERE preferred_foot = 'left')
SELECT count(*) , (sum(strength) - 80) FROM Player WHERE player_fifa_api_id IN (SELECT player_fifa_api_id FROM Player WHERE potential > 80)
SELECT T2.country_id , T1.name FROM league AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T1.name = "Poland Ekstraklasa"
{"sql": "SELECT T1.home_team_goal , T1.home_player_X1 , T1.home_player_X2 , T1.home_player_X3 , T1.home_player_X4 , T1.home_player_X5 , T1.home_player_X6 , T1.home_player_X7 , T1.home_player_X8 , T1.home_player_X9 , T1.home_player_X10 , T1.home_player_X11 , T1.away_team_goal , T1.away_player_X1 , T1.away_player_X11 FROM Match AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.date = '2008-09-24' AND T1.stadium_id = 'BELLIIPER' AND T1.home_team_id = 2008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT sprint_speed , agility , acceleration FROM Player_Attributes WHERE player_name = "Alexi Blin";
SELECT T1.name FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id JOIN team AS T3 ON T2.id = T3.id WHERE T3.team_fifa_api_id = 'KSV Cercle Brugge' AND T3.buildUpPlaySpeedClass = 'slow' UNION SELECT T1.name FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id JOIN team AS T3 ON T2.id = T3.id WHERE T3.buildUpPlaySpeedClass = 'balanced' UNION SELECT T1.name FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id JOIN team AS T3 ON T2.id = T3.id WHERE T3.buildUpPlaySpeedClass = 'fast'
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.country_id WHERE T2.name = 'Italy' AND season = 2015 AND STATION_TYPE_1_1_1_2016
SELECT T1.home_team_goal FROM league AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T2.name = "Netherlands" AND T1.name = "Eredivisie"
SELECT finish_rate , curve_score FROM Player WHERE weight = (SELECT max(weight) FROM Player)
SELECT league_id , name FROM league WHERE season = '2015-2016' GROUP BY league_id ORDER BY count(*) DESC LIMIT 4;
SELECT T1.team_long_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.away_team_api_id = T2.away_team_api_id GROUP BY T2.away_team_api_id ORDER BY count(*) DESC LIMIT 1
SELECT player_name FROM Player ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) , (SELECT count(*) FROM Player WHERE height < 180) INTERSECT SELECT count(*) FROM Player WHERE overall_rating > 70 WHERE player_fifa_api_id IN (SELECT player_fifa_api_id FROM Player WHERE potential > 70) GROUP BY player_fifa_api_id HAVING count(*) > 100;
SELECT count(*) , (sum(case inpatient_count - outpatient_count) / inpatient_count) FROM patient WHERE sex = 'M'
SELECT count(*) FROM Patient WHERE sex = "F" AND birthday > "1930"
SELECT count(*) FROM patient WHERE birthday BETWEEN "1930" AND "1940" AND diagnosis = "Inpatient"
SELECT count(outpatient) , count(inpatient) FROM patient WHERE diagnosis = "SLE"
SELECT T1.Date FROM EXPECTATION AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 30609
SELECT T1.sex , T1.birthday , T1.date , T2.symptoms FROM Patient AS T1 JOIN Examination AS T2 ON T1.id = T2.id WHERE T2.aCL IgG = 163109
SELECT T1.patient_id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.LDH > 0 AND T2.ACL IgG = 'Normal'
SELECT T1.id , T1.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.aCL IgG = 'Positive'
SELECT T1.id , T1.sex , T1.Diagnosis FROM Patient AS T1 JOIN Examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = "Severe thrombosis"
SELECT T1.Patient FROM Patient AS T1 JOIN EXPECTATION AS T2 ON T1.ID = T2.id WHERE T1.Birthdate = "1937" AND T2.Total_cholesterol > 100
SELECT T1.id , T1.sex , T1.Diagnosis FROM Patient AS T1 JOIN EXPECTATION AS T2 ON T1.id = T2.id WHERE T2.alp < 3.5
SELECT count(*) FROM Patient WHERE sex = "F" AND total_protein - (SELECT max(total_protein) FROM Patient WHERE sex = "F") > 200000
SELECT avg(IgG) FROM Examination WHERE ID IN (SELECT ID FROM Patient WHERE 年龄 >= 50)
SELECT count(*) FROM patient WHERE sex = "F" AND admission = "1997" AND hospital_id = (SELECT id FROM patient WHERE admission = "1997" AND hospital_id = (SELECT id FROM patient WHERE admission = "1997" AND hospital_id = (SELECT id FROM patient WHERE admission = "1997" AND hospital_id = (SELECT id FROM patient WHERE admission = "1997" AND hospital_id = (SELECT id FROM patient WHERE admission = "1997" AND hospital_id = (SELECT id FROM patient WHERE admission = "1997") ))) )
SELECT T2.Age FROM Patient AS T1 JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Admission = "\"hospital\"" AND T1.Date = "\"\"date\""
SELECT count(*) FROM EXPECTATION WHERE diagnosis = "Thrombosis" AND EXPECTATION_DATE = "1997" AND sex = "M"
SELECT max(T1.age) - min(T1.age) FROM patient AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.id = (SELECT id FROM patient WHERE diagnosis = "Normal triglycerate") AND T2.id = (SELECT id FROM patient WHERE diagnosis = "Normal triglycerate")
SELECT Symptoms FROM Examination ORDER BY age ASC LIMIT 1
SELECT count(*) , avg(T2.MALE) FROM EXPECTATION AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T1.date = "1998-12-31" GROUP BY T2.MALE
SELECT T1.patient_id , T1.date , T1.age FROM Patient AS T1 JOIN Examination AS T2 ON T1.id = T2.aCL IgG WHERE T2agnosis = 'SJS' ORDER BY T1.date LIMIT 1
SELECT count(*) , count(T1.sex) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.ACL IgG = 'Abnormal Uc' GROUP BY T1.sex HAVING count(T1.sex) - count(T1.sex) > 1
{"sql": "SELECT count(*) FROM patient WHERE admission != 'waiting for examination' AND admission != 'intensive care' AND admission != 'dispo' AND admission != 'disposed' AND admission != 'reopened' AND admission != 'reopened again' AND admission != 'reopened again and back' AND admission != 'reopened again and back again' AND admission != 'reopened again and back again and back' AND admission != 'reopened again and back again and back again' AND admission != 'reopened again and back again and back again and back again' AND admission != 'reopened again and back again and back again and back again and back' AND admission != 'reopened again and back again and back again and back again and back again and back' AND admission != 'reopened again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and back again and
SELECT count(*) FROM patient WHERE age < 10 AND first date BETWEEN 1990 AND 1993
SELECT count(*) FROM Patient WHERE sex = 'M' AND T-CHO > 200
SELECT diagnosis FROM EXAMINATIONS WHERE admission BETWEEN 1/1/1985 AND 12/31/1995 GROUP BY diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.Age) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.Examination Date = "1991-10" AND T2.Date = "1999"
SELECT T1.Patient , T1.Age , T1.Diagnosis FROM Patient AS T1 JOIN Examination AS T2 ON T1.ID = T2.ID ORDER BY T2.HGBOX DESC LIMIT 1
SELECT T1.ANTANICKEL FROM EXPECTATION AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 3605340 AND T1.date = "1996/12/2"
SELECT sum(T1.T-CHolesterol) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = "1995-9-4" AND T1.id = 2927464 AND T1.T-Cholesterol = 0
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = "AORTITIS"
SELECT T2.IGG FROM EXPECTATION AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = "SLE" AND T1.Date = "1994/2/19" EXCEPT SELECT T2.IGG FROM EXPECTATION AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Date = "1993/11/12"
SELECT sex FROM patient WHERE first date = "1992-6-12" AND result = 9 AND status = "G"
SELECT patient.age FROM patient WHERE patient.birthday = "1991-10-21" AND diagnosis = "uric acid level 8.4"
SELECT sum(T2.LABORATORY_TESTS) FROM Patient AS T1 JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Birthdate = "1991/6/13" AND T1.Diagnosis = "SJS" AND T2.Date = "1995/6/13"
SELECT T1.Patient , T1.Diagnosis FROM Patient AS T1 JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "SLE" AND T2.Date = "1997/1/27"
SELECT Symptoms FROM Examination WHERE EXPECTATION_ID = (SELECT ID FROM Patient WHERE birthday = "1959/3/1") AND EXPECTATION_DATE = "1993/9/27"
SELECT T1.T-CHOR, T1.T-CHOR FROM Patient AS T1 JOIN EXAMINATION AS T2 ON T1.ID = T2.patient WHERE T1.Birthday = "1959/2/18" AND T2.Date = "1981-11-12" INTERSECT SELECT T1.T-CHOR FROM Patient AS T1 JOIN EXAMINATION AS T2 ON T1.ID = T2.patient WHERE T1.Birthday = "1981-12-12" GROUP BY T1.T-CHOR HAVING T1.T-CHOR - T1.T-CHOR < 100
SELECT T1.patient FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = "Behcet's" AND T2.Examination Date BETWEEN '01/01/197' AND '12/31/1997'
SELECT patient.id FROM patient WHERE admission BETWEEN 1987/7/6 AND 1996/1/31 AND GPT > 30 AND ALB < 4
SELECT count(*) , T1.patient_id FROM Patient AS T1 JOIN Examination AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T1.birthday = "1964" GROUP BY T1.patient_id
SELECT count(*) FROM examination WHERE thrombosis = 2 AND ANA_pattern = "S" AND (IGG > (SELECT avg(IGG) FROM examination WHERE IGG = (SELECT avg(IGG) FROM examination WHERE IGG = 20)) - (IGG - 20))
SELECT count(*) , (sum(URIC acid) / (sum(URIC acid) + 200)) FROM Patient WHERE diagnosis = "Proteinuria" AND URIC acid < 200
SELECT count(*) , count(*) FROM Patient WHERE sex = 'M' AND first_date = '1981' AND diagnosis = 'BEHCET'
{"sql": "SELECT T1.patient FROM Patient AS T1 JOIN Examination AS T2 ON T1.id = T2.aCL IgG WHERE T2.examination date = \"October 1991\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Lambing 100\" AND T2.examination date = \"October 1991\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Lambing 100\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic\" AND T1.description = \"Outpatient clinic
SELECT count(*) FROM Patient WHERE sex != "M" AND birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM Patient WHERE birthday = "AAN_P"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = "PSS" AND T2.CRE = "2" AND T2.LDH = 1 AND T2.LDH = 1
SELECT avg(ALB) FROM Patient WHERE sex = "F" AND diagnosis = "SLE" AND PLT > 400
SELECT Symptoms FROM Examination GROUP BY Symptoms ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.description = "Patient 48473" AND T1agnosis = "M.D.\" ORDER BY T1.date LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = "APS" AND sex = "F"
SELECT count(*) FROM patient WHERE admission = '1997' AND diagnosis != 'Normal'
SELECT count(*) FROM patient AS t1 JOIN examination AS t2 ON t1.id = t2.id WHERE t2agnosis = "SLE" AND t1agnosis = "Thrombococileno-1"
SELECT count(*) , count(CURRENT_DAY) FROM Patient WHERE birthday = "1980" AND diagnosis = "RA" AND sex = "M"
SELECT count(*) FROM Patient WHERE sex = 'M' AND admission > '1995' AND admission < '1997' AND diagnosis = 'Behcet disease'
SELECT count(*) FROM patient WHERE sex = 'F' AND WBC < 3.5
SELECT T1.Admission - T2.Admission FROM Patient AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.ID = 821298 AND T1.Admission > (SELECT min(Admission) FROM Patient WHERE Diagnosis = 'Evaluation' AND T1.ID = 821298)
SELECT t1.patient FROM patient AS t1 JOIN examination AS t2 ON t1.id = t2.id WHERE t2.aCL IgG = 57266 AND (t2.T-CHO BETWEEN 200 - 100 AND 200 - 100)
SELECT T1.date FROM EXAMINATION AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473 AND T1.GOT > 200
SELECT T1.sex , T1.birthday , T1.date FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = "1994" AND T2.GOT BETWEEN 2000 - 10 AND 2000 - 10
SELECT T1.id FROM patient AS T1 JOIN lab_result AS T2 ON T1.id = T2.patient_id WHERE T1.sex = 'M' AND T2.GP.T-CHO > 2000 WHERE T2.GP.GP = 'GPT'
SELECT Diagnosis FROM Patient WHERE Diagnosis != "Normal" ORDER BY Birthdate ASC
SELECT avg(LDH) FROM Patient WHERE Diagnosis = "Normal"
SELECT id , age FROM patient WHERE LDH > 100 AND LDH < 300
SELECT patient.id , type FROM patient AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.alp = "normal" AND T1.patient_type = "INPATIENT" OR T1.patient_type = "OUTPATIENT"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.aCL IgG WHERE T1.birthday = "April 1. 1982" AND T2.alp <= 2000 AND T2.alp >= 2000
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TP < (SELECT T2.TP FROM patient AS T2 JOIN laboratory AS T3 ON T2.id = T3.id WHERE T3.TP = (SELECT T2.TP FROM patient AS T2 JOIN laboratory AS T3 ON T2.id = T3.id WHERE T3.TP = (SELECT T2.TP FROM patient AS T2 JOIN laboratory AS T3 ON T2.id = T3.id WHERE T3.TP = (SELECT T2.TP FROM patient AS T2 JOIN laboratory AS T4 ON T2.id = T4.id WHERE T4.TP = (SELECT T2.TP FROM patient AS T2 JOIN laboratory AS T5 ON T2.id = T5.id WHERE T5.TP > 100))))
SELECT T1.TP , T1.T-NO FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SSEX = "F" AND T1.T-NO > 2000
{"sql": "SELECT DISTINCT T1.patient FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = \"M\" AND T2.alp NOT IN ( SELECT alp FROM patient WHERE albumin BETWEEN ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin NOT IN ( ( SELECT min(alp) FROM patient WHERE albumin
SELECT T2.ALP FROM EXAMINATION AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthdate = "1982" ORDER BY T2.ALP
SELECT count(*) , count(CERIC) FROM Patient WHERE sex = "F" AND UA > 200
SELECT avg(T1.UA) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Disease = "Normal"
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.UN BETWEEN 0.5 AND 0.50
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = 'RA' AND T2.aCL IgG = 'UN'
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine_index < 200
SELECT count(*) FROM Patient WHERE sex = 'M' AND creatinine > 200 UNION SELECT count(*) FROM Patient WHERE sex = 'F' AND creatinine < 200
SELECT T1.patient , T1.sex , T1.birthday FROM Patient AS T1 JOIN EXAMINATION AS T2 ON T1.id = T2.id ORDER BY T2.T-CHO DESC LIMIT 1
SELECT sex , sum(T-BIL) FROM Patient GROUP BY sex WHERE T-BIL != 100
SELECT T1.patient_id , T-CHO FROM Patient AS T1 JOIN EXAMINATION AS T2 ON T1.id = T2.id ORDER BY T-CHO DESC LIMIT 1
SELECT avg(T1.Age) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.ACL IgG = "High Cholesterol" AND T1.sex = "M"
SELECT T1.patient , T1.Diagnosis FROM Patient AS T1 JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "Normal" AND T2.TG > 100
SELECT count(*) FROM patient WHERE diagnosis = "T-CHO" AND TG > 200
SELECT DISTINCT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.T-CHOR - T1.T-CHOR BETWEEN 10 AND 10
SELECT count(*) FROM Patient WHERE sex = 'M' AND birthday BETWEEN 1936 AND 1956 AND creatinine phosphokinobest > 1000
SELECT T1.id , T1.sex , T1.Birthdate , T1.T-CHO FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T2.GGLU != 'normal' AND T2.T-CHO != 'normal'
SELECT T1.id , T2.GLU FROM Patient AS T1 JOIN Examination AS T2 ON T1.id = T2.id WHERE T2.date = "1991" AND (T2.GLU BETWEEN 100 - 100 AND 100 - 100)
SELECT T1.id , T1.sex , T1.birthday , T2.age FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T2.WBCT = 'Abnormal' GROUP BY T1.id ORDER BY T2.age ASC
SELECT diagnosis , T2.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.aCL IgG < 100
SELECT T1.patient_id , T1.sex , T1.admission FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T1.age >= 50 AND T2.aCL RBC = 0
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.T-3 < 100
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2agnosis = "SLE" AND T1.HGBC = "Normal" ORDER BY T1.age LIMIT 1
SELECT T1.id , T1.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.aCL IgG GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(HCT) FROM EXAMINATION WHERE EXAMINE_date = "1991" AND HCT < (SELECT avg(HCT) FROM EXAMINE WHERE HCT = (SELECT avg(HCT) FROM EXAMINE WHERE HCT = (SELECT avg(HCT) FROM EXAMINE WHERE HCT = (SELECT avg(HCT) FROM EXAMINE WHERE EXAMINE_date = "1991")) ))
SELECT count(*) FROM patient WHERE platelet_level < 2000 AND diagnosis = 'Abnormal' OR platelet_level > 2000 AND diagnosis = 'Normal'
SELECT T1.patient FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.aCL IgG WHERE T2.examination date = '1984' AND T1.age < 50 AND T2.alp = 0 AND T2.t-PRO = 0
SELECT count(*) , count(T1.T-PRO) , sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T2.T-PRO = 'ABN' GROUP BY T1.sex HAVING T1.age > 55
SELECT DISTINCT T1.patient FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.T-1 >= 1992 AND T2.PT = "Normal"
SELECT count(*) FROM examination WHERE EXAMINATION_DATE > '1997/1/1' AND (RESULT = 'Inactivated partial proth thromb factor')
SELECT count(*) FROM patient WHERE diagnosis != 'Thrombosis' AND activated_partial_proth1000 = 'Abnormal'
SELECT count(*) FROM Patient WHERE sex = "M" AND WBC = "Normal" AND fibrinogen = "Abnormal";
SELECT count(*) FROM patient WHERE birthday > '1980-01-1' AND T-CHO = 'ABAb'
SELECT DISTINCT diagnosis FROM patient WHERE T-PRO + 2 > 200
SELECT patient.id FROM patient WHERE diagnosis = "SLE" AND T-CHO - 2 = 0 AND T-CHO - 2 = 0
SELECT count(*) FROM patient WHERE IGG > 0 AND IGG != "normal"
SELECT count(*) FROM patient WHERE diagnosis = "S症状" AND IGG = "正常"
SELECT diagnosis FROM EXAMINATION WHERE aCL IgA = (SELECT max(aCL IgA) FROM EXAMINATION WHERE diagnosis = "Normal")
SELECT count(*) FROM patient WHERE admission > '1990-01-1' AND diagnosis = 'Normal'
SELECT diagnosis FROM examination WHERE aCL IgM = 'Abnormal' GROUP BY diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = "Abnormal C-reactive protein" EXCEPT SELECT count(*) FROM patient WHERE id IN (SELECT id FROM patient WHERE diagnosis = "Abnormal C-reactive protein")
SELECT count(*) FROM patient WHERE diagnosis != "Abnormal" AND patient.id NOT IN (SELECT id FROM patient WHERE creatinine = "Abnormal")
SELECT count(*) FROM EXPECTATION WHERE Diagnosis = "Normal Rutek Factor" AND T-COAGULARITY = 0.5
SELECT diagnosis FROM Patient WHERE birthday > '1985-1-1' AND Rhuematoid Factor = "Normal"
SELECT T1.id FROM Patient AS T1 JOIN Examination AS T2 ON T1.id = T2.aCL IgG WHERE T2.RF = "normal" AND T1.age > 60
SELECT count(*) FROM patient WHERE diagnosis = "Normal RF" EXCEPT SELECT count(*) FROM patient WHERE diagnosis = "Thrombosis"
SELECT count(*) FROM EXPECTATION WHERE aCL IgG = "3" AND Diagnosis = "P"
SELECT patient.id FROM patient WHERE HCT != 1 ORDER BY IGG DESC LIMIT 1
SELECT count(*) FROM patient WHERE complement = 4 AND complement_1 = 4
SELECT count(*) FROM patient WHERE admission = 'Yes' AND diagnosis = 'Normal' AND T-CHO = 0
SELECT T1.Birthday FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.aCL IgG = 'Ab' AND T2.aCL IgM = 'Ab' ORDER BY T2.ACTUAL DATE LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = "null" AND (SELECT count(*) FROM patient WHERE diagnosis = "Thrombosis")
SELECT id FROM patient WHERE diagnosis = "Abnormal Anti-SM" ORDER BY birth_date ASC LIMIT 3
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.admission > '1997/1/1' AND T1agnosis = 'Normal'
SELECT count(*) FROM Patient WHERE sex = "F" AND diagnosis = "null" AND symptoms = "null"
SELECT count(*) FROM patient WHERE diagnosis = "Normal anti-SSA" AND first_date < "2000"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.aCL IgG WHERE T2.NA = 'Abnormal' AND T2.T-PRO = 'Abnormal' ORDER BY T2.T-PRO ASC LIMIT 1;
SELECT count(*) FROM examination WHERE diagnosis = "SLE" AND aCL IgG = "Normal"
SELECT count(*) FROM EXAMINATION WHERE symptoms != "null" AND (SELECT count(*) FROM EXAMINATION WHERE symptoms != "null" AND (SELECT count(*) FROM EXAMINE WHERE patient.id != (SELECT id FROM patient WHERE diagnosis = "null")))
SELECT count(*) FROM Patient WHERE CENTROMEA = "Normal" AND DNA = "Normal" AND sex = "M";
SELECT diagnosis FROM Patient WHERE DNA = "Abnormal"
SELECT count(*) FROM patient WHERE DNA = "normal" AND id NOT IN (SELECT id FROM patient)
SELECT count(*) FROM patient WHERE diagnosis = "Normal IGG"
SELECT count(*) FROM patient WHERE diagnosis = "SLE" AND T-CHO = "Abnormal"
SELECT count(*) FROM patient WHERE sex = 'M' AND T-CHO <= 2000000
SELECT T1.Birthdate FROM patient AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.DID = 1 AND T1.GUPT = 1 AND T1.T-CHO = 1 ORDER BY T1.Birthdate LIMIT 1
SELECT T1.Birthday FROM Patient AS T1 JOIN Examination AS T2 ON T1.ID = T2.aCL IgG WHERE T2.ANALYSIS = "Normal" AND T2.GULU PLYT Transaminase > 200 ORDER BY T1.Birthdate LIMIT 3
{"sql": "SELECT count(*) FROM Patient WHERE sex = \"M\" AND result_of_gut_ametaric_transamissions_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_1000_10
SELECT T1.Date FROM EXAMINATION AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.DID = (SELECT ID FROM patient ORDER BY LAC DESC LIMIT 1)
SELECT T1.Admission FROM Patient AS T1 JOIN EXAMINATION AS T2 ON T1.ID = T2.aCL IgG WHERE T2.T-CHO = 'Abnormal' ORDER BY T2.Examination Date LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis LIKE '%abnormal alkaliphopatase%' AND admission = 'Yes'
SELECT count(*) FROM EXAMINATION WHERE aCL IgG = "Normal" AND aCL IgM = "Normal" AND aCL IgA = "Normal"
SELECT Diagnosis FROM Patient WHERE T-PRO + T-PRO < 200
SELECT count(*) FROM patient AS T1 JOIN diagnosis AS T2 ON T1.ID = T2.patient_id WHERE T2.Diagnosis = "SJS" AND T1.Total_protein = "Normal"
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.alp = (SELECT max(alp) FROM patient)
SELECT count(*) FROM Patient WHERE sex = "M" AND (ALP = "Normal") AND (T-CHO = "Normal")
{"sql": "SELECT T1.patient_id , T1.patient_name FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient AS T2 WHERE T2.TAT2 = (SELECT max(T2.TAT2) FROM Patient
SELECT max(ANATP) FROM Patient WHERE T-CHORIC = "Normal"
SELECT T1.id FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T1.T-CHIWAY = 'Normal' AND T2.IGG = (SELECT max(IgG) FROM laboratory)
SELECT count(*) FROM EXPECTATION WHERE aCL IgG > 200 AND aCL IgM > 200 AND ANA_PATTERN = "Peripheral"
SELECT T1.T-CHO FROM Patient AS T1 JOIN EXAMINATION AS T2 ON T1.id = T2.id WHERE T2.T-CHO = (SELECT T3.T-CHO FROM Patient AS T3 JOIN EXAMINATION AS T2 ON T3.id = T2.id WHERE T2.T-CHO = (SELECT T3.T-CHO FROM Patient AS T3 JOIN EXAMINATION AS T2 ON T3.id = T2.id WHERE T2.T-CHO = (SELECT T3.T-CHO FROM Patient AS T3 JOIN EXAMINATION AS T2 ON T3.id = T2.id WHERE T2.T-CHO = (SELECT T3.T-CHO FROM Patient AS T3 JOIN EXAMINATION AS T2 ON T3.id = T2.id WHERE T2.T-CHA = 0)) )
SELECT count(*) FROM patient WHERE T-CHO < 200
SELECT count(*) FROM EXAMINATION WHERE ANA_PATTERN = "P" AND (SELECT count(*) FROM EXAMINATION WHERE aCL IgG = "P" AND aCL IgM = "P" AND aCL IgA = "P")
SELECT count(*) FROM patient WHERE diagnosis = "Normal level of triglyceride" AND symptoms != "Other symptoms"
SELECT T1.Disease FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO <= 200 AND T2.T-CH0 >= 200 ORDER BY T2.T-CH0 DESC LIMIT 1
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.aCL IgG EXCEPT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.aCL IgG WHERE T2.T thrombosis = 'yes' AND T2.T CRE = 'Abnormal'
{"sql": "SELECT count(*) FROM EXAMINATION AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.DISNAME = \"Normal range of creatinine phosphokinobinobinobinobinobinobinobinobinobinobinobinobinobinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbinobbin000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Birthdate FROM Patient AS T1 JOIN EXAMINATION AS T2 ON T1.id = T2.acligg WHERE T2.T-CHO = 'Abnormal' ORDER BY T1.Birthdate LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = "Normal blood glucose" EXCEPT SELECT count(*) FROM patient WHERE diagnosis = "Thrombosis"
SELECT count(*) FROM patient WHERE WBC = "Normal"
SELECT count(*) FROM patient AS T1 JOIN diagnosis AS T2 ON T1.Diagnosis = T2.Diagnosis WHERE T2.Diagnosis = "SLE" AND WBC = "Normal"
SELECT T1.patient_id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.aCL IgG WHERE T2.T-Red blood cell = 'Abnormal' AND T2.T-Red blood cell = 'Outpatient clinic'
SELECT count(*) FROM patient WHERE diagnosis = "Normal platelet level" AND symptoms != "null"
SELECT T1.patient FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Disease = "MCTD" AND T1.plt >= 100 AND T1.plt <= 100
SELECT avg(T1.T-PRO) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.T-PRO = 0
SELECT count(*) FROM EXPECTATION WHERE Diagnosis = "Severe thrombosis" AND T-CHO = "Normal"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Angela" AND T2.last_name = "Sander";
SELECT count(*) FROM major WHERE department = "Engineering"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T2.department = "Art and Design"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T1.phone FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.member_id JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM member AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.position = 'T-shirt' AND T1.t_shrt_size = 'Medium' AND T2.event_id = (SELECT event_id FROM event WHERE event_name = 'Women's Soccer')
SELECT t2.event_name FROM attendance AS t1 JOIN event AS t2 ON t1.link_to_event = t2.event_id JOIN member AS t3 ON t1.link_to_member = t3.member_id WHERE t3.position = "Student_Club" ORDER BY t2.event_date DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = "Vice President" AND T2.first_name = "Student_Club"
SELECT event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.member_id = "mayasmclean"
SELECT count(*) FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.member_id WHERE T2.first_name = "Sachary" AND T2.last_name = "Harrison" AND T1.event_date = "2019";
SELECT count(*) FROM attendance WHERE member_id IN (SELECT member_id FROM attendance GROUP BY member_id HAVING count(*) > 10)
SELECT event_name FROM event WHERE attendance.count_of_students > 20 EXCEPT SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_type = 'fundraising'
SELECT avg(attendance.attendance) FROM attendance WHERE event_date = "2020"
SELECT T1.expense_description FROM expense AS T1 JOIN budget AS T2 ON T1.expense_id = T2.budget_id WHERE T2.amount = (SELECT max(T1.amount) FROM expense AS T1 JOIN budget AS T2 ON T1.expense_id = T2.budget_id WHERE T2.budget_id = (SELECT budget_id FROM budget WHERE budget_category = 'Support'))
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = "Environmental Engineering"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.member_id WHERE T2.link_to_event = "Laugh Out Loud"
SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = "Law" INTERSECT SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = "Constitutive Studies"
SELECT county FROM zip_code WHERE city = "Sherri Ramsey"
SELECT T2.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN major AS T3 ON T1.major_id = T3.major_id WHERE T3.major_name = 'Tyler Hewitt'
SELECT sum(amount) FROM budget WHERE position = "Vice President";
SELECT sum(T2.amount) FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.member_id WHERE T1.date_date = "September" AND T1.type = "food"
SELECT T2.city , T2.state FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.position = "President of Student_Club"
SELECT t1.first_name , t1.last_name FROM member AS t1 JOIN member AS t2 ON t1.member_id = t2.member_id WHERE t1.zip_code = 'Illinois'
SELECT sum(T2.amount) FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.member_id WHERE T1.event_date = "September" AND T1.type = "Advertise"
SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Pierce" AND T2.last_name = "Guidi"
SELECT sum(amount) FROM budget WHERE category = "October Speaker"
SELECT approved FROM expense WHERE expense_date = "2019-10-8" AND event_type = "October Meeting"
SELECT sum(T1.expense_amount) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.budget_id WHERE T1.event_name = "Elijah Allen" AND T1.event_date BETWEEN "September" AND "October"
SELECT sum(T2.amount) - sum(T1.amount) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.event_date = "2019" INTERSECT SELECT sum(T2.amount - T1.amount) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.event_date = "2020"
SELECT LOCATION FROM event WHERE event_name = "Spring Budget Review"
SELECT count(*) FROM expense WHERE expense_date = "2019/9/4" AND expense_description = "Posters"
SELECT remaining FROM budget WHERE category = "Food" ORDER BY amount DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019/9/14"
SELECT count(*) FROM major WHERE department = "College of Humanities and Social Sciences";
SELECT phone FROM member WHERE first_name = "Carly" AND last_name = "Jacobs";
SELECT T2.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.county = "Adela O'Gallagher"
SELECT count(*) FROM budget WHERE event_status = "November Meeting" AND amount > (SELECT max(amount) FROM budget WHERE event_status = "November Meeting")
SELECT sum(amount) FROM budget WHERE event_status = "September Speaker"
SELECT status FROM event WHERE event_name = "Post Cards, Posters" AND event_date = "2019/8/20"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Brent" AND T2.last_name = "Thomason";
SELECT count(*) FROM member WHERE position = "Business" AND t_shrt_size = "Medium";
SELECT zip_code FROM zip_code WHERE type = "zip code" AND first_name = "Christof" AND last_name = "Nielson";
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.position = "Vice President"
SELECT T2.city FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = "Sacha Harrison"
SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = "President"
{"sql": "SELECT date_received FROM expense WHERE member_id = 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.member_id JOIN expense AS T3 ON T1.member_id = T3.member_id JOIN budget AS T4 ON T3.budget_id = T4.budget_id WHERE T4.amount = T2.amount ORDER BY T4.amount DESC LIMIT 1
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T2.date = "October Meeting"
SELECT sum(T1.amount) , T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "November Speaker" AND T1.category = "Parking" GROUP BY T1.category HAVING sum(T1.amount) > 0
SELECT sum(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = "pizza"
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia";
SELECT department FROM major WHERE department = "College of Humanities and Social Sciences"
SELECT T1.city FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Amby" AND T2.last_name = "Firth"
SELECT category FROM budget ORDER BY remaining LIMIT 1
SELECT T2.first_name FROM attendance AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.link_to_event = "October Meeting"
SELECT college FROM major GROUP BY college ORDER BY count(*) DESC LIMIT 1
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.phone = "809-555-3360"
SELECT event_name FROM budget ORDER BY amount DESC LIMIT 1
SELECT sum(expense.amount) FROM expense AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T2.position = "Vice President"
SELECT count(*) FROM attendance WHERE event_name = "Women's Soccer";
SELECT date_received FROM income WHERE first_name = "Casey" AND last_name = "Mason";
SELECT count(*) FROM zip_code WHERE state = 'Maryland'
SELECT count(*) FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.member_id WHERE T1.phone = "954-555-6240"
SELECT T2.member_id FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.department = "School of Applied Sciences, Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.budget_id WHERE T2 spent = (SELECT max(spent) FROM budget) ORDER BY T2 spent DESC LIMIT 1
SELECT count(*) FROM member WHERE position = "president"
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_date = "2020"
SELECT sum(amount) FROM budget WHERE category = "food";
SELECT T2.first_name FROM attendance AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.link_to_event = 'event' AND T1.count_of_events > 7
SELECT T1.member_id FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T2.major_name = "Interior design" INTERSECT SELECT T1.member_id FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.member_id WHERE T2.event_id = "Community Theater"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T2.department = "Georgetown" AND T2.college = "South Carolina"
SELECT sum(amount) FROM income AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour";
SELECT T1.member_id FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.member_id WHERE T2.amount > 40
SELECT sum(T1.expense) FROM budget AS T1 JOIN event AS T2 ON T1.expense_id = T2.event_id WHERE T2.event_date = "Yearly Kickoff"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.budget_id WHERE T2.event_status = "Yearly Kickoff"
SELECT T2.first_name , T2.last_name , T1.source FROM income AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id GROUP BY T1.member_id ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT event_name FROM event ORDER BY cost LIMIT 1
SELECT sum(t1.cost) , t1.type FROM event AS t1 JOIN budget AS t2 ON t1.event_id = t2.budget_id WHERE t2.event_status = 'Yearly Kickoff' GROUP BY t1.type HAVING sum(t1.cost) = t1.type
SELECT count(*) , count(*) FROM major WHERE major_name = 'Finance' INTERSECT SELECT count(*) , count(*) FROM major WHERE major_name = 'Physics'
SELECT source FROM income WHERE date_received = "2019-09-10" GROUP BY source ORDER BY amount DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.email FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.member_id WHERE T2.major_name = "Student_Club" AND T2.department = "Secretary"
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Community Theater" AND T1.date_received = "2019";
SELECT count(*) , T1.major_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.first_name = "Luisa" AND T1.last_name = "Guidi"
SELECT avg(T1.expense_amount) FROM expense AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "food" GROUP BY T1.expense_amount HAVING avg(T1.expense_amount) > 1
SELECT event_name FROM event WHERE type = 'advertising' ORDER BY sum(amount) DESC LIMIT 1
SELECT count(*) FROM event WHERE event_name = "Women's Soccer" AND event_id = (SELECT event_id FROM attendance WHERE member_id = "Maya Mclean")
SELECT count(*) , sum( type ) FROM event WHERE event_date = "2019" AND event_name = 'Community Service'
SELECT T2.cost FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = "September Speaker"
SELECT t-shirt_size FROM member ORDER BY t_shirt_size DESC LIMIT 1
SELECT T1.event_name FROM budget AS T1 JOIN event AS T2 ON T1.budget_id = T2.event_id WHERE T1.amount > (SELECT max(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.budget_id = T2.budget_id WHERE T2.event_name = 'closed')
SELECT T2.type , sum(T1.expense) FROM budget AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.event_name = 'October Meeting' GROUP BY T2.type
SELECT category FROM budget WHERE event_status = 'April Speaker' ORDER BY amount_budgeted ASC
SELECT category FROM budget ORDER BY amount DESC LIMIT 1
SELECT category FROM budget ORDER BY amount DESC LIMIT 3
SELECT sum(T1.expense_amount) FROM expense AS T1 JOIN budget AS T2 ON T1.expense_id = T2.budget_id WHERE T2.category = "Parking"
SELECT sum(expense.amount) FROM expense WHERE expense_date LIKE "2019-08-20"
SELECT t1.first_name , t1.last_name , sum(t1.expense_amount) FROM member AS t1 JOIN expense AS t2 ON t1.member_id = t2.member_id WHERE t2.expense_id = "rec4BLdZHS2Blfp4v"
SELECT T2.expense_description FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T3.member_id = T3.member_id WHERE T3.first_name = "Sachary" AND T3.last_name = "Harrison"
SELECT T2.expense_description FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id WHERE T1.t_shrt_size = "X-Large"
SELECT T1.zip_code FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.position = "member" AND T2.t_shirt_size < 50
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Phillip" AND T2.last_name = "Cullen";
SELECT T2.position FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = 'Business'
SELECT count(*) FROM member WHERE t_shirt_size = "Medium"
SELECT type FROM budget WHERE remaining - 30 > 0
SELECT category FROM budget WHERE event_id = 215
SELECT category FROM budget WHERE event_date = "2020-03-24T12:00:00"
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.position = "Vice President"
SELECT count(*) , sum(T2.position) FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T2.major_name = 'Business' GROUP BY T2.major_name HAVING count(*) = 1;
SELECT category FROM event WHERE location = "MU 215"
SELECT sum(amount) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = "extra large";
SELECT count(*) FROM major WHERE department = "School of Applied Sciences" AND college = "College of Agriculture and Applied Sciences"
SELECT T1.last_name , T2.department , T2.college FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T2.major_name = 'environmental engineering'
SELECT category FROM budget WHERE spent = 0 AND location = "MU 215" INTERSECT SELECT category FROM budget WHERE budget.amount = 0 AND event_status = "Guest"
SELECT T1.city , T1.state FROM department AS T1 JOIN member AS T2 ON T1.department = T2.department WHERE T1.major_name = "Electrical and Computer Engineering"
SELECT T1.event_name FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.member_id WHERE T2.position = "Vice President" AND T1.location = "900 E. Washington St."
SELECT T2.last_name , T1.position FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.member_id WHERE T1.event_date = "09/10/2019" AND T1.event_name = "pizza"
SELECT T1.last_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.member_id WHERE T2.link_to_event = "women's soccer event"
SELECT sum(T2.amount) FROM member AS T1 JOIN member AS T2 ON T1.t_shrt_size = T2.t_shrt_size WHERE T1.first_name = "Student_Club" AND T1.last_name = "50" GROUP BY T1.t_shrt_size HAVING count(*) = 1
SELECT T2.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state != "Los Angeles"
SELECT zip_code FROM zip_code WHERE state = "Puerto Rico" AND city = "San Juan Municipio"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.budget_id WHERE T2.rent_amount = 3 AND T2.date BETWEEN 3/15/2019 AND 3/20/2020
SELECT link_to_event FROM attendance WHERE member_id IN (SELECT member_id FROM member WHERE position = "Member" AND sum(amount) > 50)
SELECT T1.link_to_event , T2.member_id FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.event_date BETWEEN '1/10/2019' AND '11/19/2019'
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Katy" AND T1.major_name = "rec1N0upiVLy5esTO"
SELECT phone FROM member WHERE major_name = "College of Agriculture and Applied Sciences"
SELECT email FROM member WHERE member_id IN (SELECT member_id FROM expense WHERE spent > 20 AND event_date BETWEEN '10/10/2019' AND '11/19/2019')
SELECT count(*) FROM major WHERE department = "College of Education & Human Services"
SELECT sum(percent_of_budget) FROM budget WHERE event_status = 'over_budget'
SELECT event_id , location , status FROM event WHERE event_date BETWEEN "2019-11-10" AND "2020-3-30"
SELECT expense_description FROM expense GROUP BY expense_description HAVING avg spent > 5
SELECT first_name , last_name FROM member WHERE t_shrt_size = "extra large"
SELECT count(*) , type FROM zip_code WHERE type = "PO boxes"
SELECT T1.event_name , T1.location FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.amount < T2.total
SELECT T1.event_name , T1.event_date FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.budget_id JOIN expense AS T3 ON T2.budget_id = T3.budget_id WHERE T3.expense_description = 'pizza' AND T3.expense_date BETWEEN 5 AND 100
SELECT T1.first_name , T1.last_name , T2.major_name FROM member AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T2.expense_id NOT IN (SELECT expense_id FROM expense WHERE spent > 100)
SELECT T1.location , T1.state FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.event_id HAVING sum(T2.amount) > 40
SELECT T2.member_id , T1.amount FROM budget AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id GROUP BY T2.member_id ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT avg(amount) FROM member WHERE position != "member"
SELECT event_name FROM event WHERE event_type = 'parking' GROUP BY event_name HAVING sum(available) < (SELECT avg(available) FROM event)
SELECT sum(T1.cost) FROM budget AS T1 JOIN event AS T2 ON T1.expense_id = T2.event_id GROUP BY T2.event_id HAVING sum(T1.cost) > 1000
SELECT category FROM budget WHERE category = "water" INTERSECT SELECT category FROM budget WHERE category = "chips" INTERSECT SELECT category FROM budget WHERE category = "cookies" GROUP BY category ORDER BY sum(remaining) DESC LIMIT 1
SELECT t2.first_name , t2.last_name FROM budget AS t1 JOIN member AS t2 ON t1.link_to_budget = t2.member_id ORDER BY t1.amount DESC LIMIT 5
SELECT T2.first_name , T2.last_name , T2.phone FROM expense AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id GROUP BY T1.member_id HAVING avg(T1.expenses) > (SELECT avg(expenses) FROM expense)
SELECT sum(T2.position - T1.position) FROM member AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.state = 'New Jersey' INTERSECT SELECT sum(T2.position - T1.position) FROM member AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.state = 'Vermont'
SELECT T1.major_name , T2.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Gareth" AND T2.last_name = "Gerke";
SELECT T2.first_name , T2.last_name , T2.email , T2.t_shirt_size FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id WHERE T2.expense_description = 'water' INTERSECT SELECT T2.first_name , T2.last_name , T2.email , T2.t_shirt_size FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id WHERE T2.expense_description = 'veggie tray' INTERSECT SELECT T2.first_name , T2.last_name , T2.t_shirt_size FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id WHERE T2.expense_description = 'supplies'
SELECT T2.phone FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.position = "Elementary Education"
SELECT category FROM budget WHERE event_status = 'January Speaker' AND amount = (SELECT sum(amount) FROM budget WHERE event_status = 'January Speaker')
SELECT event_name FROM budget WHERE category = 'food'
SELECT T1.first_name , T1.last_name , T2.amount FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.member_id WHERE T2.amount = 1 AND T2.event_date = '9/9/2019'
SELECT category FROM budget WHERE spent = 'Posters'
SELECT T1.first_name , T1.last_name , T2.college FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.position = 'Secretary'
SELECT sum(T2.amount) , T1.event_name FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'speaker gifts' GROUP BY T1.event_name
SELECT T1.city FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Gareth" AND T2.last_name = "Gerke";
SELECT T2.first_name , T2.last_name , T2.position FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.zip_code = 28092 AND T1.first_name = "Lincolnton" AND T1.last_name = "North Carolina";
SELECT count(*) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid JOIN yearmonth AS T3 ON T2.date = T3.date WHERE T3.country = "CZE" AND T1.segment = "Premium"
SELECT count(*) , count(Currency) FROM customers WHERE Currency = "EUR" INTERSECT SELECT count(*) , count(Currency) FROM customers WHERE Currency = "CZK"
SELECT T1.customerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerID = T2.customerID WHERE T2.date = "2012" AND T1.country = "LAM"
SELECT avg(Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE YEAR(T1.date) = 2013 AND T2.Segment = 'SME'
SELECT T1.customerid FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "CZK" AND T2.date = "2011" GROUP BY T1.customerid ORDER BY sum(Consumption) DESC LIMIT 1
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2012" AND T2.currency = "KAM"
SELECT max(Consumption - 2012) FROM yearmonth WHERE CustomerID = 2012 AND CustomerID = 2012
SELECT date FROM yearmonth GROUP BY date ORDER BY count(*) DESC LIMIT 1
SELECT segment FROM customers ORDER BY consumption LIMIT 1
SELECT T1.Date , T1.Conuration FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID GROUP BY T1.TransactionID ORDER BY T1.Conuration DESC LIMIT 1
SELECT T1.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND T1.Date = 2013
SELECT avg(Consumption) - (SELECT min(Consumption) FROM yearmonth WHERE YEARmonth.date = 2013 AND customerid = 'SME') FROM yearmonth WHERE YEARmonth.date = 2013 AND customerid = 'LAM' INTERSECT SELECT avg(Consumption - (SELECT min(Consumption) FROM yearmonth WHERE YEARmonth.date = 2013 AND customerid = 'LAM)) FROM yearmonth WHERE YEARmonth.date = 2013 AND customerid = 'KAM' INTERSECT SELECT avg(Consumption - (SELECT min(Consumption) FROM yearmonth WHERE YEARmonth.date = 2013 AND customerid = 'KAM))) FROM yearmonth WHERE YEARmonth.date = 2013 AND customerid = 'SME'
SELECT T2.Segment , max(T1.CustsInEUR - T2.CustsInEUR) , min(T1.CustsInEUR - T2.CustsInEUR) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'SME' AND T2.Date = '2012-12-12' INTERSECT SELECT T2.Segment , max(T1.CustsInEUR - T2.CustsInEUR) , min(T1.CustsInEUR - T2.CustsInEUR) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'LAM' INTERSECT SELECT T2.Segment , max(T1.CustsInEUR - T2.CustsInEUR) , min(T1.CustsInEUR - T2.CustsInEUR) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'KAM'
SELECT sum(Consumption) FROM yearmonth WHERE date BETWEEN '2013-08-10' AND '2013-11-10' AND customerid = 6
SELECT count(*) FROM gasstations WHERE country = "Czech Republic" INTERSECT SELECT count(*) FROM gasstations WHERE country = "Slovakian"
SELECT sum(T1.Consuming) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = "2013-04-10" AND T2.CustomerID = 7
SELECT count(*) FROM customers WHERE currency = "C�" - count(*) FROM customers WHERE currency = "Euros"
SELECT T2.customerid , T1.currency FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2013-10-10" AND T2.currency = "EUR" GROUP BY T1.customerid ORDER BY sum(Consumption) DESC LIMIT 1
SELECT T1.customerid , sum(T2.consuming) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid GROUP BY T1.customerid ORDER BY sum(T2.consuming) DESC LIMIT 1
SELECT sum(T1.Date) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'KAM' AND T1.Date = '2013-05'
SELECT sum(1) FROM yearmonth WHERE Consumption > 46.73
SELECT country , count(*) FROM gasstations WHERE value_for_money_count > 0 GROUP BY country
SELECT sum(price) FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = "EUR"
SELECT T1.date , sum(T2.consuming) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2012-02-12" AND T2.currency = "US" GROUP BY T2.customerid HAVING max(T2.consuming) > 528.3
SELECT count(*) , sum(Percentage) FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID JOIN yearmonth AS T3 ON T1.TransactionID = T3.TransactionID WHERE T2.Country = "Slovakian" AND T3.Date = 1000
SELECT T1.customerid FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2013-09-10" GROUP BY T1.customerid ORDER BY sum(Consumption) DESC LIMIT 1
SELECT T2.Segment FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = "2013-09" GROUP BY T2.Segment ORDER BY COUNT(*) LIMIT 1
SELECT T1.customerid FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2012-06-10" AND T2.segment = "SME"
SELECT max(Consumption) FROM yearmonth WHERE Date = 2012
SELECT max(Consumption) FROM yearmonth WHERE Currency = "Euro"
SELECT T2.description FROM transactions_1k AS T1 JOIN products AS T2 ON T1.productid = T2.productid WHERE T1.date = "2013-09-10" GROUP BY T1.productid HAVING sum(T1.amount) >= 1
SELECT T1.Country FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2013-06-10" GROUP BY T1.Country HAVING count(*) = 1
SELECT chainid FROM transactions_1k WHERE currency = 'euro' GROUP BY chainid
SELECT T1.description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid WHERE T2.amount = 1000 AND T2.currency = 'EUR'
SELECT avg(Amount) FROM transactions_1k WHERE Date = "2012-01-10"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "euro" AND T2.consumption > 1000
SELECT T1.description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid JOIN gasstations AS T3 ON T2.gasstationid = T3.gasstationid WHERE T3.country = "Czech Republic"
SELECT T1.Date , T1.Time FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.ChainID = 11
SELECT count(*) FROM transactions_1k WHERE GasStationID = 2 AND Country = "Czech Republic" AND Price > 1000
{"sql": "SELECT count(*) FROM transactions_1k WHERE Date > '2012/1/1' AND GasStationID = 2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(T1.amount) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.country = "Czech Republic"
SELECT avg(T1.amount) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "Euro"
SELECT t1.customerid FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t2.date = "2012-8-25" GROUP BY t1.customerid ORDER BY sum(amount) DESC LIMIT 1
SELECT T1.Country FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012-08-25" GROUP BY T1.Country HAVING count(*) = 1
SELECT T2.Currency FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = "2012-08-24" AND T1.Time = "16:25:00"
SELECT t1.segment FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t2.date = "2012-08-23 21:20:00"
{"sql": "SELECT count(*) FROM transactions_1k WHERE date = \"2012-8-26\" AND time = \"Morning\" AND customerid = 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid ORDER BY T2.date LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = "2012/8/24 12:42:00"
SELECT T1.productid FROM transactions_1k AS T1 JOIN products AS T2 ON T1.productid = T2.productid WHERE T1.date = "2012-08-23 21:20:00"
SELECT T1.date , T1.amount , T1.date FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = '2012/8/24' AND T1.amount = 124.05
SELECT count(*) FROM transactions_1k WHERE date BETWEEN "2012-08-26" AND "2012-08-9" AND time BETWEEN "8:00" AND "9:00" AND customerid = "CZE"
SELECT T1.currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2013-06" AND T1.currency = "214582.17"
SELECT T1.Country FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = 667467
SELECT T2.country FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2012/8/24" AND T1.amount = 548.4
SELECT sum(T2.consuming) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "EUR" AND T2.date = "2012-8-25"
SELECT T1.consumption - (T2.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.customerid = 6348 AND T2.date = 2012-8-25
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID GROUP BY T1.GasStationID ORDER BY SUM(T1.Amount) DESC LIMIT 1
SELECT sum(T1.Premium) , T1.Segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = "premium" AND T1.Country = "SVK"
SELECT T1.amount , T2.date FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.customerid = 38508 AND T2.date = '2012-01'
SELECT T1.description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid ORDER BY T2.amount DESC LIMIT 5
SELECT T1.customerid , avg(T1.amount) , T1.currency FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid GROUP BY T1.customerid ORDER BY avg(T1.amount) DESC LIMIT 1;
SELECT T2.country , T1.productid FROM transactions_1k AS T1 JOIN products AS T2 ON T1.productid = T2.productid GROUP BY T1.productid ORDER BY sum(T1.price) DESC LIMIT 1
SELECT T1.consuming FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = 'US' AND T1.date = '2012-08' AND T1.amount > 29.00 GROUP BY T1.consuming
