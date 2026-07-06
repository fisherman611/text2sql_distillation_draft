SELECT CAST(T1.FreeMealCount AS REAL) / T1.EnrollmentK12 FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Alameda County' AND T2.District = 'K-12' ORDER BY T1.FreeMealCount DESC LIMIT 1
SELECT CAST(SUBSTR(`Free Meal Count (Ages 5-17)`, 4, 2) AS REAL) / CAST(SUBSTR(`Enrollment (Ages 5-17)`, 4, 2) AS REAL) FROM frpm WHERE School Name = 'Continuation Schools' AND 5 <= Age <= 17
SELECT T1.Zip FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Fresno County' AND T2.`Charter School (Y/N)` = '1'
SELECT T2.MailStreet FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.FRPM COUNT (T1.FRPM) DESC LIMIT 1
SELECT T2.Phone FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Charter School (Y/N) = 1 AND T2.OpenDate > '2000-01-01'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.Virtual = 'F' AND T2.AvgScrMath > 400
SELECT T1.Street FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.FRAMP > 500 AND T1.Magnet = 1
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr = ( SELECT MAX(NumTstTakr) FROM satscores ) AND T2.AvgScrRead > 1500
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.CDSCode ORDER BY SUM(T2.FRPM Count (K-12)) DESC LIMIT 1
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath > 560 AND T1.Charter = 'Y'
SELECT T2.FRPM COUNT(T1.FRPM) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T1.CDSCode = T3.cds WHERE T3.AvgScrRead = ( SELECT MAX(AvgScrRead) FROM satscores ) AND T1.District = 'Reading' AND T1.State = 'California' AND T1.CCSCode = '94031' AND T2.FRPM IS NOT NULL GROUP BY T2.CDSCode
SELECT DISTINCT CDSCode FROM frpm WHERE Enrollment (K-12) + Enrollment (Ages 5-17) > 500
SELECT T2.FreeMealRate FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T1.CDSCode = T3.cds WHERE T3.NumGE1500 / T3.NumTstTakr > 0.3 ORDER BY T2.FreeMealRate DESC LIMIT 1
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 / T2.NumTstTakr > 0 ORDER BY T2.NumGE1500 / T2.NumTstTakr DESC LIMIT 3
SELECT T1.NCESchool, T2.Enrollment (Ages 5-17) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.Enrollment (Ages 5-17) DESC LIMIT 5
SELECT T1.CDSCode FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.rtype = 'Read' GROUP BY T1.CDSCode ORDER BY SUM(T2.AvgScrRead) DESC LIMIT 1
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr < 100 AND T1.County = 'Alameda'
SELECT T1.CharmerNum FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrWrite > 499
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Fresno' AND T2.FRPM Count (K-12) < 250
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath IS NOT NULL ORDER BY T2.AvgScrMath DESC LIMIT 1
SELECT COUNT(CDSCode) FROM frpm WHERE County = 'Amador' AND Low Grade = 9 AND High Grade = 12
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Free Meal Count (K-12) > 500 AND T2.Free Meal Count (K-12) < 700
SELECT T2.school FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.County = 'Contra Costa' GROUP BY T2.school ORDER BY SUM(T2.NumTstTakr) DESC LIMIT 1
SELECT T1.Street FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment (K-12) - T2.Enrollment (Ages 5-17) > 30
SELECT T1.school FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.FRPM Count (K-12) / T2.Enrollment (K-12) > 0.1 AND T2.Free Meal Count (K-12) * 100 / T2.Enrollment (K-12) > 1500
SELECT DISTINCT T1.FundingType FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath > 400 AND T1.City = 'Riverside'
SELECT T2.Street, T2.City, T2.Zip FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Free Meal Count (Ages 5-17) > 800
SELECT T1.`School Name`, T2.AvgScrWrite, T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.OpenDate > 1991 AND T1.ClosedDate < 2000
SELECT T1.school_name, T1.DOCTYPE FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FundingType = 'Locally Funded' GROUP BY T1.school_name, T1.DOCTYPE HAVING SUM(T2.Enrollment (K-12)) - SUM(T2.Enrollment (Ages 5-17)) > ( SELECT AVG(T2.Enrollment (K-12)) - SUM(T2.Enrollment (Ages 5-17)) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FundingType = 'Locally Funded' )
SELECT T1.OpenDate FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment (K-12) = ( SELECT MAX(Enrollment (K-12)) FROM frpm )
SELECT T1.City FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment (K-12) IS NOT NULL ORDER BY T2.Enrollment (K-12) LIMIT 5
SELECT T2.FreeMealCount / T2.Enrollment FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Percent (%) Eligible Free (K-12) > 0 ORDER BY T2.Enrollment DESC LIMIT 2
SELECT T2.FreeMealPercent FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.CDSCode = 66 ORDER BY T2.FreeMealPercent DESC LIMIT 5
SELECT T2.Website, T1.school_name FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Free Meal Count (K-12) BETWEEN 1900 AND 2000 AND T2.Free Meal Count (Ages 5-17) BETWEEN 1900 AND 2000
SELECT T1.Free Meal Count (Ages 5-17) / T1.Enrollment (Ages 5-17) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Name = 'Kacey Gibson' AND T1.Free Meal Count (Ages 5-17) IS NOT NULL AND T1.Enrollment (Ages 5-17) IS NOT NULL
SELECT T2.AdmEmail1 FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Charter School (Y/N) = 1 AND T1.Enrollment (K-12) = 1 ORDER BY T1.Enrollment (K-12) DESC LIMIT 1
SELECT T2.AdmFName1, T2.AdmLName1 FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 = ( SELECT MAX(NumGE1500) FROM satscores )
SELECT T1.Street, T1.City, T1.Zip, T1.State FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY CAST(T2.NumGE1500 AS REAL) / T2.NumTstTakr ASC LIMIT 1
SELECT T1.Website FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'LA County' AND T2.FRPM Count (K-12) BETWEEN 2000 AND 3000
SELECT SUM(T2.NumTstTakr) / COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.OpenDate BETWEEN '1/1/1980' AND '12/31/1980' AND T1.County = 'Fresno'
SELECT T2.Phone FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.District = 'Fresno Unified' ORDER BY T2.FRPM Count (Ages 5-17) DESC LIMIT 1
SELECT T1.school_name FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.Virtual = 'F' ORDER BY T2.AvgScrRead DESC LIMIT 5
SELECT T1.EdOpsName FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath IS NOT NULL ORDER BY T2.AvgScrMath DESC LIMIT 1
SELECT T1.AvgScrMath, T1.County FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode GROUP BY T2.County ORDER BY SUM(T1.AvgScrMath) + SUM(T1.AvgScrRead) + SUM(T1.AvgScrWrite) ASC LIMIT 1
SELECT AVG(T1.AvgScrWrite), T2.City FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.NumTstTakr = ( SELECT MAX(NumTstTakr) FROM satscores ) AND T1.NumGE1500 > 0
SELECT T2.school, T1.AvgScrWrite FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.AdmFName1 = 'Ricci Ulrich'
SELECT T1.State FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.DOCTYPE = 'Special' GROUP BY T1.State ORDER BY COUNT(T2.Enrollment (K-12)) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.OpenDate LIKE '1980-01-01%' THEN 1 ELSE 0 END) AS REAL) / 12 FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.DOC = 52 AND T2.County Name = 'Alameda County'
SELECT CAST(SUM(CASE WHEN DOC = 54 THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN DOC = 52 THEN 1 ELSE 0 END) FROM schools WHERE County = 'Orange County'
SELECT T2.County, T2.ClosedDate FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T2.CDSCode, T2.ClosedDate ORDER BY COUNT(T2.CDSCode) DESC LIMIT 1
SELECT T1.Street, T1.City FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath = ( SELECT MAX(AvgScrMath) FROM satscores )
SELECT T2.MailStreet, T1.school_name FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T2.cds = T3.cds WHERE T3.AvgScrRead IS NOT NULL ORDER BY T3.AvgScrRead LIMIT 1
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.MailCity = 'Lakeport' AND T2.AvgScrRead + T2.AvgScrMath + T2.AvgScrWrite >= 1500
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.MailCity = 'Fresno'
SELECT T1.Zip, T1.MailZip FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = 'Avetik Atoian'
SELECT CAST(SUM(CASE WHEN T1.County = 'Colusa' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.County = 'Humboldt' THEN 1 ELSE 0 END) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.MailState = 'California'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailState = 'California' AND T1.MailCity = 'San Joaquin'
SELECT T1.Phone, T1.Ext FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrWrite = ( SELECT MAX(AvgScrWrite) FROM satscores )
SELECT T2.Phone, T2.Ext, T1.school_name FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Zip = 95203 AND T2.FRPM = 1
SELECT T1.Website FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = 'Mike Larson' OR T1.AdmFName2 = 'Dante Alvarez'
SELECT Website FROM schools WHERE Virtual = 'P' AND Charter = 1 AND County = 'San Joaquin'
SELECT COUNT(CDSCode) FROM schools WHERE City = 'Hickman' AND Charter = 1 AND DOC = 52
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Percent (%) Eligible Free (K-12) < 0.18 AND T1.County = 'Los Angeles' AND T1.Charter = 0
SELECT T2.AdmFName1, T2.AdmLName1, T2.AdmFName2, T2.AdmLName2, T2.AdmFName3, T2.AdmLName3, T2.City FROM schools AS T1 INNER JOIN ( SELECT AdmFName1, AdmLName1, AdmFName2, AdmLName2, AdmFName3, AdmLName3, City FROM schools WHERE Charter = 'Y' AND CharterNum = '00D2' ) AS T2 ON T1.AdmFName1 IS NOT NULL AND T1.AdmLName1 IS NOT NULL WHERE T1.Charter = 'Y' AND T1.CharterNum = '00D2'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailCity = 'Hickman' AND T1.CharterNum = '00D4'
SELECT CAST(SUM(CASE WHEN T2.FundingType = 'L' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.FundingType) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Santa Clara County'
SELECT COUNT(DISTINCT T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FundingType = 'Directly Funded' AND T2.OpenDate BETWEEN '2000-01-01' AND '2005-12-31' AND T1.County = 'Stanislaus'
SELECT SUM(CASE WHEN T2.City = 'San Francisco' THEN 1 ELSE 0 END) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Academic Year = '1989' AND T2.District = 'Community College District'
SELECT T2.County FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.SOC = 11 AND T1.`Academic Year` BETWEEN 1980 AND 1989 GROUP BY T2.County ORDER BY COUNT(T2.CDSCode) DESC LIMIT 1
SELECT T1.NCESSchool FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.SOC = 31
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Alpine County' AND T1.StatusType = 'Active' AND T1.District = 'Closed'
SELECT T1.District Code FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.City = 'Fresno' AND T2.Magnet = 0
SELECT SUM(CASE WHEN T1.Enroll12 > 0 AND T1.Enroll12 < 100 AND T1.EdOpsCode = 'SSS' AND T1.academic_year = '2014-2015' THEN 1 ELSE 0 END) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.academic_year = '2014-2015' AND T1.Enroll12 < 100 AND T1.Enroll12 > 0
SELECT SUM(CASE WHEN T1.FreeMealCount > 0 THEN 1 ELSE 0 END) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.MailStreet = 'PO Box 1040' AND T1.FreeMealCount > 0 AND T2.Street = 'PO Box 1040'
SELECT MIN(T1.Low Grade) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.EdOpsCode = 'SPECON' AND T2.NCESDist = 613360
SELECT T2.EdOpsName FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County Code = 37 AND T2.FRAM Provision = '2'
SELECT T2.City FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Low Grade = 9 AND T1.High Grade = 12 AND T1.County = 'Merced' AND T2.EILCode = 'HS'
SELECT T2.School Name, T1.Percent (%) Eligible FRPM (Ages 5-17) / T1.Enrollment (Ages 5-17) * 100 FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Los Angeles' AND T2.GSoffered = 0 AND T2.GSserved = 0 AND T1.Percent (%) Eligible FRPM (K-12) / T1.Enrollment (K-12) * 100 = 100
SELECT T1.rtype FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.City = 'Adelanto' GROUP BY T1.rtype ORDER BY COUNT(T1.rtype) DESC LIMIT 1
SELECT T2.County, SUM(T1.Virtual) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Virtual = 'F' AND County IN ('Santa Barbara', 'San Diego') GROUP BY T2.County ORDER BY COUNT(T1.Virtual) DESC LIMIT 1
SELECT T2.Latitude, T2.City, T2.Street FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Latitude = ( SELECT MAX(Latitude) FROM schools )
SELECT T2.City, T2.Latitude, T2.Low Grade FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.State = 'CA' ORDER BY T2.Latitude LIMIT 1
SELECT MAX(GSoffered) FROM schools WHERE Longitude = ( SELECT MAX(Latitude) FROM schools )
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Magnet = 1 AND T2."NSLP Provision Status" = 'Multiple Provision Types' AND T1.GSoffered = 0 AND T1.GSserved = 8
SELECT DISTINCT T1.AdmFName1, T1.AdmFName2, T1.District FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.AdmFName1, T1.AdmFName2, T1.District ORDER BY COUNT(T1.AdmFName1) DESC LIMIT 1
SELECT T1.Percent (%) Eligible Free (K-12), T1.District Code FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.AdmFName1 = 'Alusine'
SELECT T2.LastUpdate, T2.AdmFName1, T2.AdmLName1, T2.County, T1.school FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.CharterNum = 40 GROUP BY T2.LastUpdate, T2.AdmFName1, T2.AdmLName1, T2.County, T1.school
SELECT DISTINCT T1.AdmEmail1 FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.OpenDate BETWEEN '1/1/2009' AND '12/31/2010' AND T2.County = 'San Bernardino County' AND T2.DOC = 54 AND T1.SOC = 62
SELECT T2.AdmEmail1, T1.school_name FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr = ( SELECT MAX(NumTstTakr) FROM satscores ) AND T2.NumGE1500 = ( SELECT MAX(NumGE1500) FROM satscores )
SELECT COUNT(T1.account_id) FROM trans AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T2.A3 = 'POPLATEK PO OBRATU' AND T2.district_id = 21
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A3 = 'Prague'
SELECT CASE WHEN SUM(A12) > SUM(A13) THEN A12 WHEN SUM(A12) < SUM(A13) THEN A13 ELSE A12 END FROM district
SELECT SUM(CASE WHEN T1.A11 > 6000 AND T1.A11 < 10000 THEN 1 ELSE 0 END) FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'North Bohemia' AND T1.gender = 'M' AND T2.A11 > 8000
SELECT T2.account_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'F' ORDER BY T1.birth_date ASC, T2.A11 LIMIT 1
SELECT T1.account_id FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id ORDER BY T3.A11 DESC LIMIT 1
SELECT COUNT(T1.client_id) FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'statement of weekly issuance'
SELECT DISTINCT T1.client_id FROM disp AS T1 INNER JOIN trans AS T2 ON T1.disp_id = T2.account_id WHERE T1.type = 'POPLATEK PO OBRATU'
SELECT T1.account_id, T2.issued FROM loan AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T1.`date`) = '1997' ORDER BY T1.amount LIMIT 1
SELECT T1.account_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND T2.date LIKE '1993%' GROUP BY T1.account_id ORDER BY SUM(T1.amount) DESC LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Sokolov' AND T1.gender = 'F' AND STRFTIME('%Y', T1.birth_date) < '1950'
SELECT DISTINCT account_id FROM account WHERE STRFTIME('%Y', `date`) = '1995'
SELECT DISTINCT T1.account_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T1.date) < '1997' AND T1.amount > 3000
SELECT T2.client_id FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE STRFTIME('%Y-%m-%d', T1.issued) = '1994-03-03'
SELECT T1.opening_date FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'P' AND T2.date = '1998-10-14' AND T2.amount = '840'
SELECT T2.district_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.`date` = '1994-08-25'
SELECT T1.amount FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y-%m-%d', T1.date) = '1996-10-21' ORDER BY T1.amount DESC LIMIT 1
SELECT T1.gender FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A11 = ( SELECT MAX(A11) FROM district )
SELECT T3.amount FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T1.status = 'APPLYING' ORDER BY T1.amount DESC LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Jesenik' AND T1.gender = 'F'
SELECT T1.disp_id FROM disp AS T1 INNER JOIN trans AS T2 ON T1.client_id = T2.account_id WHERE T2.amount = 5100 AND STRFTIME('%Y-%m-%d', T2.date) = '1998-09-02'
SELECT SUM(CASE WHEN T1.A2 = 'Litomerice' THEN 1 ELSE 0 END) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date = '1996%'
SELECT T1.A2 FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' AND STRFTIME('%Y', T2.birth_date) = '1976' AND STRFTIME('%d', T2.birth_date) = '29'
SELECT T1.birth_date FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.amount = '98832' AND STRFTIME('%Y-%m-%d', T2.date) = '1996-01-03'
SELECT T1.account_id FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A3 = 'Prague' AND T1.account_id = ( SELECT account_id FROM disp WHERE client_id = ( SELECT client_id FROM client WHERE district_id = ( SELECT district_id FROM district WHERE A3 = 'Prague' ) ) )
SELECT CAST(SUM(IIF(T1.gender = 'M', 1, 0)) AS REAL) * 100 / COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'south Bohemia'
SELECT (( SELECT T1.balance FROM trans AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'approved' AND T2.date = '1993-07-05' GROUP BY T1.balance ORDER BY SUM(T1.balance) DESC LIMIT 1 ) - ( SELECT T1.balance FROM trans AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'approved' AND T2.date = '1993-03-22' GROUP BY T1.balance ORDER BY SUM(T1.balance) DESC LIMIT 1 )) * 100 / ( SELECT T1.balance FROM trans AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'approved' AND T2.date = '1998-12-27' GROUP BY T1.balance ORDER BY SUM(T1.balance) DESC LIMIT 1 )
SELECT CAST(SUM(CASE WHEN status = 'A' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(loan_id) FROM loan
SELECT CAST(SUM(CASE WHEN T1.status = 'C' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.amount) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < 100000
SELECT T1.account_id, T2.A3, T2.A10 FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T1.date) = '1993' AND T1.operation = 'P'
SELECT DISTINCT T1.account_id, T1.frequency FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T2.account_id = 'EAST BOHEMIA' AND T1.frequency = 1995
SELECT T1.account_id, T1.date FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Prachatice'
SELECT T2.A2, T2.A3 FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.loan_id = 4990
SELECT T1.account_id, T2.A2, T2.A3 FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.amount > 300000
SELECT T3.loan_id, T2.A3, T2.A11 FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.duration = 60
SELECT T3.A2, T3.A13, (T3.A13 - T3.A12) * 100 / T3.A12 FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.status = 'D'
SELECT CAST(SUM(CASE WHEN T1.district_id = 12 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Decin' AND STRFTIME('%Y', T1.`date`) = '1993'
SELECT DISTINCT account_id FROM disp WHERE issued = 'POPLATEK MESICNE'
SELECT T1.A2 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' GROUP BY T1.A2 ORDER BY COUNT(T1.A2) DESC LIMIT 9
SELECT T1.A2 FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.type = 'VYDAJ' AND T1.date LIKE '1996-01%' ORDER BY T1.amount DESC LIMIT 10
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'South Bohemia' AND T1.account_id NOT IN ( SELECT account_id FROM card WHERE type = 'Credit card' )
SELECT T2.A3 FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.status = 'C' GROUP BY T2.A3 ORDER BY COUNT(T1.account_id) DESC LIMIT 1
SELECT AVG(T1.amount) FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T2.gender = 'M'
SELECT A2, A3, A12 FROM district WHERE A13 = 1996
SELECT SUM(CASE WHEN T1.A16 = 1996 THEN 1 ELSE 0 END) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id
SELECT COUNT(T1.account_id) FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'VYBER KARTOU' AND T2.frequency = 'POPLATEK MESICNE' AND T1.balance < 0
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'POPLATEK MESICNE' AND T1.amount >= 250000 AND T1.duration = 12 AND T1.status = 'Approved' AND T1.date < '12/31/1997' AND T1.date >= '1/1/1995'
SELECT COUNT(T2.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'C' AND T2.district_id = 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'M' AND T2.A15 = ( SELECT MAX(A15) FROM district WHERE STRFTIME('%Y', `date`) = '1995' )
SELECT COUNT(T1.disp_id) FROM disp AS T1 INNER JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'gold'
SELECT SUM(CASE WHEN T1.A2 = 'Pisek' THEN 1 ELSE 0 END) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id
SELECT DISTINCT T1.district_id FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T2.date) = '1997' AND T2.amount > '10000'
SELECT DISTINCT account_id FROM order WHERE k_symbol = 'SIPO'
SELECT DISTINCT T1.account_id FROM disp AS T1 INNER JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'gold credit card'
SELECT AVG(amount) FROM trans WHERE STRFTIME('%Y', `date`) = '2021' AND operation = 'VYBER KARTOU'
SELECT T1.account_id FROM order AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T2.date) = '1998' AND T2.operation = 'VYBER KARTOU' AND T2.amount < ( SELECT AVG(amount) FROM trans WHERE STRFTIME('%Y', date) = '1998' AND operation = 'VYBER KARTOU' )
SELECT T1.client_id FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id INNER JOIN disp AS T3 ON T1.client_id = T3.client_id INNER JOIN card AS T4 ON T3.disp_id = T4.disp_id WHERE T1.gender = 'F'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'south Bohemia' AND T1.gender = 'F'
SELECT DISTINCT T1.account_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A2 = 'Tabor' AND T1.status = 'Eligible'
SELECT DISTINCT T1.A11, T1.A2 FROM district AS T1 INNER JOIN disp AS T2 ON T1.district_id = T2.district_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id INNER JOIN loan AS T4 ON T2.account_id = T4.account_id INNER JOIN account AS T5 ON T2.account_id = T5.account_id WHERE T5.account_id = 'OWNER' AND T1.A2 > 8000 AND T1.A2 < 9000
SELECT COUNT(T1.account_id) FROM trans AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T2.A3 = 'North Bohemia' AND T1.bank = 'AB'
SELECT T1.A2 FROM district AS T1 INNER JOIN disp AS T2 ON T1.district_id = T2.district_id WHERE T2.type = 'VYDAJ'
SELECT SUM(A15) / COUNT(*) FROM district WHERE A3 > 4000 AND STRFTIME('%Y', `date`) > '1995'
SELECT COUNT(T1.card_id) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'CLASSIC'
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Hl.m.' AND T1.gender = 'M'
SELECT CAST(SUM(CASE WHEN type = 'gold' AND issued < 1998 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(card_id) FROM card
SELECT T1.gender FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN account AS T3 ON T2.district_id = T3.district_id INNER JOIN loan AS T4 ON T3.account_id = T4.account_id ORDER BY T4.amount DESC LIMIT 1
SELECT SUM(CASE WHEN T1.district_id = 532 THEN 1 ELSE 0 END) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A15 = '1995'
SELECT T1.district_id FROM account AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT T1.operation FROM trans AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T1.account_id = 3356 AND T1.operation = 'VYBER'
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'POPLATEK TYDNE' AND T1.amount < 200000
SELECT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 13539
SELECT T2.A3 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 3541
SELECT T2.district_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'A' GROUP BY T2.district_id ORDER BY COUNT(T1.account_id) DESC LIMIT 1
SELECT T1.gender, T1.district_id FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN order AS T3 ON T3.account_id = T2.account_id WHERE T3.order_id = 32423
SELECT T1.trans_id FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT COUNT(*) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Jesenik'
SELECT DISTINCT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.type = 'junior credit card' AND STRFTIME('%Y', T3.issued) > '1996'
SELECT SUM(CASE WHEN T1.gender = 'F' THEN 1 ELSE 0 END) * 100 / COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN account AS T3 ON T2.district_id = T3.district_id WHERE T2.A11 > 10000
SELECT SUM(IIF(T3.gender = 'M', 1, 0)) AS num FROM loan AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T1.date BETWEEN '1996-01-01' AND '1997-12-31'
SELECT COUNT(trans_id) FROM trans WHERE STRFTIME('%Y', `date`) > '1995' AND operation = 'VYBER KARTOU'
{"sql": "SELECT SUM(T1.A3) - SUM(T1.A1) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A3 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North Bohemia' AND T1.A1 = 'East Bohemia' AND T1.A16 = 'East Bohemia' AND T1.A2 = 'North
SELECT COUNT(*) FROM disp WHERE account_id BETWEEN 1 AND 10
SELECT T1.frequency, T2.k_symbol FROM account AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T1.account_id = 3
SELECT T1.birth_date FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 130
SELECT COUNT(T1.account_id) FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'POPLATEK PO OBRATU'
SELECT T2.amount, T2.status FROM disp AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.client_id = 992
SELECT SUM(T1.balance), T2.gender FROM trans AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T1.trans_id = 851 AND T2.client_id = 4 GROUP BY T2.gender
SELECT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 9
SELECT SUM(T1.amount) FROM loan AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE '1998%' AND T1.account_id = 617
SELECT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.birth_date LIKE '1983%' AND T3.district_id = 107
SELECT T1.client_id FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'F' ORDER BY T2.amount DESC LIMIT 3
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN order AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'M' AND STRFTIME('%Y', T2.date) BETWEEN '1974' AND '1976' AND T2.amount > 4000
SELECT COUNT(T2.account_id) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = 'Beroun' AND STRFTIME('%Y', T2.date) > '1996'
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T1.gender = 'F' AND T3.type = 'J'
SELECT CAST(SUM(CASE WHEN T1.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN disp AS T3 ON T2.district_id = T3.district_id WHERE T2.A3 = 'Prague'
SELECT CAST(SUM(IIF(T3.gender = 'M', 1, 0)) AS REAL) * 100 / COUNT(T1.account_id) FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T1.account_id = T3.account_id WHERE T1.type = 'weekly'
SELECT COUNT(T2.client_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 'POPLATEK TYDNE'
SELECT T2.account_id FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.birth_date < '1997-01-01' AND T2.duration > 24
SELECT DISTINCT T1.account_id FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.gender = 'F' ORDER BY T2.birth_date LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'East Bohemia' AND STRFTIME('%Y', T1.birth_date) = '1920'
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'Weekly' AND T1.duration = '24 months'
SELECT AVG(amount) FROM loan WHERE status = 'C'
SELECT T1.account_id, T3.district_id FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.type = 'P' OR T1.type = 'L'
SELECT T2.account_id, T2.client_id FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'OWNER' AND T1.disp_id = 1
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY COUNT(bond_type) DESC LIMIT 1
SELECT COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.element = 'cl'
SELECT CAST(SUM(IIF(T2.element = 'o', 1, 0)) AS REAL) / COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-'
SELECT CAST(SUM(IIF(T2.bond_type = '-', 1, 0)) AS REAL) / COUNT(T1.atom_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.element = 'na'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T1.bond_type = '#'
SELECT CAST(SUM(IIF(T2.element = 'c', 1, 0)) AS REAL) * 100 / COUNT(T1.atom_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '='
{"sql": "SELECT COUNT(bond_id) FROM bond WHERE bond_type = '#'}
SELECT COUNT(atom_id) FROM atom WHERE element != 'br'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+' AND molecule_id BETWEEN 'TR000' AND 'TR99'
SELECT molecule_id FROM atom WHERE element = 'c'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR004_8_9'
SELECT element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = '='
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'h' GROUP BY T1.label ORDER BY COUNT(T1.label) DESC LIMIT 1
SELECT T1.bond_type FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T2.element = 'cl'
SELECT T2.atom_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = '-.'
SELECT T1.atom_id FROM connected AS T1 INNER JOIN molecule AS T2 ON T2.molecule_id = T1.atom_id WHERE T2.label = '-'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'non-carcinogenic' GROUP BY T1.element ORDER BY COUNT(T1.element) LIMIT 1
SELECT DISTINCT T1.bond_type FROM bond AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.bond_id WHERE T2.atom_id = 'TR004_8' AND T2.atom_id2 = 'TR004_20'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element != 'sn' AND T1.label != '+' OR T1.label != '-'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'i' AND T2.bond_type = '-'
SELECT T1.atom_id FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = '#'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = 'TR181'
SELECT CAST(SUM(IIF(T2.element = 'f', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT CAST(SUM(IIF(T2.label = '+', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '#'
SELECT element FROM atom WHERE molecule_id = 'TR000' ORDER BY element ASC LIMIT 3
SELECT T1.atom_id FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.bond_id = T1.bond_id WHERE T2.molecule_id = 'TR001' AND T3.bond_id = 'TR001_2_6'
{"sql": "SELECT SUM(IIF(label = '+", 1, 0)) - SUM(IIF(label = '-', 1, 0)) AS DIFFERENCE FROM molecule"}
SELECT T2.atom_id FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.bond_id = 'TR000_2_5'
SELECT bond_id FROM connected WHERE atom_id = 2
SELECT molecule_id FROM bond WHERE bond_type = 'double bond' LIMIT 5
SELECT SUM(CASE WHEN bond_type = '=' THEN 1 ELSE 0 END) / COUNT(bond_id) AS per FROM bond WHERE molecule_id = 'TR008'
SELECT CAST(SUM(IIF(label = '+', 1, 0)) AS REAL) * 100 / COUNT(molecule_id) FROM molecule
SELECT CAST(SUM(IIF(element = 'h', 1, 0)) AS REAL) * 100 / COUNT(atom_id) FROM atom WHERE molecule_id = 'TR206'
SELECT bond_type FROM bond WHERE molecule_id = 'TR000'
SELECT T1.element, T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR060'
SELECT T1.bond_type, IIF(SUM(IIF(T2.molecule_id = 'TR010', 1, 0)) > 0.5, 'carcinogenic', 'not carcinogenic') FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.bond_type
SELECT T2.molecule_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '- ' ORDER BY T2.molecule_id LIMIT 3
SELECT bond_id FROM bond WHERE molecule_id = 'TR006' ORDER BY bond_id LIMIT 2
SELECT COUNT(T1.atom_id) FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR009_12'
SELECT COUNT(T2.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T2.element = 'br'
SELECT T1.bond_type, T2.atom_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_id = 'TR001_6_9'
SELECT T2.molecule_id, T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_10'
SELECT COUNT(molecule_id) FROM bond WHERE bond_type = '#'
SELECT COUNT(bond_id) FROM connected WHERE atom_id = 'TR%_19'
SELECT element FROM atom WHERE molecule_id = 'TR004'
SELECT COUNT(molecule_id) FROM molecule WHERE label != '-'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND SUBSTR(T1.atom_id, 7, 2) BETWEEN '21' AND '25'
SELECT T1.bond_id FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'p' OR T2.element = 'n'
SELECT T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'double' GROUP BY T2.molecule_id ORDER BY COUNT(T2.label) DESC LIMIT 1
SELECT CAST(COUNT(T1.bond_id) AS REAL) / COUNT(DISTINCT T1.atom_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'i'
SELECT T1.bond_type, T1.bond_id FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 45
SELECT element FROM atom WHERE atom_id NOT IN ( SELECT atom_id FROM connected )
SELECT T1.atom_id FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.molecule_id = 'TR041' AND T2.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR144_8_19'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.bond_type = 'double bond' GROUP BY T1.molecule_id ORDER BY COUNT(T1.molecule_id) DESC LIMIT 1
SELECT T2.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' GROUP BY T2.molecule_id ORDER BY COUNT(T2.molecule_id) ASC LIMIT 1
SELECT atom_id FROM atom WHERE element = 'pb'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '#'
SELECT CAST(COUNT(CASE WHEN T2.atom_id = 1 THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id
SELECT CAST(SUM(IIF(T1.label = '+', 1, 0)) AS REAL) * 100 / COUNT(T2.bond_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '-'
SELECT SUM(CASE WHEN element = 'c' THEN 1 ELSE 0 END) AS sum1, SUM(CASE WHEN element = 'h' THEN 1 ELSE 0 END) AS sum2 FROM atom WHERE molecule_id = ( SELECT molecule_id FROM molecule WHERE label = 'carbon hydrogen' )
SELECT atom_id2 FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 's'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Sn'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '-'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T1.atom_id = T3.atom_id WHERE T2.bond_type = '#' AND (T1.element = 'p' OR T1.element = 'br')
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.bond_type = '-'
SELECT CAST(SUM(CASE WHEN T1.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '-'
SELECT label FROM molecule WHERE molecule_id IN ( 'TR000', 'TR001', 'TR002' )
SELECT molecule_id FROM molecule WHERE label != '-'
{"sql": "SELECT SUM(IIF(label = '+", 1, 0)) * 100000000 FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id BETWEEN 'TR000' AND 'TR030'"}
SELECT bond_type FROM bond WHERE molecule_id BETWEEN 'TR000' AND 'TR050'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_10_11'
SELECT COUNT(bond_id) FROM bond WHERE molecule_id IN ( SELECT molecule_id FROM atom WHERE element = 'i' )
SELECT MAX(T2.label) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'ca'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_1_8'
SELECT T1.molecule_id, T2.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.bond_type = '# AND T1.molecule_id = 2
SELECT CAST(SUM(IIF(T1.element = 'cl', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+'
SELECT element FROM atom WHERE molecule_id = 'TR001'
SELECT molecule_id FROM bond WHERE bond_type = 'double bond'
SELECT T2.atom_id, T2.atom_id2 FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.bond_id WHERE T2.bond_id = 'TR000_1_2'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_10_11'
SELECT T1.bond_id, T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '#'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND SUBSTR(T1.atom_id, 7, 1) = '4'
SELECT SUM(IIF(T2.element = 'h', 1, 0)) / COUNT(T2.element) AS per FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR006'
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'ca'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'c'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id WHERE T3.bond_id = 'TR001_10_11'
SELECT CAST(SUM(CASE WHEN bond_type = '#1' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(molecule_id) FROM bond
SELECT SUM(IIF(T2.`bond_type` = ' = ', 1, 0)) / COUNT(T2.bond_id) AS per FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR047'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_1'
SELECT label FROM molecule WHERE molecule_id = 'TR151'
SELECT element FROM atom WHERE molecule_id = 'TR151'
SELECT COUNT(molecule_id) FROM molecule WHERE label LIKE '+'
SELECT atom_id FROM atom WHERE element = 'c' AND molecule_id BETWEEN 'TR010' AND 'TR050'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+'
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label LIKE 'carcinogenic' AND T1.bond_type = 'double-bond'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'h' AND T2.label = '+'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_id = 'TR000_1_2' AND T2.atom_id = 'TR000_1'
SELECT T2.atom_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN molecule AS T3 ON T3.molecule_id = T1.molecule_id WHERE T3.label = 'non-carcinogenic' AND T1.element = 'c'
SELECT CAST(SUM(IIF(T2.label = '+', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'h'
SELECT label FROM molecule WHERE molecule_id = 'TR124'
SELECT atom_id FROM atom WHERE molecule_id = 'TR186'
SELECT bond_type FROM bond WHERE molecule_id = 'TR007_4_19'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_2_4'
SELECT COUNT(T1.molecule_id), T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.bond_type = 'double bond'
{"sql": "SELECT T1.molecule_id, T2.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T3.molecule_id = T2.molecule_id WHERE T2.label LIKE '+' OR T2.label LIKE 'I' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2.label LIKE 'Te' OR T2.label LIKE 'Sn' OR T2
SELECT T1.atom_id, T2.atom_id2 FROM connected AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id IS NOT NULL AND T2.atom_id IS NOT NULL AND T1.atom_id2 IS NOT NULL AND T2.atom_id IS NOT NULL AND T1.atom_id2 = T2.atom_id
SELECT T2.molecule_id, T2.element FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR000_2_3'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id INNER JOIN atom AS T4 ON T3.atom_id = T4.atom_id WHERE T1.element = 'cl'
SELECT T1.atom_id, COUNT(T2.bond_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 'TR346' GROUP BY T1.atom_id
SELECT COUNT(T1.molecule_id), COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'double bond' AND T2.label = '+'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.atom_id INNER JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T1.element = 's' AND T1.bond_type != 's'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_2_4' AND T1.label = '+'
SELECT COUNT(atom_id) FROM atom WHERE molecule_id = 'TR001'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '-'
SELECT T2.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.element = 'cl'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.element = 'c'
SELECT CAST(SUM(IIF(T1.label = '++', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'cl'
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_3_4'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = 'TR000_1' AND T2.atom_id2 = 'TR000_2'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 'TR000_2' OR T2.atom_id = 'TR000_4'
SELECT element FROM atom WHERE atom_id = 'TR000_1'
SELECT label FROM molecule WHERE molecule_id = 'TR000'
SELECT CAST(SUM(IIF(bond_type = '-','1', 0)) AS REAL) * 100 / COUNT(bond_id) FROM bond
SELECT COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.element = 'n'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = ' = ' AND T1.element = 's'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' GROUP BY T1.molecule_id HAVING COUNT(T1.atom_id) > 5
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T2.bond_type = '=' AND T3.label = 'TR024'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T2.molecule_id = T1.molecule_id WHERE T2.label = '+' GROUP BY T1.atom_id ORDER BY COUNT(T1.atom_id) DESC LIMIT 1
SELECT CAST(SUM(IIF(T2.label = '+', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.bond_type = '#' AND T1.element = 'H'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+'
SELECT COUNT(molecule_id) FROM bond WHERE molecule_id BETWEEN 'TR004' AND 'TR010' AND bond_type = '-'
SELECT COUNT(atom_id) FROM atom WHERE molecule_id = 'TR008' AND element = 'c'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.atom_id = 'TR004_7'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T3.atom_id = T2.atom_id WHERE T1.bond_type = 'double bond' AND T2.element = 'o'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '#' AND T2.label != '-'
SELECT T1.element, T2.bond_type FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = 'TR002'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double bond' AND T1.element = 'c' AND T1.atom_id = 'TR012'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.element = 'o'
SELECT name FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT T1.asciiName FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.code WHERE T1.borderColor IS NOT NULL AND T1.cardKingdomFoilId IS NULL
SELECT name FROM cards ORDER BY faceConvertedManaCost DESC LIMIT 1
SELECT name FROM cards WHERE frameVersion = 2015 AND edhrecRank < 100
SELECT T1.asciiName FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'gladiator' AND T2.status = 'Banned' AND T1.rarity = 'mythic'
SELECT DISTINCT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = 'Cards' AND T2.side IS NULL AND T1.format = 'vintage'
SELECT T1.id, T1.artist FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'commander' AND T2.status = 'Legal' AND T1.power = '*' OR T1.power IS NULL
SELECT T1.id, T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist LIKE 'Stephen Daniele'
SELECT T1.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Sublime Epiphany' AND T1.number = '74s'
SELECT T1.artist, T1.isPromo, T1.isPromo FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T1.uuid ORDER BY COUNT(T2.text) DESC LIMIT 1
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'annul' AND T1.number = 29
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'Japanese' AND T1.isAlternative = 'YES'
SELECT CAST(SUM(CASE WHEN T1.language = 'Chinese Simplified' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.name) FROM foreign_data AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN sets AS T3 ON T2.setCode = T3.code
SELECT T2.setCode, T2.totalSetSize FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Italian'
SELECT COUNT(types) FROM cards WHERE artist LIKE 'Aaron Boyd'
SELECT T1.keywords FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Angel of Mercy'
SELECT COUNT(id) FROM cards WHERE power = '$*'
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT T2.borderColor FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Ancestor''s Chosen'
SELECT originalType FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.name = 'Angel of Mercy'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Restricted' AND T1.isTextless = 0
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Condemn'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.isStarter = 1 AND T2.status = 'restricted'
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Cloudchaser Eagle'
SELECT DISTINCT T2.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Benalish Knight'
SELECT T1.format FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid INNER JOIN foreign_data AS T3 ON T2.uuid = T3.uuid WHERE T2.name = 'Benalish Knight'
SELECT T2.asciiName FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = 'Phyrexian'
SELECT CAST(SUM(CASE WHEN borderColor = 'borderless' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT COUNT(*) FROM cards WHERE isReprint = 1 AND flavorText = 'Illustrated in German'
SELECT COUNT(*) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN foreign_data AS T3 ON T3.uuid = T2.setCode WHERE T3.language = 'Russian' AND T1.borderColor = 'borderless'
SELECT CAST(SUM(IIF(T2.language = 'French', 1, 0)) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.isStorySpotlight = 1
SELECT COUNT(id) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist LIKE '%Aaron Boyd%'
SELECT COUNT(*) FROM cards WHERE availability = 'mtgo' AND borderColor = 'black'
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords = 'flying'
SELECT COUNT(id) FROM cards WHERE originalType = 'Summon - Angel' AND subtypes != 'Angel'
SELECT id FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT id FROM cards WHERE duelDeck = a
SELECT edhrecRank FROM cards WHERE frameVersion = '2015'
SELECT T2.asciiName FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = 'Chinese Simplified'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN foreign_data AS T3 ON T2.uuid = T3.uuid WHERE T3.language = 'Japanese' AND T1.availability = 'paper'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' AND T1.borderColor = 'white'
SELECT T2.uuid, T1.language FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'legacy'
SELECT T1.text FROM rulings AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Beacon of Immortality'
SELECT COUNT(T1.id), T2.status FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = 'future' AND T2.status = 'legal'
SELECT T2.cardColor FROM cards AS T1 INNER JOIN cards AS T2 ON T1.id = T2.id WHERE T1.setCode = 'OGW'
SELECT T2.translation, T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.id WHERE T1.setCode = '10E' AND T1.convertedManaCost = 5
SELECT T1.name, T2.date FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = 'Creature - Elf'
SELECT T1.colorIndicator, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.id BETWEEN 1 AND 20
SELECT T1.name FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.originalType = 'Artifact' AND T2.colors = 'B'
SELECT T2.date FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'uncommon' ORDER BY T2.date ASC LIMIT 3
SELECT COUNT(*) FROM cards WHERE cardKingdomId = 1000000000 AND cardKingdomFoilId = 1000000000
SELECT COUNT(id) FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL AND borderColor = 'white'
SELECT COUNT(id) FROM cards WHERE availability = 'mtgo' AND artist = 'UDON' AND hand = -1
SELECT COUNT(id) FROM cards WHERE availability = 'paper' AND hasContentWarning = 1 AND frameVersion = '1993'
SELECT manaCost FROM cards WHERE availability = 'mtgo,paper' AND frameVersion = 2003 AND layout = 'normal' AND borderColor = 'black'
SELECT SUM(T1.manaCost) FROM cards AS T1 INNER JOIN ( SELECT artist FROM cards GROUP BY artist ) AS T2 ON T1.artist = T2.artist WHERE T2.artist = 'Rob Alexander'
SELECT DISTINCT type FROM cards WHERE availability = 'arena'
SELECT DISTINCT setCode FROM set_translations WHERE language = 'Spanish'
SELECT CAST(SUM(CASE WHEN frameEffects = 'legendary' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards WHERE isOnlineOnly = 1
SELECT CAST(SUM(CASE WHEN isTextless = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM cards WHERE isStorySpotlight = 1
SELECT CAST(SUM(CASE WHEN T2.language = 'Spanish' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid
SELECT T2.name FROM set_translations AS T1 INNER JOIN foreign_data AS T2 ON T1.language = T2.name WHERE T1.setCode = ( SELECT code FROM sets WHERE baseSetSize = 309 )
SELECT COUNT(T1.code) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Commander' AND T2.language = 'Portuguese (Brasil)'
SELECT T1.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.types = 'Creature' AND T2.status = 'legal'
SELECT DISTINCT T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T2.language = 'german' AND T1.supertypes IS NOT NULL AND T1.subtypes IS NOT NULL
SELECT COUNT(T1.power) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text LIKE '%triggered ability%' OR T1.power IS NULL OR T1.power = '*'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid INNER JOIN rulings AS T3 ON T1.uuid = T3.uuid WHERE T2.format = 'premodern' AND T3.text = 'This is a triggered mana ability.' AND T1.side IS NULL
SELECT T2.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'paper' AND T1.artist = 'Erica Yang'
SELECT T1.artist FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.text = 'Das perfekte Gegenmittel zu einer dichten Formation'
SELECT T1.name FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = 'Creature' AND T2.borderColor = 'black' AND T2.artist = 'Matthew D. Wilson' AND T1.language = 'French'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.date = '2007-02-01' AND T1.rarity = 'Rare'
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Ravnica' AND T1.baseSetSize = 180
SELECT CAST(SUM(CASE WHEN T2.hasContentWarning = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'commander' AND T1.status = 'legal'
SELECT CAST(SUM(CASE WHEN T2.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.power) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T1.power IS NULL OR T1.power = '*'
SELECT CAST(SUM(CASE WHEN T2.type = 'expansion' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.language) FROM foreign_data AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Japanese'
{"sql": "SELECT DISTINCT T2.printings FROM cards AS T1 INNER JOIN ( SELECT T2.printings FROM cards AS T1 INNER JOIN ( SELECT T3.printings FROM cards AS T2 INNER JOIN ( SELECT T4.printings FROM cards AS T3 INNER JOIN ( SELECT T5.printings FROM cards AS T4 INNER JOIN ( SELECT T6.printings FROM cards AS T5 INNER JOIN ( SELECT T7.printings FROM cards AS T6 INNER JOIN ( SELECT T8.printings FROM cards AS T7 INNER JOIN ( SELECT T9.printings FROM cards AS T8 INNER JOIN ( SELECT T10.printings FROM cards AS T9 INNER JOIN ( SELECT T11.printings FROM cards AS T10 INNER JOIN ( SELECT T12.printings FROM cards AS T11 INNER JOIN ( SELECT T13.printings FROM cards AS T12 INNER JOIN ( SELECT T14.printings FROM cards AS T13 INNER JOIN ( SELECT T15.printings FROM cards AS T14 INNER JOIN ( SELECT T16.printings FROM cards AS T15 INNER JOIN ( SELECT T17.printings FROM cards AS T16 INNER JOIN ( SELECT T18.printings FROM cards AS T17 INNER JOIN ( SELECT T19.printings FROM cards AS T18 INNER JOIN ( SELECT T20.printings FROM cards AS T19 INNER JOIN ( SELECT T21.printings FROM cards AS T20 INNER JOIN ( SELECT T22.printings FROM cards AS T21 INNER JOIN ( SELECT T23.printings FROM cards AS T22 INNER JOIN ( SELECT T24.printings FROM cards AS T23 INNER JOIN ( SELECT T25.printings FROM cards AS T24 INNER JOIN ( SELECT T26.printings FROM cards AS T25 INNER JOIN ( SELECT T27.printings FROM cards AS T26 INNER JOIN ( SELECT T28.printings FROM cards AS T27 INNER JOIN ( SELECT T29.printings FROM cards AS T28 INNER JOIN ( SELECT T30.printings FROM cards AS T29 INNER JOIN ( SELECT T31.printings FROM cards AS T30 INNER JOIN ( SELECT T32.printings FROM cards AS T31 INNER JOIN ( SELECT T33.printings FROM cards AS T32 INNER JOIN ( SELECT T34.printings FROM cards AS T33 INNER JOIN ( SELECT T35.printings FROM cards AS T34 INNER JOIN ( SELECT T36.printings FROM cards AS T35 INNER JOIN ( SELECT T37.printings FROM cards AS T36 INNER JOIN ( SELECT T38.printings FROM cards AS T37 INNER JOIN ( SELECT T39.printings FROM cards AS T38 INNER JOIN ( SELECT T40.printings FROM cards AS T39 INNER JOIN ( SELECT T41.printings FROM cards AS T40 INNER JOIN ( SELECT T42.printings FROM cards AS T41 INNER JOIN ( SELECT T43.printings FROM cards AS T42 INNER JOIN ( SELECT T44.printings FROM cards AS T43 INNER JOIN ( SELECT T45.printings FROM cards AS T44 INNER JOIN ( SELECT T46.printings FROM cards AS T45 INNER JOIN ( SELECT T47.printings FROM cards AS T46 INNER JOIN ( SELECT T48.printings FROM cards AS T47 INNER JOIN ( SELECT T49.printings FROM cards AS T48 INNER JOIN ( SELECT T50.printings FROM cards AS T49 INNER JOIN ( SELECT T51.printings FROM cards AS T50 INNER JOIN ( SELECT T52.printings FROM cards AS T51 INNER JOIN ( SELECT T53.printings FROM cards AS T52 INNER JOIN ( SELECT T54.printings FROM cards AS T53 INNER JOIN ( SELECT T55.printings FROM cards AS T54 INNER JOIN ( SELECT T56.printings FROM cards AS T55 INNER JOIN ( SELECT T57.printings FROM cards AS T56 INNER JOIN ( SELECT T58.printings FROM cards AS T57 INNER JOIN ( SELECT T59.printings FROM cards AS T58 INNER JOIN ( SELECT T60.printings FROM cards AS T59 INNER JOIN ( SELECT T61.printings FROM cards AS T60 INNER JOIN ( SELECT T62.printings FROM cards AS T61 INNER JOIN ( SELECT T63.printings FROM cards AS T62 INNER JOIN ( SELECT T64.printings FROM cards AS T63 INNER JOIN ( SELECT T65.printings FROM cards AS T64 INNER JOIN ( SELECT T66.printings FROM cards AS T65 INNER JOIN ( SELECT T67.printings FROM cards AS T66 INNER JOIN ( SELECT T68.printings FROM cards AS T67 INNER JOIN ( SELECT T69.printings FROM cards AS T68 INNER JOIN ( SELECT T7
SELECT COUNT(id) FROM cards WHERE borderColor = 'borderless' AND edhrecRank > 12000
SELECT COUNT(id) FROM cards WHERE isOversized = 1 AND isReprint = 1 AND isPromo = 1
SELECT asciiName FROM cards WHERE promoTypes = 'arenaleague' AND power IS NULL ORDER BY asciiName ASC LIMIT 3
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.multiverseId = 149934
SELECT cardKingdomFoilId FROM cards WHERE cardKingdomId IS NOT NULL AND cardKingdomFoilId IS NOT NULL ORDER BY cardKingdomFoilId LIMIT 3
SELECT CAST(SUM(CASE WHEN layout = 'Normal' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM cards WHERE isTextless = 1
SELECT side FROM cards WHERE subtypes = 'Angel and Wizard' AND (CASE WHEN hasAlternativeDeckLimit = 0 THEN side ELSE NULL END IS NULL OR hasAlternativeDeckLimit = 0)
SELECT name FROM sets WHERE mtgoCode IS NULL OR mtgoCode = '' ORDER BY name ASC LIMIT 3
SELECT T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.setCode = 'ARC' AND T1.mcmName = 'Archenemy'
SELECT T2.translation FROM set_translations AS T1 INNER JOIN foreign_data AS T2 ON T1.setCode = T2.setCode WHERE T1.id = 5
SELECT T2.language, T2.type FROM set_translations AS T1 INNER JOIN foreign_data AS T2 ON T1.setCode = T2.setCode WHERE T1.id = 206
SELECT T3.id, T2.flavorText FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN sets AS T3 ON T2.setCode = T3.code WHERE T3.block = 'Shadowmoor' AND T2.language = 'Italian'
SELECT T2.setCode FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Japanese' AND T2.isFoilOnly = 1 AND T2.isForeignOnly = 1
SELECT T1.code FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Russian' ORDER BY T1.baseSetSize DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.isOnlineOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.isOnlineOnly) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Chinese Simplified'
SELECT COUNT(T1.setCode) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Japanese' AND T1.mtgoCode IS NULL OR T1.mtgoCode = ''
SELECT id FROM cards WHERE borderColor = 'black'
SELECT id FROM cards WHERE frameEffects = 'extendedart'
SELECT name FROM cards WHERE borderColor = 'black' AND isFullArt = 1
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 174
SELECT name FROM sets WHERE code = 'ALL'
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'A Pedra Fellwar'
SELECT T1.setCode FROM sets AS T1 INNER JOIN rulings AS T2 ON T2.uuid = T1.releaseDate WHERE T2.date = '07/13/2007'
SELECT T1.baseSetSize, T1.code FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Mirage' OR T1.block = 'Masques'
SELECT code FROM sets WHERE type = 'expansion'
SELECT T1.type, T2.flavorText FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'boros'
SELECT T1.language, T1.flavorText, T2.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.colorIdentity = 'colorpie'
SELECT CAST(SUM(CASE WHEN T2.convertedManaCost = 10 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.convertedManaCost) FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Abyssal Horror'
SELECT code FROM sets WHERE type = 'expansion commander'
SELECT T1.type, T2.flavorText FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'abzan'
SELECT T1.language, T1.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'azorius'
SELECT COUNT(id) FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL AND artist LIKE 'Aaron Miller'
SELECT COUNT(id) FROM cards WHERE availability LIKE '%paper%' AND hand = '3'
SELECT name FROM cards WHERE isTextless = 0
SELECT T1.convertedManaCost FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Ancestor''s Chosen'
SELECT COUNT(power) FROM cards WHERE borderColor = 'white' AND power = '*' OR power IS NULL
SELECT T1.name FROM cards AS T1 INNER JOIN ( SELECT side FROM cards WHERE side IS NOT NULL AND isPromo = 1 ) AS T2 ON T1.side IS NOT NULL GROUP BY T1.name
SELECT T1.subtypes, T1.supertypes FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Molimo, Maro-Sorcerer'
SELECT purchaseUrls FROM cards WHERE promoTypes = 'bundle'
SELECT COUNT(*) FROM cards WHERE availability LIKE '%arena,mtgo%' AND borderColor = 'black'
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T2.name = 'Serra Angel' OR T2.name = 'Shrine Keeper' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE flavorName = 'Battra, Dark Destroyer'
SELECT name FROM cards WHERE frameVersion = '2003' ORDER BY convertedManaCost DESC LIMIT 3
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'Italian' AND T1.name LIKE 'Ancestor%sChosen'
SELECT COUNT(T2.language) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.name = 'Angel of Mercy'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T2.translation = 'Hauptset Zehnte Edition'
SELECT T1.language FROM foreign_data AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.name = 'Ancestor''s Chosen' AND T1.language = 'Korean'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T2.translation = 'Hauptset Zehnte Edition' AND T1.artist = 'Adam Rex'
SELECT T1.baseSetSize FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Hauptset Zehnte Edition'
SELECT T2.translation FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.name = 'Eighth Edition' AND T2.language = 'Chinese Simplified'
SELECT DISTINCT CASE WHEN T1.mtgoCode IS NOT NULL THEN 'YES' ELSE 'NO' END AS appear FROM cards AS T1 INNER JOIN sets AS T2 ON T1.mtgoCode = T2.mtgoCode WHERE T2.name = 'Angel of Mercy'
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = 'Ancestor''s Chosen'
SELECT T1.type FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.code WHERE T2.translation = 'Hauptset Zehnte Edition'
SELECT COUNT(T1.code) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Ice Age' AND T2.language = 'Italian' AND T2.translation IS NOT NULL
SELECT T1.isForeignOnly FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = 'Adarkar Valkyrie'
SELECT COUNT(T2.code) FROM foreign_data AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.language = 'Italian' AND T2.translation IS NOT NULL AND T2.setCode IN ( SELECT code FROM sets WHERE baseSetSize < 100 )
SELECT COUNT(T2.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.name = T2.code WHERE T2.name = 'Coldsnap' AND T1.borderColor = 'black'
SELECT T1.asciiName FROM cards AS T1 INNER JOIN sets AS T2 ON T1.name = T2.code WHERE T2.name = 'Coldsnap' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.asciiName FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN sets AS T3 ON T2.setCode = T3.code WHERE T1.name = 'Coldsnap' AND T3.code = 'setColdsnap' AND T1.artist IN ('Jeremy Jarvis', 'Aaron Miller', 'Chippy')
SELECT T1.number FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = 'Coldsnap' AND T1.number = 4
SELECT COUNT(T1.name) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.code WHERE T1.power = '*' OR T1.power IS NULL AND T2.name = 'Coldsnap' AND T1.convertedManaCost > 5
SELECT flavorText FROM foreign_data WHERE name = 'Ancestor''s Chosen' AND language = 'Italian'
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Ancestor''s Chosen' AND T2.flavorText IS NOT NULL
SELECT T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name LIKE 'Ancestor%s Chosen' AND T2.language = 'German'
SELECT T1.text FROM rulings AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid INNER JOIN set_translations AS T3 ON T2.setCode = T3.setCode WHERE T3.setCode = 'Coldsnap' AND T2.language = 'Italian'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'Italian' AND T2.setCode = 'Coldsnap' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.date FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Reminisce'
SELECT CAST(SUM(CASE WHEN T1.convertedManaCost = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = 'Coldsnap'
SELECT CAST(SUM(CASE WHEN T1.name = 'Coldsnap' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.name) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.code = T2.code WHERE T1.cardKingdomFoilId IS NOT NULL AND T1.cardKingdomId IS NOT NULL
SELECT code FROM sets WHERE releaseDate = '2017-07-14'
SELECT keyruneCode FROM sets WHERE code = 'PKHC'
SELECT T1.mcmId FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.mcmId WHERE T2.code = 'SS2'
SELECT T1.mcmName FROM sets AS T1 INNER JOIN cards AS T2 ON T1.mcmId = T2.mcmId WHERE T1.releaseDate = '2017-06-09'
SELECT T1.type FROM cards AS T1 INNER JOIN sets AS T2 ON T1.uuid = T2.code WHERE T2.name LIKE '%From the Vault: Lore%'
SELECT parentCode FROM sets WHERE name = 'Commander 2014 Oversized'
SELECT DISTINCT T1.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Jim Pavelec' AND T1.hasContentWarning = 1
SELECT T2.releaseDate FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.name = 'Evacuation'
SELECT T1.baseSetSize FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Rinascita di Alara'
SELECT T1.type FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.code WHERE T2.translation = 'Huitième édition'
SELECT T2.translation FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T2.language = 'French' AND T2.translation = 'Tendo Ice Bridge'
SELECT COUNT(T2.translation) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Tenth Edition'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'Japanese' AND T1.name = 'Fellwar Stone'
SELECT T2.faceName FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Journey into Nyx Hero''s Path' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Ola de frío'
SELECT T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Samite Pilgrim'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.name = T2.code WHERE T1.setCode = 'World Championship Decks 2004' AND T1.convertedManaCost = 3
SELECT T1.translation FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN foreign_data AS T3 ON T1.uuid = T3.uuid WHERE T3.language = 'Chinese Simplified' AND T2.name = 'Mirrodin'
SELECT CAST(SUM(CASE WHEN T2.isNonFoilOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Japanese'
SELECT CAST(SUM(CASE WHEN T2.isOnlineOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Portuguese (Brazil)'
SELECT DISTINCT T1.printings FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.isTextless = 1 AND T1.artist = 'Aleksi Briclot'
SELECT id FROM sets ORDER BY baseSetSize DESC LIMIT 1
SELECT T1.asciiName FROM cards AS T1 INNER JOIN ( SELECT T2.asciiName FROM cards AS T1 INNER JOIN set_translations AS T2 ON T2.code = T1.setCode WHERE T1.side IS NULL ) AS T3 ON T1.asciiName = T3.asciiName ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T2.frameEffects FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId IS NOT NULL AND T1.cardKingdomId IS NOT NULL GROUP BY T2.frameEffects ORDER BY COUNT(T1.power) DESC LIMIT 1
SELECT COUNT(id) FROM cards WHERE power IS NULL OR power = '*' AND duelDeck = 'a' AND hasFoil = 0
SELECT T2.code FROM cards AS T1 INNER JOIN sets AS T2 ON T1.uuid = T2.mtgoCode WHERE T1.type = 'commander' ORDER BY T2.totalSetSize DESC LIMIT 1
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN legalities AS T3 ON T2.uuid = T3.uuid WHERE T3.format = 'duel' ORDER BY T1.manaCost DESC LIMIT 10
SELECT T1.originalReleaseDate, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'mythic' AND T2.status = 'legal' ORDER BY T1.originalReleaseDate LIMIT 1
SELECT COUNT(T1.name) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T2.language = 'French' AND T1.artist = 'Volkan Baǵa'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'Rare' AND T1.types = 'Enchantment' AND T1.name = 'Abundance' AND T2.status = 'Legal'
SELECT T2.format, T1.name FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' GROUP BY T2.format ORDER BY COUNT(T2.status) DESC LIMIT 1
SELECT T1.language FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN foreign_data AS T3 ON T1.uuid = T3.uuid WHERE T2.name = 'Battlebond'
SELECT T1.asciiName, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.asciiName = ( SELECT T1.asciiName FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY T2.format ASC LIMIT 1 )
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameVersion = '1997' AND T2.artist = 'D. Alexander Gregory' AND T2.hasContentWarning = 1 AND T2.format = 'legacy'
SELECT T2.name, T1.format FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.edhrecRank = 1 AND T1.status = 'Banned'
SELECT CAST(SUM(IIF(T2.releaseDate BETWEEN '1/1/2012' AND '12/31/2015', 1, 0)) AS REAL) / COUNT(T1.id) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN foreign_data AS T3 ON T1.language = T3.language WHERE T3.language = 'English'
SELECT T1.artist FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.borderColor = 'black' AND T1.availability = 'arena'
SELECT uuid FROM legalities WHERE format = 'oldschool'
SELECT COUNT(id) FROM cards WHERE availability = 'paper' AND artist = 'Matthew D. Wilson'
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Kev Walker' ORDER BY T1.date DESC
SELECT DISTINCT T1.name, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid INNER JOIN sets AS T3 ON T3.code = T2.setCode WHERE T3.name = 'Hour of Devastation' AND T2.status = 'Legal'
SELECT T1.name FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Korean'
SELECT T1.frameVersion, T3.status FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid INNER JOIN rulings AS T3 ON T2.uuid = T3.uuid WHERE T1.artist = 'Allen Williams'
SELECT DisplayName FROM users WHERE DisplayName = 'Harlan' OR DisplayName = 'Jarrod Dixon' ORDER BY Reputation DESC LIMIT 1
SELECT T2.UserDisplayName FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE STRFTIME('%Y', T2.CreationDate) = '2011'
SELECT COUNT(WebsiteUrl) FROM users WHERE LastAccessDate > '2014-09-01'
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.UpVotes > 100 AND T1.DownVotes > 1
SELECT COUNT(OwnerId) FROM users WHERE Views > 10 AND strftime('%Y', CreationDate) > '2013'
SELECT COUNT(T2.OwnerUserId) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'csgillespie'
SELECT T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie'
SELECT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Eliciting priors from experts'
SELECT T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie' ORDER BY T1.ViewCount DESC LIMIT 1
SELECT OwnerDisplayName FROM posts WHERE FavoriteCount = ( SELECT MAX(FavoriteCount) FROM posts )
SELECT SUM(T2.CommentCount) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'csgillespie'
SELECT T1.AnswerCount FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie' ORDER BY T1.AnswerCount DESC LIMIT 1
SELECT T2.UserDisplayName FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Examples for teaching: Correlation does not mean causation'
SELECT COUNT(T1.OwnerUserId) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie' AND T1.ParentId IS NULL
SELECT DISTINCT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.ClosedDate IS NOT NULL
SELECT COUNT(T2.OwnerUserId) FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.Score >= 20 AND T2.OwnerUserId > 65
SELECT DISTINCT OwnerUserId FROM posts WHERE Title = 'Eliciting priors from experts'
SELECT T1.Body FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T2.TagName = 'bayesian'
SELECT T2.Body FROM tags AS T1 INNER JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id GROUP BY T2.Id ORDER BY COUNT(T2.Tags) DESC LIMIT 1
SELECT COUNT(T1.Id) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'csgillespie'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'csgillespie'
SELECT COUNT(T1.Name) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'csgillespie' AND T1.Date LIKE '2011%'
SELECT T1.DisplayName FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T2.UserId DESC LIMIT 1
SELECT AVG(T1.Score) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie'
SELECT CAST(COUNT(T2.Id) AS REAL) / COUNT(DISTINCT T1.DisplayName) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Views > 200
SELECT CAST(SUM(CASE WHEN T2.Age > 65 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Score > 5
SELECT SUM(T1.BountyAmount) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.CreationDate = '2010-07-19' AND T2.Id = 58
SELECT T1.CreationDate FROM votes AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id GROUP BY T1.CreationDate ORDER BY COUNT(T1.PostId) DESC LIMIT 1
SELECT COUNT(Id) FROM badges WHERE Name = 'Revival'
SELECT T1.Title FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId ORDER BY T2.Score DESC LIMIT 1
SELECT COUNT(T2.Text) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ViewCount = 1910
SELECT T1.FavoriteCount FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.UserId = 3025 AND T2.CreationDate = '2014-04-23 20:29:39'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ParentId = 107829 AND T2.Text IS NOT NULL AND T2.CommentCount = 1
SELECT CASE WHEN T2.ClosedDate IS NULL THEN 'Well-finished' ELSE 'Not well-finished' END FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 23853 AND T1.Text = 'This is a well-finished comment.'
SELECT T2.Reputation FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Id = 65041
SELECT COUNT(T2.OwnerUserId) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'Tiago Pasqualini'
SELECT T2.UserDisplayName FROM votes AS T1 INNER JOIN postHistory AS T2 ON T1.UserId = T2.UserId WHERE T1.Id = 6347
SELECT SUM(T2.BountyAmount) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.Title LIKE '%data visualization%'
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'DatEpicCoderGuyWhoPrograms'
SELECT CAST(COUNT(T1.Id) AS REAL) / COUNT(DISTINCT T3.Id) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T1.OwnerUserId = 24
SELECT ViewCount FROM posts WHERE Title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17
SELECT DisplayName FROM users WHERE WebsiteUrl = 'http://stackoverflow.com'
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'SilentGhost'
SELECT T2.DisplayName FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Text = 'Thank you user93!'
SELECT Text FROM comments WHERE UserId = ( SELECT Id FROM users WHERE DisplayName = 'A Lion' )
SELECT T1.DisplayName, T2.Reputation FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Understanding what Dassault iSight is doing?'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'How does gentle boosting differ from AdaBoost?'
SELECT T2.DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Necromancer' LIMIT 10
SELECT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Open source tools for visualizing multi-dimensional data'
SELECT T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T2.DisplayName = 'Vebjorn Ljosa'
SELECT SUM(T2.Score) , T1.WebsiteUrl FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Yevgeny' AND T2.LastEditorUserId = T1.Id
SELECT T1.Text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Why square the difference instead of taking the absolute value in standard deviation?'
SELECT SUM(T2.BountyAmount) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.Title LIKE '%about data%'
SELECT T2.OwnerUserId FROM posts AS T1 INNER JOIN votes AS T2 ON T1.OwnerUserId = T2.UserId WHERE T2.BountyAmount = 50 AND T1.Title LIKE '%variance%'
SELECT T1.ViewCount, T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId INNER JOIN tags AS T3 ON T1.Id = T3.ExcerptPostId WHERE T3.TagName = 'Humor' GROUP BY T1.ViewCount, T2.Text
SELECT COUNT(Text) FROM comments WHERE UserId = 13
SELECT UserId FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY ViewCount LIMIT 1
SELECT COUNT(UserId) FROM badges WHERE Date LIKE '2011%' AND Name = 'Supporter'
SELECT COUNT(UserId) FROM badges WHERE Name > 5
SELECT COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = 'New York' AND T1.Name = 'Supporter' OR T1.Name = 'Teacher'
SELECT T2.UserId, T2.Reputation FROM postHistory AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.PostId = 1
SELECT T1.UserId FROM postHistory AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Views >= 1000 GROUP BY T1.UserId HAVING COUNT(T1.Id) = 1
SELECT T2.UserId, T2.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T2.UserId ORDER BY COUNT(T2.UserId) DESC LIMIT 1
SELECT COUNT(T1.UserId) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = 'India' AND T2.Name = 'Teacher'
SELECT CAST(SUM(IIF(T2.Year(Date) = 2010, 1, 0)) AS REAL) * 100 / SUM(IIF(T2.Year(Date) = 2011, 1, 0)) FROM badges AS T1 INNER JOIN ( SELECT T1.UserId, T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Student' AND STRFTIME('%Y', T1.Date) = '2010' ) AS T3 ON T1.UserId = T3.UserId
SELECT T1.PostHistoryTypeId, COUNT(DISTINCT T2.UserId) FROM postHistory AS T1 INNER JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.PostId = 3720 GROUP BY T1.PostHistoryTypeId
SELECT T1.Title, T1.ViewCount FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE T2.RelatedPostId = 61217
SELECT T1.Score, T2.LinkTypeId FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE T2.PostId = 395
SELECT T1.PostId, T2.UserId FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Score > 60
SELECT SUM(T1.FavoriteCount) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T2.UserId = 686 AND strftime('%Y', T2.CreationDate) = '2011'
SELECT AVG(T1.UpVotes), AVG(T2.Age) FROM users AS T1 INNER JOIN users AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T2.OwnerUserId HAVING COUNT(T2.OwnerUserId) > 10
SELECT COUNT(UserId) FROM badges WHERE Name = 'Announcer'
SELECT Name FROM badges WHERE Date = '2010-07-19 19:39:08.0'
SELECT COUNT(PostId) FROM comments WHERE Score > 60
SELECT Text FROM comments WHERE CreationDate = '2010-07-19 19:16:14.0'
SELECT COUNT(PostId) FROM posts WHERE Score = 10
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T1.Reputation DESC LIMIT 1
SELECT T1.Reputation FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Date = '2010-07-19 19:39:08.0'
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Pierre'
SELECT T1.Date FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = 'Rochester, NY'
SELECT CAST(SUM(IIF(T2.Name = 'Teacher', 1, 0)) AS REAL) * 100 / COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id
SELECT CAST(SUM(CASE WHEN T2.Age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Organizer'
SELECT T1.Score FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate = '2010-07-19 19:19:56.0'
SELECT Text FROM comments WHERE CreationDate = '2010-07-19 19:37:33'
SELECT T1.Age FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = 'Vienna, Austria'
SELECT COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Age >= 19 AND T2.Age <= 65 AND T1.Name = 'Supporter'
SELECT COUNT(T2.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = '2010-07-19 19:39:08.0'
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation LIMIT 1
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Sharpie'
SELECT COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Supporter' AND T2.Age > 65
SELECT DisplayName FROM users WHERE Id = 30
SELECT COUNT(Location) FROM users WHERE Location = 'New York'
SELECT COUNT(Id) FROM votes WHERE CreationDate LIKE '2010%'
SELECT COUNT(Id) FROM users WHERE Age >= 19 AND Age <= 65
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT CAST(COUNT(CASE WHEN STRFTIME('%Y', CreationDate) = '2010' THEN Id END) AS REAL) / COUNT(CASE WHEN STRFTIME('%Y', CreationDate) = '2011' THEN Id END) FROM votes
SELECT T3.TagName FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId INNER JOIN tags AS T3 ON T2.ExcerptPostId = T3.ExcerptPostId WHERE T1.DisplayName = 'John Salvatier'
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Daniel Vassallo'
SELECT COUNT(T2.Id) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Harlan'
SELECT T2.PostId FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'slashnick' ORDER BY T2.AnswerCount DESC LIMIT 1
SELECT T1.OwnerUserId FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName IN ('Harvey Motulsky', 'Noah Snyder') ORDER BY T1.ViewCount DESC LIMIT 1
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Matt Parker' AND T2.PostId > 4
SELECT COUNT(T1.Score) FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Neil McGuigan' AND T1.Score < 60
SELECT T1.Tags FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Mark Meckes' AND T1.CommentCount = 0 GROUP BY T1.Tags
SELECT T1.DisplayName FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Organizer'
SELECT CAST(SUM(CASE WHEN T1.Tags LIKE '%R%' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Tags = T2.Id WHERE T2.TagName = 'r'
SELECT SUM(CASE WHEN T1.OwnerDisplayName = 'Mornington' THEN T2.ViewCount ELSE 0 END) - SUM(CASE WHEN T1.OwnerDisplayName = 'Amos' THEN T2.ViewCount ELSE 0 END) AS diff FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId
SELECT COUNT(UserId) FROM badges WHERE Date LIKE '2014%' AND Name = 'Commentator'
SELECT COUNT(Id) FROM posts WHERE CreationDate LIKE '2010-07-21%'
SELECT DisplayName, Age FROM users WHERE Views = ( SELECT MAX(Views) FROM users )
SELECT LastEditDate, LastEditorUserId FROM posts WHERE Title = 'Detecting a given face in a database of facial images'
SELECT COUNT(Text) FROM comments WHERE UserId = 13 AND Score < 60
SELECT T1.Title, T2.UserDisplayName FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score > 60
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = 'North Pole' AND STRFTIME('%Y', T1.Date) = '2011'
SELECT T2.DisplayName, T2.WebsiteUrl FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.FavoriteCount > 150
SELECT COUNT(PostId), LastEditDate FROM posts WHERE Title = 'What is the best introductory Bayesian statistics textbook!'
SELECT T2.LastAccessDate, T2.Location FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Outliers'
SELECT T2.Title FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.RelatedPostId = ( SELECT Id FROM posts WHERE Title = 'How to tell if something happened in a data set which monitors a value over time' )
SELECT T1.PostId, T2.Name FROM postHistory AS T1 INNER JOIN badges AS T2 ON T1.UserId = T2.UserId WHERE T1.UserDisplayName = 'Samuel' AND STRFTIME('%Y', T1.CreationDate) = '2013'
SELECT OwnerDisplayName FROM posts WHERE ViewCount = ( SELECT MAX(ViewCount) FROM posts )
SELECT T1.OwnerDisplayName, T1.Location FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Tags = 'hypothesis-testing'
SELECT T2.RelatedPostId, T2.LinkTypeId FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.RelatedPostId WHERE T1.Title = 'What are principal component scores?'
SELECT T2.OwnerDisplayName FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id ORDER BY T2.Score DESC LIMIT 1
SELECT T2.DisplayName, T2.WebsiteUrl FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.VoteTypeId = 8 ORDER BY T1.BountyAmount DESC LIMIT 1
SELECT Title FROM posts ORDER BY ViewCount DESC LIMIT 5
SELECT COUNT(T2.Tags) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T1.ViewCount BETWEEN 5000 AND 7000
SELECT OwnerUserId FROM posts WHERE FavoriteCount = ( SELECT MAX(FavoriteCount) FROM posts )
SELECT Age FROM users WHERE Reputation = ( SELECT Reputation FROM users ORDER BY Reputation DESC LIMIT 1 )
SELECT COUNT(PostId) FROM votes WHERE CreationDate LIKE '2011%' AND BountyAmount = 50
SELECT Id FROM users ORDER BY Age LIMIT 1
SELECT SUM(Score) FROM posts WHERE LasActivityDate LIKE '2010-07-19%'
SELECT CAST(COUNT(T2.Id) AS REAL) / 12 AS average FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE STRFTIME('%Y', T2.CreationDate) = '2010' AND T1.AnswerCount <= 2
SELECT T2.PostId FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.Id = 1465 ORDER BY T2.FavoriteCount DESC LIMIT 1
SELECT T1.Title FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId ORDER BY T2.CreationDate ASC LIMIT 1
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.Name ORDER BY COUNT(T1.Name) DESC LIMIT 1
SELECT T1.CreationDate FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'chl' ORDER BY T1.CreationDate LIMIT 1
SELECT T1.CreationDate FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id ORDER BY T3.Age LIMIT 1
SELECT T2.DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Autobiographer' ORDER BY T1.Date LIMIT 1
SELECT COUNT(T1.OwnerUserId) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Location = 'United Kingdom' AND T2.FavoriteCount >= 4
SELECT AVG(T1.PostId) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T2.Age ORDER BY T2.Age LIMIT 1
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT COUNT(OwnerId) FROM posts WHERE Views > 1000 AND Reputation > 2000
SELECT DISTINCT T2.UserDisplayName FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T1.Age >= 19 AND T1.Age <= 65
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Jay Stevens' AND STRFTIME('%Y', T2.CreationDate) = '2010'
SELECT T2.Id, T2.Title FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'Harvey Motulsky' ORDER BY T2.ViewCount DESC LIMIT 1
SELECT Id, Title FROM posts WHERE Score = ( SELECT MAX(Score) FROM posts )
SELECT AVG(T1.Score) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T3.DisplayName = 'Stephen Turner'
SELECT T2.UserDisplayName FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE strftime('%Y', T1.CreationDate) = '2011' AND T1.ViewCount > 20000
SELECT Id, OwnerDisplayName FROM posts WHERE strftime('%Y', CreationDate) = '2010' ORDER BY FavoriteCount DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.Reputation > 1000 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Reputation) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE strftime('%Y', T2.CreationDate) = '2011'
SELECT CAST(SUM(CASE WHEN Age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(Id) FROM users
SELECT T2.ViewCount, T1.DisplayName FROM postHistory AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Text = 'Computer Game Datasets' ORDER BY T2.ViewCount DESC LIMIT 1
SELECT COUNT(PostId) FROM posts WHERE ViewCount > ( SELECT AVG(ViewCount) FROM posts )
SELECT COUNT(T1.Id) FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id ORDER BY T2.Score DESC LIMIT 1
SELECT COUNT(Id) FROM posts WHERE ViewCount > 35000 AND CommentCount = 0
SELECT T2.UserDisplayName, T2.Location FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.Id = 183 ORDER BY T1.LastEditDate DESC LIMIT 1
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Emmett' ORDER BY T1.Date DESC LIMIT 1
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.Age BETWEEN 19 AND 65 AND T2.UpVotes > 5000
SELECT ( SELECT T2.Date - T2.creationdate FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Zolomon' ) AS time
SELECT COUNT(T1.PostId), COUNT(T2.Text) FROM postHistory AS T1 INNER JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.OwnerUserId = ( SELECT Id FROM users ORDER BY CreationDate DESC LIMIT 1 )
SELECT T2.Text, T1.DisplayName FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId INNER JOIN posts AS T3 ON T2.PostId = T3.Id WHERE T3.Title = 'Analysing wind data with R' ORDER BY T2.CreationDate DESC LIMIT 10
SELECT COUNT(UserId) FROM badges WHERE Name = 'Citizen Patrol'
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Tags = T2.Id WHERE T2.TagName = 'Careers'
SELECT Reputation, Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT COUNT(T1.Comment), T1.CommentCount FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Clustering 1D data'
SELECT CreationDate FROM users WHERE DisplayName = 'IrishStat'
SELECT COUNT(T2.PostId) FROM votes AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.BountyAmount >= 30
SELECT CAST(SUM(CASE WHEN T1.Score > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Score) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id INNER JOIN postHistory AS T3 ON T3.UserId = T2.Id INNER JOIN comments AS T4 ON T4.PostId = T1.Id WHERE T2.Reputation = ( SELECT MAX(Reputation) FROM users )
SELECT COUNT(PostId) FROM posts WHERE Score < 20
SELECT COUNT(Id) FROM tags WHERE Id < 15 AND Count <= 20
SELECT ExcerptPostId, WikiPostId FROM tags WHERE TagName = 'sample'
SELECT T1.Reputation, T1.UpVotes FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text LIKE 'fine, you win :)'
SELECT T1.Text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title LIKE 'linear regression'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ViewCount BETWEEN 100 AND 150 ORDER BY T2.Score DESC LIMIT 1
SELECT T2.CreationDate, T2.Age FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text LIKE '%http://%'
SELECT COUNT(T1.PostId) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score = 0 AND T1.ViewCount < 5
SELECT COUNT(T2.Score) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.CommentCount = 1 AND T2.Score = 0
SELECT COUNT(T1.UserId) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.Age = 40 AND T2.Score = 0
SELECT T1.PostId, T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Group differences on a five point Likert item'
SELECT T2.Score FROM comments AS T1 INNER JOIN votes AS T2 ON T1.UserId = T2.UserId WHERE T1.Text = 'R is also lazy evaluated.'
SELECT T2.Text FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Harvey Motulsky'
SELECT T2.UserDisplayName FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Score BETWEEN 1 AND 5 AND T2.DownVotes = 0
SELECT CAST(SUM(CASE WHEN T1.UpVotes = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Score) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Score BETWEEN 5 AND 10
SELECT T2.power_name FROM superhero AS T1 INNER JOIN superpower AS T2 ON T1.id = T2.power_id WHERE T1.superhero_name = '3-D Man'
SELECT COUNT(T1.id) FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T1.power_name = 'Super Strength'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.height_cm > 200
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id GROUP BY T1.id HAVING COUNT(T3.power_name) > 15
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Blue'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = 'Apocalypse'
SELECT COUNT(T1.id) FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T1.power_name = 'Agility' AND T3.eye_colour_id = 1 AND T3.colour = 1
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id INNER JOIN superpower AS T3 ON T1.power_name = T3.power_name WHERE T2.colour = 'Blue' AND T2.colour = 'Blond' AND T1.eye_colour_id = 2 AND T1.hair_colour_id = 2
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' ORDER BY T1.height_cm DESC
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Sauron'
SELECT T1.eye_colour_id FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' GROUP BY T1.eye_colour_id ORDER BY COUNT(T1.eye_colour_id) DESC LIMIT 1
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T2.publisher_name = 'Marvel Comics' AND T3.power_name = 'Super Strength'
SELECT COUNT(T2.publisher_id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics'
SELECT T3.publisher_name FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.attribute_name = 'Speed' ORDER BY T2.attribute_value LIMIT 1
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN colour AS T3 ON T1.eye_colour_id = T3.id WHERE T2.publisher_name = 'Marvel Comics' AND T3.colour = 'Gold'
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Blue Beetle II'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Blond'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Intelligence' ORDER BY T2.attribute_value LIMIT 1
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'Copycat'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Durability' AND T2.attribute_value < 50
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Death Touch'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Strength' AND T1.gender = 'Female' AND T2.attribute_value = 100
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id GROUP BY T1.superhero_name ORDER BY COUNT(T1.superhero_name) DESC LIMIT 1
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Vampire'
SELECT CAST(SUM(CASE WHEN T2.alignment = 'Bad' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id), COUNT(T1.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id
SELECT SUM(IIF(T2.publisher_name = 'Marvel Comics', 1, 0)) - SUM(IIF(T2.publisher_name = 'DC Comics', 1, 0)) AS num FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id
SELECT id FROM publisher WHERE publisher_name = 'Star Trek'
SELECT AVG(T2.attribute_value) FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T1.attribute_name = 'Attribute Value'
SELECT COUNT(id) FROM superhero WHERE full_name IS NULL
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.id = 75
SELECT T4.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id INNER JOIN superhero_power AS T4 ON T4.power_id = T3.id WHERE T1.superhero_name = 'Deathlok'
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 'Female'
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.gender = 'Male' LIMIT 5
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien'
SELECT T1.superhero_name FROM superhero AS T1 WHERE T1.height_cm BETWEEN 170 AND 190 AND T1.eye_colour_id IN ( SELECT id FROM colour WHERE colour = 'No Colour' )
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 56
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Demi-God' LIMIT 5
SELECT COUNT(id) FROM superhero WHERE alignment_id = 'Bad'
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 169
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T1.height_cm = 185 AND T1.race_id = 1
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id ORDER BY T1.weight_kg DESC LIMIT 1
SELECT CAST(COUNT(CASE WHEN T2.publisher_name = 'Marvel Comics' THEN T1.id ELSE NULL END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.height_cm BETWEEN 150 AND 180
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 'Male' AND T1.weight_kg > ( SELECT AVG(T1.weight_kg) * 0.79 FROM superhero AS T1 )
SELECT T2.power_name FROM superhero AS T1 INNER JOIN superpower AS T2 ON T1.id = T2.power_id GROUP BY T1.id ORDER BY COUNT(T2.power_name) DESC LIMIT 1
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Abomination'
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 1
SELECT COUNT(T2.hero_id) FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T1.power_name = 'stealth'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'strength' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT CAST(COUNT(T1.id) AS REAL) / COUNT(DISTINCT CASE WHEN T1.skin_colour_id = 1 THEN T1.id END) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Dark Horse Comics'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN hero_attribute AS T3 ON T1.id = T3.hero_id INNER JOIN attribute AS T4 ON T3.attribute_id = T4.id WHERE T2.publisher_name = 'Dark Horse Comics' ORDER BY T4.attribute_value DESC LIMIT 1
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = 'Abraham Sapien'
SELECT T3.superhero_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T1.power_name = 'Flight'
SELECT T1.eye_colour_id, T1.hair_colour_id, T1.skin_colour_id FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Dark Horse Comics' AND T1.gender = 'Female'
SELECT T1.superhero_name, T3.publisher_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T1.hair_colour_id = T1.eye_colour_id AND T1.hair_colour_id = T1.skin_colour_id
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'A-Bomb'
SELECT CAST(SUM(CASE WHEN T3.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T3.gender) FROM colour AS T1 INNER JOIN superhero AS T2 ON T2.skin_colour_id = T1.id INNER JOIN gender AS T3 ON T3.id = T2.gender_id WHERE T1.colour = 'Blue'
SELECT T1.superhero_name, T3.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id INNER JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T1.full_name = 'Charles Chandler'
SELECT T2.gender FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.superhero_name = 'Agent 13' AND T1.id = 13
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Adaptation'
SELECT COUNT(T2.power_id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Amazo'
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.superhero_name = 'Hunter Zolomon'
SELECT T1.height_cm FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Amber'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Black'
SELECT T1.eye_colour_id FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T2.colour = 'Gold'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Vampire'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Neutral'
SELECT COUNT(T2.hero_id) FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T1.attribute_name = 'Strength' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT T1.race, T3.alignment FROM race AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.race_id INNER JOIN alignment AS T3 ON T2.alignment_id = T3.id WHERE T2.superhero_name = 'Cameron Hicks'
SELECT CAST(SUM(CASE WHEN T3.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T3.gender) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN gender AS T3 ON T2.gender_id = T3.id WHERE T1.publisher_name = 'Marvel Comics'
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien'
SELECT SUM(CASE WHEN full_name = 'Emil Blonsky' THEN weight_kg ELSE 0 END) - SUM(CASE WHEN full_name = 'Charles Chandler' THEN weight_kg ELSE 0 END) FROM superhero
SELECT AVG(height_cm) FROM superhero
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.superhero_name = 'Abomination'
SELECT COUNT(T1.gender_id) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.gender_id = 1 AND T2.id = 21
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Speed' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT COUNT(id) FROM superhero WHERE alignment_id = 3
SELECT T1.attribute_name, T2.attribute_value FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id INNER JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T3.superhero_name = '3-D Man'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id INNER JOIN colour AS T3 ON T1.eye_colour_id = T3.id WHERE T2.colour = 'Brown' AND T3.colour = 'Blue'
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name IN ('Hawkman', 'Karate Kid', 'Speedy')
SELECT COUNT(id) FROM superhero WHERE publisher_id = 1
SELECT CAST(SUM(CASE WHEN T2.eye_colour_id = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.id) FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T1.colour = 'Blue'
SELECT CAST(SUM(CASE WHEN T1.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.gender = 'Male' THEN 1 ELSE 0 END) FROM gender AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.gender_id
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = 'cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE CAST(REPLACE(REPLACE(weight_kg, ',', ''), '$', '') AS INTEGER) = 0 OR CAST(REPLACE(REPLACE(weight_kg, ',', ''), '$', '') AS INTEGER) IS NULL
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.full_name = 'Karen Beecher-Duncan'
SELECT T2.power_name FROM superhero AS T1 INNER JOIN superpower AS T2 ON T2.id = T1.hero_power_id WHERE T1.full_name = 'Helen Parr'
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 108 AND T1.height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T3.race FROM hero_attribute AS T1 INNER JOIN superhero AS T2 ON T1.hero_id = T2.id INNER JOIN race AS T3 ON T2.race_id = T3.id ORDER BY T1.attribute_value DESC LIMIT 1
SELECT T2.alignment, T1.power_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = 'Atom IV'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Blue'
SELECT AVG(T2.attribute_value) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T3.alignment = 3
SELECT T1.colour FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.skin_colour_id INNER JOIN hero_attribute AS T3 ON T2.id = T3.hero_id WHERE T3.attribute_value = 100
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 2 AND T1.alignment_id = 1
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT T3.race FROM colour AS T1 INNER JOIN superhero AS T2 ON T2.hair_colour_id = T1.id INNER JOIN race AS T3 ON T3.id = T2.race_id WHERE T1.colour = 'blue' AND T2.gender_id = 1
SELECT CAST(SUM(CASE WHEN T2.gender = 2 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.alignment_id = 2
SELECT SUM(IIF(T2.eye_colour_id = 7, 1, 0)) - SUM(IIF(T2.eye_colour_id = 1, 1, 0)) AS diff FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.weight_kg = 0 OR T1.weight_kg IS NULL
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Strength' AND T1.superhero_name = 'Hulk'
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.superhero_name = 'Ajax'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id INNER JOIN colour AS T3 ON T1.skin_colour_id = T3.id INNER JOIN alignment AS T4 ON T1.alignment_id = T4.id WHERE T3.colour = 'Green' AND T4.alignment = 'Bad'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T2.publisher_name = 'Marvel Comics' AND T3.gender = 'Female'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Wind Control'
SELECT T3.gender FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T1.power_name = 'Phoenix Force'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics' ORDER BY T1.weight_kg DESC LIMIT 1
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN race AS T3 ON T1.race_id = T3.id WHERE T2.publisher_name = 'Dark Horse Comics' AND T3.race != 'Human'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Speed' AND T2.attribute_value = 100
SELECT SUM(IIF(T2.publisher_name = 'DC Comics', 1, 0)) - SUM(IIF(T2.publisher_name = 'Marvel Comics', 1, 0)) AS diff FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id
SELECT T3.attribute_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T1.superhero_name = 'Black Panther' ORDER BY T2.attribute_value LIMIT 1
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = 'Abomination'
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT CAST(SUM(CASE WHEN T3.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T3.gender) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN gender AS T3 ON T2.gender_id = T3.id WHERE T1.publisher_name = 'George Lucas'
SELECT CAST(SUM(CASE WHEN T2.alignment = 'Good' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.publisher_name) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'Marvel Comics'
SELECT COUNT(id) FROM superhero WHERE full_name LIKE 'John%'
SELECT T1.hero_id FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id ORDER BY T1.attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id INNER JOIN gender AS T3 ON T1.gender_id = T3.id INNER JOIN superhero AS T4 ON T1.id = T4.id WHERE T3.gender = 'Male' AND T2.colour = 'Brown' AND T1.weight_kg < 100
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Aquababy'
SELECT T1.weight_kg, T3.race FROM superhero AS T1 INNER JOIN race AS T3 ON T1.race_id = T3.id WHERE T1.id = 40
SELECT AVG(height_cm) FROM superhero WHERE gender_id = 1 AND alignment_id = 1
SELECT T1.id FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'Intelligence'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = 'Blackwulf'
SELECT T2.power_name FROM superhero AS T1 INNER JOIN superpower AS T2 ON T1.id = T2.power_id WHERE T1.height_cm > ( SELECT AVG(T1.height_cm) * 0.8 FROM superhero AS T1 )
SELECT T2.driverRef FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 20 ORDER BY T1.position LIMIT 5
SELECT T1.surname FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.q2 = ( SELECT MIN(q2) FROM qualifying WHERE raceId = 19 )
SELECT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.location = 'Shanghai'
SELECT T1.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Circuit de Barcelona-Catalunya'
SELECT T1.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.country = 'Germany'
SELECT T2.positionText FROM circuits AS T1 INNER JOIN constructorStandings AS T2 ON T1.circuitId = T2.raceId INNER JOIN constructors AS T3 ON T2.constructorId = T3.constructorId WHERE T3.name = 'Renault'
SELECT COUNT(T1.name) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.country != 'Asia' AND T2.country != 'Europe' AND T1.year = 2010
SELECT T2.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.country = 'Spain'
SELECT T1.lat, T1.lng FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Australian Grand Prix'
SELECT url FROM races WHERE circuitId = ( SELECT circuitId FROM circuits WHERE name = 'Sepang International Circuit' )
SELECT T2.time FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Sepang International Circuit'
SELECT T2.lat, T2.lng FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Abu Dhabi Grand Prix'
SELECT T2.name FROM constructorResults AS T1 INNER JOIN circuits AS T2 ON T1.constructorId = T2.circuitId WHERE T1.points = 1 AND T1.raceId = 24
SELECT T2.q1 FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Bruno' AND T1.surname = 'Senna' AND T2.raceId = 354
SELECT T3.nationality FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN constructors AS T3 ON T1.constructorId = T3.constructorId WHERE T1.number = 355 AND T1.q2 = '0:01:40'
SELECT T2.number FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.position = 'M:SS' AND T1.q3 = 'M:SS' AND T1.raceId = 903
SELECT COUNT(T1.driverId) FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.name = 'Bahrain Grand Prix' AND T2.year = 2007
SELECT T1.url FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceId = 901
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.date = '2015-11-29'
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.raceId = 592 AND T1.dob IS NOT NULL ORDER BY T1.dob DESC LIMIT 1
SELECT T2.forename, T2.surname, T2.url FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.time LIKE 'M:01:27' AND T1.raceId = 161
SELECT T2.nationality FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 933 ORDER BY T1.fastestLapSpeed DESC LIMIT 1
SELECT T2.lat, T2.lng FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Malaysian Grand Prix'
SELECT T2.url FROM constructorResults AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T1.raceId = 9 ORDER BY T1.points DESC LIMIT 1
SELECT T2.q1 FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T1.number = 'Lucas di Grassi' AND T2.raceId = 345
SELECT T3.forename, T3.surname FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.raceId = 347 AND T2.time = '0:01:15'
SELECT T2.code FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.q3 = 'M:01:33' AND T1.raceId = 45
SELECT T1.time FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Bruce' AND T2.surname = 'McLaren' AND T1.raceId = 743
SELECT T2.positionText FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN driverStandings AS T3 ON T2.driverId = T3.driverId WHERE T1.year = 2006 AND T3.position = 2 AND T1.name = 'San Marino Grand Prix'
SELECT url FROM seasons WHERE year = ( SELECT year FROM races WHERE raceId = 901 )
SELECT COUNT(T1.driverId) FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.date = '2015-11-29'
SELECT T2.driverRef FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.raceId = 872 ORDER BY T2.driverId LIMIT 1
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 348 ORDER BY T1.time LIMIT 1
SELECT T2.nationality FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.fastestLapSpeed DESC LIMIT 1
SELECT CAST((SELECT T1.fastestLapSpeed FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Paul' AND T2.surname = 'di Resta' AND T2.number = 853) - ( SELECT T1.fastestLapSpeed FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Paul' AND T2.surname = 'di Resta' AND T2.number = 854 ) AS REAL) * 100 / ( SELECT T1.fastestLapSpeed FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Paul' AND T2.surname = 'di Resta' AND T2.number = 853 )
SELECT CAST(SUM(CASE WHEN T1.time = '1983-07-16' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.driverId) FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId
SELECT T1.year FROM races AS T1 INNER JOIN constructorResults AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T2.constructorId = T3.constructorId WHERE T3.nationality = 'Singapore' ORDER BY T1.year LIMIT 1
SELECT COUNT(name) FROM races WHERE year = 2005
SELECT T1.name FROM races AS T1 INNER JOIN ( SELECT year, month FROM races ORDER BY year, month ASC LIMIT 1 ) AS T2 ON T1.year = T2.year AND T1.date LIKE T2.`%/%/%
SELECT name, date FROM races WHERE year = 1999 ORDER BY round DESC LIMIT 1
SELECT year FROM races GROUP BY year ORDER BY COUNT(raceId) DESC LIMIT 1
SELECT DISTINCT T2.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2017 AND T1.name NOT IN ( SELECT name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2000 )
SELECT T3.country, T3.name, T3.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId INNER JOIN ( SELECT circuitId, name, location FROM circuits ORDER BY year ASC LIMIT 1 ) AS T3 ON T1.circuitId = T3.circuitId WHERE T3.country = 'Estonia'
SELECT T1.year FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = 'British Grand Prix' AND T2.circuitId = 'Hatch' ORDER BY T1.year DESC LIMIT 1
SELECT COUNT(T1.year) FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId WHERE T3.name = 'Silverstone Circuit' AND T2.name = 'British Grand Prix'
SELECT T2.forename, T2.surname FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2010 AND T1.name = 'Singapore Grand Prix'
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.points DESC LIMIT 1
SELECT T2.forename, T2.surname, T1.points FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T3.year = 2017 ORDER BY T1.points DESC LIMIT 3
SELECT T2.driverId, T1.name FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId ORDER BY T2.milliseconds ASC LIMIT 1
SELECT AVG(T1.milliseconds) FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton' AND T3.name = 'Malaysian Grand Prix' AND T1.lap = 9
SELECT CAST(SUM(CASE WHEN T1.position > 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.position) FROM results AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.surname = 'Hamilton' AND T1.position >= 2 AND T1.year >= 2010
SELECT T1.forename, T1.surname, T2.points FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId ORDER BY T2.points DESC LIMIT 1
SELECT T2.driverId, strftime('%Y', now()) - strftime('%Y', T2.dob) AS age FROM drivers AS T2 WHERE T2.nationality = 'Japanese' ORDER BY strftime('%Y', now()) - strftime('%Y', T2.dob) DESC LIMIT 1
SELECT T2.circuitId FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year BETWEEN 1990 AND 2000 AND T1.year % 4 = 0
SELECT T2.name, T2.location, T1.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2006 AND T2.country = 'USA'
SELECT DISTINCT T1.name, T2.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE STRFTIME('%Y-%m', T1.`date`) = '2005-09'
SELECT T3.name FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T2.forename = 'Alex' AND T2.surname = 'Yoong' AND T1.position < 20
SELECT T1.points FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId INNER JOIN drivers AS T4 ON T1.driverId = T4.driverId WHERE T3.name = 'Sepang International Circuit' AND T4.forename = 'Michael' AND T4.surname = 'Schumacher' ORDER BY T1.points DESC LIMIT 1
SELECT T1.driverId, T1.lap FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Michael' AND T2.surname = 'Schumacher' ORDER BY T1.milliseconds LIMIT 1
SELECT CAST(SUM(T2.points) AS REAL) / COUNT(T2.points) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN driverStandings AS T3 ON T2.driverId = T3.driverId INNER JOIN drivers AS T4 ON T3.driverId = T4.driverId WHERE T4.forename = 'Eddie' AND T4.surname = 'Irving' AND T1.year = 2000
SELECT T3.year, T3.points FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton' ORDER BY T3.year LIMIT 1
SELECT DISTINCT T1.name, T3.country FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId INNER JOIN circuits AS T3 ON T1.circuitId = T3.circuitId WHERE T1.year = 2017 ORDER BY T1.date
SELECT T1.name, T2.year, T3.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId INNER JOIN ( SELECT T1.name, T1.year, T2.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId ORDER BY T1.laps DESC LIMIT 1 ) AS T3 ON T1.name = T3.name
SELECT CAST(SUM(CASE WHEN T2.country = 'Germany' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.name) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'European Grand Prix'
SELECT lat, lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT name FROM circuits WHERE name = 'Silverstone Circuit, Hockenheimring' OR name = 'Hungaroring' ORDER BY lat DESC LIMIT 1
SELECT circuitRef FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT COUNT(driverId) FROM drivers WHERE code IS NULL
SELECT T1.country FROM circuits AS T1 INNER JOIN lapTimes AS T2 ON T1.circuitId = T2.circuitId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId ORDER BY T3.dob DESC LIMIT 1
SELECT surname FROM drivers WHERE nationality = 'italian'
SELECT url FROM drivers WHERE forename = 'Anthony' AND surname = 'Davidson'
SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton'
SELECT T2.circuitId FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2009 AND T1.name = 'Spanish Grand Prix'
SELECT DISTINCT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Silverstone Circuit' AND T1.name = 'Formula 1'
SELECT T2.url FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Silverstone Circuit'
SELECT T1.time FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Abu Dhabi' AND T1.year = 2010
SELECT COUNT(T2.name) FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.country = 'Italy'
SELECT T1.date FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Barcelona-Catalunya' AND T1.name = 'Formula_1'
SELECT T1.url FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.year = 2009 AND T1.country = 'Spain'
SELECT MIN(T1.fasterLapTime) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton'
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.fasterLapSpeed ASC LIMIT 1
SELECT T3.driverRef FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'Canadian Grand Prix' AND T2.position = 1 AND T1.year = 2007
SELECT DISTINCT T3.name FROM driverStandings AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton'
SELECT T2.name FROM driverStandings AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN results AS T3 ON T1.driverId = T3.driverId WHERE T3.positionText = '1st' AND T3.driverId = ( SELECT driverId FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' )
SELECT T1.fastestLapSpeed FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.name = 'Spanish Grand Prix' ORDER BY T1.fastestLapSpeed DESC LIMIT 1
SELECT DISTINCT T1.year FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.forename = 'Lewis' AND T3.surname = 'Hamilton'
SELECT T1.positionOrder FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton' AND T3.name = 'Chinese Grand Prix' AND T1.year = 2008
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.grid = 4 AND T2.positionText = 'Front' AND T2.raceId = ( SELECT raceId FROM races WHERE name = 'Australian Grand Prix 1989' AND year = 1989 )
SELECT COUNT(T1.driverId) FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.year = 2008 AND T2.name = '2008 Australian Grand Prix' AND T1.time IS NOT NULL
SELECT T1.positionText FROM driverStandings AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN circuits AS T3 ON T1.raceId = T3.circuitId WHERE T2.driverId = ( SELECT driverId FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' AND year = 2008 ) ORDER BY T2.position DESC LIMIT 1
SELECT T2.time FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'Chinese Grand Prix' AND T1.year = 2008 AND T2.position = 2
SELECT T3.forename, T3.surname, T1.url FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T2.year = 2008 AND T1.name = 'Australian Grand Prix' ORDER BY T2.time DESC LIMIT 1
SELECT COUNT(T1.driverId) FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.year = 2008 AND T3.name = 'Australian Grand Prix' AND T1.nationality = 'British'
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2008 AND T1.name = 'Chinese Grand Prix'
SELECT SUM(T2.points) FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton'
SELECT AVG(T1.fastestLapTime) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.code = 'LHS'
SELECT CAST(SUM(CASE WHEN T2.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) / COUNT(T2.time) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2008 AND T1.name = '2008 Australian Grand Prix'
SELECT CAST((T2.position - T1.position) AS REAL) * 100 / T1.time FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.name = '2008 Australian Grand Prix' AND T1.year = 2008
SELECT COUNT(circuitId) FROM circuits WHERE location = 'Melbourne' AND country = 'Australia'
SELECT lat, lng FROM circuits WHERE country = 'USA'
SELECT COUNT(driverId) FROM drivers WHERE dob > 1980 AND nationality = 'British'
SELECT MAX(T2.points) FROM constructors AS T1 INNER JOIN constructorStandings AS T2 ON T1.constructorId = T2.constructorId WHERE T1.nationality = 'British'
SELECT T2.name FROM constructorResults AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId ORDER BY T1.points DESC LIMIT 1
SELECT DISTINCT T2.name FROM constructorResults AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T1.raceId = 291 AND T1.points = 0
SELECT COUNT(T2.constructorId) FROM races AS T1 INNER JOIN constructorResults AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T2.constructorId = T3.constructorId WHERE T3.nationality = 'Japanese' AND T1.year = 2
SELECT DISTINCT T2.constructorRef FROM results AS T1 INNER JOIN constructorStandings AS T2 ON T1.constructorId = T2.constructorId WHERE T1.rank = 1
SELECT COUNT(*) FROM ( SELECT T1.constructorId FROM constructors AS T1 INNER JOIN results AS T2 ON T1.constructorId = T2.constructorId WHERE T1.nationality = 'French' AND T2.laps > 50 )
SELECT CAST(SUM(CASE WHEN T2.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.time) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.nationality = 'Japanese' AND T2.year BETWEEN 2007 AND 2009
SELECT AVG(T1.time) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.year < 1975
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.rank = 2 AND strftime('%Y', T2.date) > '1975'
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T2.driverId IN ( SELECT driverId FROM drivers WHERE nationality = 'Italian' AND (T1.time IS NULL OR T1.time = 0) )
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.fasterLapTime LIMIT 1
SELECT T1.lap FROM lapTimes AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.fastestLap = ( SELECT fastestLap FROM results WHERE raceId = ( SELECT raceId FROM races WHERE year = 2009 ) )
SELECT AVG(T2.fastestLapSpeed) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Spanish Grand Prix' AND T1.year = 2009
SELECT T1.name, T2.year FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId ORDER BY T2.milliseconds ASC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.laps > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.driverId) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.dob < 1985 AND T2.lap > 50 AND T2.lap < 2006
SELECT COUNT(T1.driverId) FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.nationality = 'French' AND T1.time IN ((-120, -120.000001, -120.000002, -120.000003, -120.000004, -120.000005, -120.000006, -120.000007, -120.000008, -120.000009) OR T1.time IN ((-120.000001, -120.000002, -120.000003, -120.000004, -120.000005, -120.000006, -120.000007, -120.000008, -120.000009))
SELECT code FROM drivers WHERE nationality = 'America'
SELECT raceId FROM races WHERE year = 2009
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.raceId = 18
SELECT DISTINCT T2.code, COUNT(T2.code) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.nationality = 'Netherlandic' ORDER BY T1.dob DESC LIMIT 3
SELECT driverRef FROM drivers WHERE forename = 'Robert' AND surname = 'Kubica'
SELECT COUNT(*) FROM drivers WHERE dob LIKE '1980%' AND nationality = 'British'
SELECT T2.driverRef FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.year BETWEEN 1980 AND 1990 AND T3.nationality = 'German' ORDER BY T2.time ASC LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = 'German' ORDER BY dob LIMIT 1
SELECT T2.driverId, T2.code FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.fastestLapTime = 1971
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.dob LIKE '%/%/1982%' ORDER BY T1.time DESC LIMIT 10
SELECT T1.year FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId ORDER BY T2.fasterLapTime LIMIT 1
SELECT T2.year FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId ORDER BY T1.fastestLapSpeed LIMIT 1
SELECT driverId FROM lapTimes WHERE lap = 1 ORDER BY time ASC LIMIT 5
SELECT COUNT(*) FROM results WHERE raceId BETWEEN 50 AND 100 AND statusId = 2 AND time IS NOT NULL
SELECT COUNT(circuitId), location, lat, lng FROM circuits WHERE country = 'Austria'
SELECT raceId FROM lapTimes GROUP BY raceId ORDER BY COUNT(raceId) DESC LIMIT 1
SELECT T3.driverRef, T3.nationality, T3.dob FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN circuits AS T3 ON T1.circuitId = T3.circuitId WHERE T1.raceId = 23 AND T1.q2 IS NOT NULL
SELECT T3.year, T3.date, T3.time FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId ORDER BY T2.dob DESC LIMIT 1
SELECT COUNT(T2.driverId) FROM status AS T1 INNER JOIN results AS T2 ON T1.statusId = T2.statusId WHERE T1.status = 'Puncture' AND T2.driverId IN ( SELECT driverId FROM drivers WHERE nationality = 'American' )
SELECT T1.url FROM constructors AS T1 INNER JOIN constructorStandings AS T2 ON T1.constructorId = T2.constructorId WHERE T1.nationality = 'Italian' ORDER BY T2.points DESC LIMIT 1
SELECT T2.url FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId GROUP BY T2.constructorId ORDER BY COUNT(T1.constructorId) DESC LIMIT 1
SELECT T2.driverId FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'French Grand Prix' ORDER BY T2.time DESC LIMIT 1
SELECT T1.position, T1.milliseconds FROM lapTimes AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.rank = 1 ORDER BY T2.milliseconds ASC LIMIT 1
SELECT AVG(T2.fastestLapTime) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2006 AND T2.position = 1 AND T2.driverId IN ( SELECT driverId FROM drivers WHERE nationality = 'American' )
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId WHERE T1.dob BETWEEN '1980' AND '1985' GROUP BY T1.forename, T1.surname ORDER BY AVG(T2.duration) LIMIT 3
SELECT T2.driverId, T2.position FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2008 AND T1.name = 'Canadian Grand Prix' ORDER BY T2.position DESC LIMIT 1
SELECT T2.constructorRef, T1.url FROM races AS T1 INNER JOIN constructorStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2009 AND T1.name = 'Singapore Grand Prix' ORDER BY T1.time DESC LIMIT 1
SELECT forename, surname, dob FROM drivers WHERE nationality = 'Austrian' AND CAST(dob AS date) BETWEEN '1981' AND '1991'
SELECT forename, surname, dob, url FROM drivers WHERE nationality = 'germany' AND CAST(dob AS date) >= '1971-01-01' AND CAST(dob AS date) < '1986-01-01' ORDER BY CAST(dob AS date) DESC
SELECT location, country, lat, lng FROM circuits WHERE name = 'Hungaroring'
SELECT T3.points, T3.name, T3.nationality FROM races AS T1 INNER JOIN constructorResults AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T2.constructorId = T3.constructorId WHERE T1.year BETWEEN 1980 AND 2010 AND T1.name = 'Monaco Grand Prix'
SELECT AVG(T1.points) FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN constructorStandings AS T3 ON T2.driverId = T3.driverId INNER JOIN constructorResults AS T4 ON T3.constructorId = T4.constructorId INNER JOIN races AS T5 ON T4.raceId = T5.raceId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton' AND T5.name = 'Turkish Grand Prix'
SELECT CAST(SUM(CASE WHEN strftime('%Y', T2.date) BETWEEN '2000' AND '2010' THEN 1 ELSE 0 END) AS REAL) / COUNT(T2.year) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId
SELECT nationality FROM drivers GROUP BY nationality ORDER BY COUNT(nationality) DESC LIMIT 1
SELECT SUM(T1.wins) FROM driverStandings AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.position = 91
SELECT T2.name FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId ORDER BY T1.fastestLapTime LIMIT 1
SELECT T1.location, T1.country FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId ORDER BY T2.date DESC LIMIT 1
SELECT T3.forename, T3.surname FROM races AS T1 INNER JOIN qualifying AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.year = 2008 AND T1.circuitId = 'MARINA BAY STREET' AND T2.q3 = 1
SELECT T1.forename, T1.surname, T1.nationality, T3.name FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId ORDER BY T1.dob DESC LIMIT 1
SELECT COUNT(T3.number) FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN driverStandings AS T3 ON T2.raceId = T3.raceId WHERE T1.country = 'Canada' AND T2.name = 'Canadian Grand Prix' AND T3.driverId = ( SELECT T4.driverId FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN driverStandings AS T3 ON T2.raceId = T3.raceId WHERE T1.country = 'Canada' AND T2.name = 'Canadian Grand Prix' GROUP BY T4.driverId ORDER BY COUNT(T4.driverId) DESC LIMIT 1 )
SELECT T2.wins, T1.forename, T1.surname FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId ORDER BY T1.dob LIMIT 1
SELECT MAX(duration) FROM pitStops
SELECT T1.time FROM lapTimes AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId ORDER BY T1.time LIMIT 1
SELECT MAX(T1.duration) FROM pitStops AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton'
SELECT T2.lap FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.year = 2011 AND T1.forename = 'Lewis' AND T1.surname = 'Hamilton'
SELECT T2.duration FROM races AS T1 INNER JOIN pitStops AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2011 AND T1.name = 'Australian Grand Prix'
SELECT T2.lap, T2.time FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton'
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.time ASC LIMIT 20
SELECT T2.position FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.forename = 'Lewis' AND T3.surname = 'Hamilton' ORDER BY T1.time LIMIT 1
SELECT T1.fasterLapTime FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId WHERE T3.name = 'Austrian Grand Prix Circuit'
SELECT T2.lap, T2.time FROM circuits AS T1 INNER JOIN lapTimes AS T2 ON T1.circuitId = T2.raceId WHERE T1.country = 'Italy'
SELECT T2.foundry FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Austrian Grand Prix' ORDER BY T2.time ASC LIMIT 1
SELECT T2.duration FROM races AS T1 INNER JOIN pitStops AS T2 ON T1.raceId = T2.raceId WHERE T1.circuitId = 'AUSTRIAN GRAND PRIX' AND T2.driverId = ( SELECT T4.driverId FROM circuits AS T3 INNER JOIN races AS T4 ON T3.circuitId = T4.circuitId WHERE T4.name = 'Austrian Grand Prix' )
SELECT T2.lat, T2.lng FROM results AS T1 INNER JOIN circuits AS T2 ON T1.raceId = T2.circuitId WHERE T1.fasterLapTime = '1:29.488'
SELECT AVG(T2.milliseconds) FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton'
SELECT AVG(T2.milliseconds) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.circuitId = 'ITC'
SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1
SELECT height, player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT preferred_foot FROM Player_Attributes ORDER BY potential ASC LIMIT 1
SELECT COUNT(player_api_id) FROM Player_Attributes WHERE defensive_work_rate = 'low' AND overall_rating BETWEEN 60 AND 65
SELECT player_api_id FROM Player_Attributes ORDER BY crossing DESC LIMIT 5
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T2.id = T1.league_id WHERE T1.season = '2016' GROUP BY T2.name ORDER BY SUM(T1.home_team_goal + T1.away_team_goal) DESC LIMIT 1
SELECT T2.home_team_api_id FROM Match AS T1 INNER JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.season = '2015/2016' GROUP BY T2.home_team_api_id ORDER BY SUM(T1.home_team_goal - T1.away_team_goal) ASC LIMIT 1
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.penalties DESC LIMIT 10
SELECT T2.team_long_name FROM Match AS T1 INNER JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id INNER JOIN League AS T3 ON T1.season = 2009 AND T3.name = 'Scotland Premier League' WHERE T3.name = 'Scotland Premier League' GROUP BY T2.team_api_id ORDER BY SUM(T1.away_team_goal - T1.home_team_goal) DESC LIMIT 1
SELECT buildUpPlaySpeed FROM Team_Attributes ORDER BY buildUpPlaySpeed DESC LIMIT 4
SELECT T2.name FROM `Match` AS T1 INNER JOIN League AS T2 ON T2.id = T1.league_id WHERE T1.season = '2016' GROUP BY T2.name ORDER BY SUM(away_team_goal = home_team_goal) DESC LIMIT 1
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.sprint_speed >= 97 AND STRFTIME('%Y', T1.date) BETWEEN '2013' AND '2015'
SELECT T2.name, COUNT(T1.away_team_goal) FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.country_id GROUP BY T2.name ORDER BY COUNT(T1.away_team_goal) DESC LIMIT 1
SELECT AVG(height) FROM Player WHERE birthday BETWEEN '1990-01-01' AND '1995-12-31'
SELECT player_api_id FROM Player_Attributes WHERE SUBSTR(`date`, 1, 4) = '2010' ORDER BY overall_rating DESC LIMIT 1
SELECT T1.team_fifa_api_id FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlaySpeed BETWEEN 50 AND 60
SELECT T2.team_long_name FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlayPassing IS NOT NULL AND strftime('%Y', T1.date) = '2012' GROUP BY T2.team_long_name HAVING SUM(T1.buildUpPlayPassing) > COUNT(T1.buildUpPlayPassing)
SELECT CAST(SUM(CASE WHEN T2.preferred_foot = 'left' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.player_fifa_api_id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.birthday LIKE '1987%' OR T1.birthday LIKE '1988%' OR T1.birthday LIKE '1989%' OR T1.birthday LIKE '1990%' OR T1.birthday LIKE '1991%' OR T1.birthday LIKE '1992%'
SELECT name FROM League GROUP BY name ORDER BY SUM(CASE WHEN name = 'Premier' THEN 1 ELSE 0 END) DESC LIMIT 5
SELECT CAST(SUM(T1.long_shots) AS REAL) / COUNT(T1.player_fifa_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Ahmed Samir Farag'
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.height > 180 GROUP BY T2.player_name ORDER BY SUM(T1.heading_accuracy) DESC LIMIT 10
SELECT T2.team_long_name FROM Player_Attributes AS T1 INNER JOIN Team_Attributes AS T2 ON T1.id = T2.id WHERE T2.buildUpPlayDribblingClass = 'Normal' AND T1.date BETWEEN '2014-01-01' AND '2014-01-30' GROUP BY T2.team_fifa_api_id ORDER BY SUM(T2.chanceCreationPassing) / COUNT(T2.id) - T2.chanceCreationPassing > 0
SELECT DISTINCT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2009/2010' GROUP BY T2.name HAVING SUM(T1.home_team_goal) > SUM(T1.away_team_goal)
SELECT team_short_name FROM Team WHERE team_long_name = 'Queens Park Rangers'
SELECT player_name FROM Player WHERE SUBSTR(birthday, 1, 7) = '1970-10'
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Franco Zennaro'
SELECT T2.buildUpPlayPositioningClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'ADO Den Haag'
SELECT T1.heading_accuracy FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Francois Affolter' AND T1.date = '2014-09-18'
SELECT T1.overall_rating FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Gabriel Tamas' AND strftime('%Y', T1.date) = '2011'
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Scotland Premier League' AND T1.season = 2016
SELECT T2.preferred_foot FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday DESC LIMIT 1
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.potential DESC LIMIT 1
SELECT COUNT(T1.player_api_id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = 'left'
SELECT T2.team_short_name FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.chanceCreationPassingClass = 'Risky'
SELECT T1.defensive_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'David Wilson'
SELECT T1.birthday FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT T2.name FROM Country AS T1 INNER JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = 'Netherlands'
SELECT AVG(T1.home_team_goal) FROM Match AS T1 INNER JOIN Team AS T2 ON T2.team_api_id = T1.home_team_api_id INNER JOIN League AS T3 ON T3.country_id = T2.id INNER JOIN Country AS T4 ON T4.id = T3.country_id WHERE T4.name = 'Poland' AND T1.season = '2010/2011'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.finishing DESC LIMIT 1
SELECT player_name FROM Player WHERE height > 180
SELECT COUNT(player_name) FROM Player WHERE strftime('%Y', birthday) > '1990'
SELECT COUNT(player_api_id) FROM Player WHERE player_name = 'Adam' AND weight > 170
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.overall_rating > 80 AND strftime('%Y', T1.date) BETWEEN '2008' AND '2010' GROUP BY T2.player_name
SELECT T1.potential FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Aaron Doran'
SELECT player_api_id FROM Player_Attributes WHERE preferred_foot = 'left'
SELECT DISTINCT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlaySpeedClass = 'Fast'
SELECT T2.buildUpPlayPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_short_name = 'CLB'
SELECT T2.team_short_name FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlayPassing > 70
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 170 AND T2.player_api_id IN ( SELECT player_api_id FROM Player_Attributes WHERE player_api_id IN ( SELECT player_api_id FROM Player_Attributes WHERE strftime('%Y', date) BETWEEN '2010' AND '2015' ) )
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Italy Serie A'
SELECT T2.team_short_name FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeed = 31 AND T1.buildUpPlayDribbling = 53 AND T1.buildUpPlayPassing = 32
SELECT AVG(T1.overall_rating) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Aaron Doran'
SELECT COUNT(T1.id) FROM `Match` AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Germany 1. Bundesliga' AND strftime('%Y-%m', T1.date) BETWEEN '2008-08' AND '2008-10'
SELECT T2.team_short_name FROM Match AS T1 INNER JOIN Team AS T2 ON T2.team_api_id = T1.home_team_api_id WHERE T1.home_team_goal = 10
SELECT player_fifa_api_id FROM Player_Attributes WHERE balance = 61 ORDER BY balance DESC LIMIT 1
SELECT AVG(T1.ball_control) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Abdou Diallo' OR T2.player_name = 'Aaron Appindangoye'
SELECT team_long_name FROM Team WHERE team_short_name = 'GEN'
SELECT CASE WHEN birthday > '1990-01-01' THEN 'Aaron Lennon' ELSE 'Abdelaziz Barrada' END FROM Player
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT COUNT(CASE WHEN preferred_foot = 'left' AND attacking_work_rate = 'low' THEN player_api_id ELSE NULL END) FROM Player_Attributes
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Belgium Jupiler League'
SELECT T2.name FROM Country AS T1 INNER JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = 'Germany'
SELECT T1.player_api_id FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.overall_rating DESC LIMIT 1
SELECT COUNT(T2.player_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.defensive_work_rate = 'high' AND strftime('%Y', T2.birthday) < '1986'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name IN ('Alexis', 'Arouna Kone', 'Ariel Borysiuk') ORDER BY T2.crossing DESC LIMIT 1
SELECT T1.heading_accuracy FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Ariel Borysiuk'
SELECT COUNT(T1.player_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.height > 180 AND T1.volley_score > 70
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.volley > 70 AND T1.dribbling > 70
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.id INNER JOIN Team AS T3 ON T3.id = T2.team_api_id INNER JOIN Team_Attributes AS T4 ON T4.team_api_id = T3.team_api_id INNER JOIN Country AS T5 ON T2.country_id = T5.id WHERE T1.season = '2008/2009' AND T5.name = 'Belgium'
SELECT T1.long_passing FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.birthday LIMIT 1
SELECT COUNT(T1.id) FROM `Match` AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Belgium Jupiler League' AND SUBSTR(T1.`date`, 1, 7) = '2009-04'
SELECT T1.name FROM League AS T1 INNER JOIN Team AS T2 ON T1.id = T2.league_id INNER JOIN Match AS T3 ON T2.team_api_id = T3.home_team_api_id WHERE T3.season = '2008/2009' GROUP BY T1.name ORDER BY COUNT(T1.name) DESC LIMIT 1
SELECT SUM(T1.overall_rating) / COUNT(T1.id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE strftime('%Y', T2.birthday) < '1986'
SELECT CAST((SUM(CASE WHEN T2.player_name = 'Ariel Borysiuk' THEN T1.overall_rating ELSE 0 END) - SUM(CASE WHEN T2.player_name = 'Paulin Puel' THEN T1.overall_rating ELSE 0 END)) AS REAL) * 100 / SUM(CASE WHEN T2.player_name = 'Paulin Puel' THEN T1.overall_rating ELSE 0 END) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id
SELECT AVG(T1.buildUpPlaySpeed) FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = 'Heart of Midlothian'
SELECT AVG(T1.overall_rating) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Pietro Marino'
SELECT SUM(T1.crossing) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Aaron Lennox'
SELECT T1.chanceCreationPassingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T2.team_long_name = 'Ajax' ORDER BY T1.chanceCreationPassing DESC LIMIT 1
SELECT T1.player_fifa_api_id FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Abdou Diallo'
SELECT T2.overall_rating FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Dorlan Pabon' ORDER BY T2.overall_rating DESC LIMIT 1
SELECT AVG(T2.away_team_goal) FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.away_team_api_id WHERE T1.team_long_name = 'Parma' AND T2.country_id = 3
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.overall_rating = 77 AND T1.date LIKE '2016-06-23%' ORDER BY T2.birthday LIMIT 1
SELECT T2.overall_rating FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Aaron Mooy' AND T2.date LIKE '2016-02-04%'
SELECT T2.potential FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Francesco Parravicini' AND T2.date = '2010-08-30'
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Francesco Migliore' AND T1.date LIKE '2015-05-01%'
SELECT T1.defensive_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Kevin Berigaud' AND T1.date = '2013-02-22 00:00:00'
SELECT T1.date FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Kevin Constant' ORDER BY T1.crossing DESC LIMIT 1
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = 'Willem II' AND T1.date = '2011-02-22'
SELECT T1.buildUpPlayDribblingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_short_name = 'LEI' AND T1.date = '2015-09-10'
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T2.team_long_name = 'FC Lorient' AND T1.date LIKE '2010-02-22%'
SELECT T2.chanceCreationPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.id = T2.team_fifa_id WHERE T1.team_long_name = 'PEC Zwolle' AND T2.date = '2013-09-20 00:00:00'
SELECT T1.chanceCreationCrossingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_id = T2.team_fifa_id WHERE T2.team_long_name = 'Hull City' AND T1.date = '2010-02-22 00:00:00'
SELECT T1.defenceAggressionClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_id = T2.team_fifa_id WHERE T2.team_long_name = 'Hannover 96' AND T1.date = '2015-09-10'
SELECT AVG(T1.overall_rating) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Marko Arnautovic' AND T1.date BETWEEN '2007-02-22' AND '2016-04-21'
SELECT CAST((SUM(CASE WHEN T2.player_name = 'Landon Donovan' THEN T1.overall_rating ELSE 0 END) - SUM(CASE WHEN T2.player_name = 'Jordan Bowery' THEN T1.overall_rating ELSE 0 END)) AS REAL) * 100 / SUM(CASE WHEN T2.player_name = 'Landon Donovan' THEN T1.overall_rating ELSE 0 END) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT player_api_id FROM Player ORDER BY weight DESC LIMIT 10
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE CAST(CURDATE() AS datetime) - T1.birthday > 34
SELECT COUNT(T1.home_team_api_id) FROM Match AS T1 INNER JOIN Player AS T2 ON T2.player_api_id = T1.home_player_11 GROUP BY T1.home_team_api_id HAVING T2.player_name = 'Aaron Lennon'
SELECT SUM(T1.away_team_goal) FROM Match AS T1 INNER JOIN Player AS T2 ON T1.away_player_11 = T2.player_api_id OR T1.away_player_10 = T2.player_api_id OR T1.away_player_9 = T2.player_api_id OR T1.away_player_8 = T2.player_api_id OR T1.away_player_7 = T2.player_api_id OR T1.away_player_6 = T2.player_api_id OR T1.away_player_5 = T2.player_api_id OR T1.away_player_4 = T2.player_api_id OR T1.away_player_3 = T2.player_api_id OR T1.away_player_2 = T2.player_api_id OR T1.away_player_1 = T2.player_api_id WHERE T2.player_name = 'Daan Smith' OR T2.player_name = 'Filipe Ferreira'
SELECT SUM(T1.home_team_goal) FROM Match AS T1 INNER JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id INNER JOIN Team_Attributes AS T3 ON T2.team_api_id = T3.team_api_id INNER JOIN Player AS T4 ON T1.away_player_11 = T4.player_api_id WHERE T4.player_fifa_api_id < 30
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.overall_rating DESC LIMIT 1
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.potential DESC LIMIT 1
SELECT T1.player_api_id FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = 'high'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.finishing = 1 ORDER BY T2.date - T1.birthday DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN League AS T2 ON T1.id = T2.country_id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Belgium'
SELECT T3.name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id INNER JOIN Country AS T3 ON T3.id = T2.country_id WHERE T1.vision > 89
SELECT T3.name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id INNER JOIN League AS T3 ON T3.country_id = T1.country_id GROUP BY T3.name ORDER BY SUM(T2.weight) DESC LIMIT 1
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlaySpeedClass = 'Slow'
SELECT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T2.chanceCreationPassingClass = 'Safe'
SELECT AVG(T1.height) FROM Player AS T1 INNER JOIN League AS T2 ON T1.player_api_id = T2.country_id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Italy'
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name
SELECT COUNT(player_name) FROM Player WHERE player_name LIKE 'Aaron%' AND birthday > '1990'
SELECT SUM(jumping) FROM Player_Attributes WHERE player_fifa_api_id = 6 OR player_fifa_api_id = 23
SELECT id FROM Player_Attributes WHERE preferred_foot = 'right' AND potential = ( SELECT MIN(potential) FROM Player_Attributes ) LIMIT 5
SELECT COUNT(player_api_id) FROM Player_Attributes WHERE preferred_foot = 'left' ORDER BY crossing DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN strength > 80 AND stamina > 80 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(player_api_id) FROM Player_Attributes
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Poland Ekstraklasa'
SELECT T1.home_team_goal, T1.away_team_goal FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Belgium Jupiler League' AND SUBSTR(T1.date, 1, 10) = '2008-09-24'
SELECT T1.sprint_speed, T1.agility, T1.acceleration FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Alexis Blin'
SELECT T2.buildUpPlaySpeedClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'KSV Cercle Brugge'
SELECT COUNT(T1.id) FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.home_team_api_id INNER JOIN League AS T3 ON T1.country_id = T3.id WHERE T2.season = '2015/2016' AND T3.name = 'Italian Serie A'
SELECT T1.home_team_goal FROM Match AS T1 INNER JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id INNER JOIN League AS T3 ON T2.team_long_name = T3.name WHERE T3.country_id = 5 ORDER BY T1.home_team_goal DESC LIMIT 1
SELECT T1.finishing, T1.curve FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.weight DESC LIMIT 1
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2015/2016' GROUP BY T2.name ORDER BY COUNT(T1.away_team_goal) DESC LIMIT 4
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.away_team_api_id ORDER BY T2.away_team_goal DESC LIMIT 1
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.overall_rating DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.height < 180 AND T1.height > 70 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id
SELECT CAST(SUM(CASE WHEN Admission = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Patient WHERE SEX = 'M'
SELECT CAST(SUM(CASE WHEN T1.SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Birthday LIKE '1931%'
SELECT CAST(SUM(CASE WHEN Admission = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Patient WHERE strftime('%Y', Birthday) BETWEEN '1930' AND '1940'
SELECT CAST(SUM(CASE WHEN T1.Admission = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T1.Admission = '-' THEN 1 ELSE 0 END) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE'
SELECT T1.Diagnosis, T2.`Date` FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 30609
SELECT T1.SEX, T1.Birthday, T2.`Examination Date`, T2.Symptoms FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 163109
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH > 500
SELECT T1.ID, STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T2.Birthday) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.RVVT = '+'
SELECT T1.ID, T1.SEX, T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Thrombosis = 2
SELECT T1.First FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO >= '250' AND T1.Birthday LIKE '%/%/1937'
SELECT T1.ID, T1.SEX, T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.ALB < 3.5
SELECT CAST(SUM(CASE WHEN T2.TP < '6.0' THEN 1 ELSE 0 END) + SUM(CASE WHEN T2.TP > '8.5' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F'
SELECT CAST(SUM(T2.aCL IgG) AS REAL) / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '+' AND T1.Birthday - SUBSTR(CAST(T1.First Date), 1, INSTR(T1.First Date, '+') - 1) > 50
SELECT COUNT(ID) FROM Patient WHERE STRFTIME('%Y', Description) = '1997' AND SEX = 'F' AND Admission = '- '
SELECT strftime('%Y', First Date) - strftime('%Y', Birthday) AS age FROM Patient ORDER BY strftime('%Y', First Date) - strftime('%Y', Birthday) DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Thrombosis = '1' AND T1.SEX = 'F' AND strftime('%Y', T2.Examination Date) = '1997'
SELECT MAX(T1.Birthday) - MIN(T1.Birthday) AS agegap FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG >= 200
SELECT T1.Symptoms, T2.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID ORDER BY T2.Birthday DESC LIMIT 1
SELECT CAST(COUNT(T2.ID) AS REAL) / 12 FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.Date BETWEEN '1998-01-01' AND '1998-12-31'
SELECT (strftime('%Y', `First Date`) - strftime('%Y', Birthday)) AS age , `First Date` FROM Patient WHERE Diagnosis = 'SJS'
SELECT CAST(SUM(CASE WHEN T2.SEX = 'M' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T2.SEX = 'F' THEN 1 ELSE 0 END) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UA <= 8.0
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE strftime('%Y', T2.`Examination Date`) - strftime('%Y', T1.First Date) >= 1
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Birthday < 18 AND strftime('%Y', T2.`Examination Date`) BETWEEN '1990' AND '1993'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL >= '2.0' AND T1.SEX = 'M'
SELECT T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE strftime('%Y', T2.`Examination Date`) BETWEEN '1985' AND '1995' GROUP BY T2.Diagnosis ORDER BY COUNT(T2.Diagnosis) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN STRFTIME('%Y', T2.Birthday) - T2.Birthday > 1999 THEN 1 ELSE 0 END) AS REAL) / COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.Patient ID WHERE T2.Examination Date BETWEEN '1991-10-01' AND '1991-10-30'
SELECT T2.year(`Examination Date`), T2.Diagnosis - T2.Birthday FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID ORDER BY T1.HGB DESC LIMIT 1
SELECT T1.ANA FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 3605340 AND T1.`Examination Date` = '1996-12-02'
SELECT CASE WHEN T2.T-CHO < 250 THEN 'YES' ELSE 'NO' END FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 2927464 AND T2.Date = '1995-09-04'
SELECT DISTINCT T1.SEX FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'AORTITIS'
SELECT CASE WHEN T2.aCL IgM = 0 THEN 'Negative' ELSE 'Positive' END status FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Description = '1994-02-19' AND T1.SEX = 'M' AND T1.Birthday = '1993-11-12' AND T2.Diagnosis = 'SLE'
SELECT CASE WHEN ( SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date = '1992-06-12' AND T1.SEX = 'M' AND T2.GPT = '9' ) > ( SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date = '1992-06-12' AND T1.SEX = 'F' AND T2.GPT = '9' ) THEN 'M' ELSE 'F' END
SELECT 1991 - SUBSTR(T1.Birthday, 1, 4) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date = '1991-10-21' AND T2.UA = '8.4'
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.First Date = '1991-06-13' AND T1.Diagnosis = 'SJS' AND T2.Date = '1995-01-01'
SELECT T2.diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` = '1997-01-27' AND T2.SEX = 'M' AND T2.First Date = '1997-01-27'
SELECT T1.Symptoms FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday = '1959-03-01' AND T1.Examination Date = '1993-09-27'
SELECT SUM(CASE WHEN T2.`Date` LIKE '1981-11%' THEN `T-CHO` ELSE 0 END) - SUM(CASE WHEN T2.`Date` LIKE '1981-12%' THEN `T-CHO` ELSE 0 END) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = '1959-02-18'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'Behcet' AND SUBSTR(T1.Description, 1, 4) BETWEEN '197' AND '1997'
SELECT T2.ID FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T2.ID = T3.ID WHERE T3.GPT > 30 AND T3.ALB < 4 AND T1.`Examination Date` BETWEEN '1987-07-06' AND '1996-01-31'
SELECT COUNT(ID) FROM Patient WHERE SEX = 'F' AND YEAR(Birthday) = 1964 AND Admission = '+'
SELECT COUNT(T1.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.ANA = 'S' AND T1.ANA Pattern = 'only S' AND T1.Thrombosis = 2 AND T1.`aCL IgM` = 20 * ( SELECT AVG(`aCL IgM`) FROM Examination ) + 20 * ( SELECT AVG(`aCL IgM`) FROM Examination )
SELECT CAST(SUM(CASE WHEN T2.UA <= 6.5 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.U-PRO > 0 AND T2.U-PRO < 30
SELECT CAST(COUNT(CASE WHEN T2.DIAGNOSIS = 'BEHCET' THEN T2.ID ELSE NULL END) AS REAL) * 100 / COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND STRFTIME('%Y', T1.`FIRST DATE`) = '1981'
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date LIKE '1991-10%' AND T1.Admission = '- AND T2.T-BIL < 2.0'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.ANA Pattern = 'ANA Pattern' AND T1.SEX = 'F' AND T1.BIRTHDAY BETWEEN 1980 AND 1989
SELECT T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T3.Diagnosis = 'PSS' AND T2.CRE = 1 AND T2.CRP > 2 AND T2.LDH = 123
SELECT CAST(SUM(T2.ALB) AS REAL) / COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.PLT > 400 AND T1.SEX = 'F' AND T1.Diagnosis = 'SLE'
SELECT T2.Symptoms FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' GROUP BY T2.Symptoms ORDER BY COUNT(T2.Symptoms) DESC LIMIT 1
SELECT T1.First Date, T1.Description FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 48473
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.Diagnosis = 'APS'
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE STRFTIME('%Y', T2.Date) = '1997' AND T2.TP < 6 AND T2.TP > 8.5
SELECT CAST(SUM(CASE WHEN T1.Diagnosis LIKE '%ITP%' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T1.Diagnosis LIKE '%SLE%' THEN 1 ELSE 0 END) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID
SELECT CAST(SUM(CASE WHEN T2.SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.SEX) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'RA' AND STRFTIME('%Y', T1.Birthday) = '1980'
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.`Examination Date` BETWEEN '1995' AND '1997' AND T1.Admission = '-' AND T2.Diagnosis = 'Behcet'
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.WBC < 3.5 AND T1.SEX = 'F'
SELECT strftime('%J', T2.`Examination Date`) - strftime('%J', T2.`First Date`) AS time FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 821298
SELECT CASE WHEN ( SELECT CASE WHEN T1.UA > 8.0 THEN 'YES' ELSE 'NO' END AS T1 WHEN T1.UA > 6.5 THEN 'YES' ELSE 'NO' END END > 0 THEN 'YES' ELSE 'NO' END FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 57266
SELECT T2.`Examination Date` FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 48473 AND T2.GOT > 60
SELECT T2.SEX, T2.Birthday FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Date LIKE '1994%' AND T2.SEX = 'M' AND T1.GOT < 60
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.GPT >= 60
SELECT T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.GPT > 60 ORDER BY T1.Birthday DESC
SELECT CAST(SUM(IIF(LDH < 500, 1, 0)) AS REAL) / COUNT(ID) FROM Patient
SELECT T1.ID, T1.First Date - T1.Birthday AS age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH BETWEEN 600 AND 800
SELECT CASE WHEN SUM(CASE WHEN Admission = '+' THEN 1 ELSE 0 END) > 0 THEN 'inpatient' ELSE 'outpatient' END FROM Patient WHERE Diagnosis = 'ALKALIPHATE'
SELECT T1.ID, T2.AlP FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = '1982-04-01' AND T2.AlP < 300
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TP < 6.0
SELECT T1.ID - T2.TP AS deviation FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.TP > 8.5
SELECT CASE WHEN T2.ALB <= 3.5 OR T2.ALB >= 5.5 THEN 'ALB' END AS ALB FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M'
SELECT CASE WHEN T2.ALB > 5.5 OR T2.ALB < 3.5 THEN 'ALB is within normal range' ELSE 'ALB is not within normal range' END FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = '1982'
SELECT CAST(SUM(CASE WHEN T1.UA > 6.5 AND T2.SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID
SELECT CAST(SUM(T2.UA) AS REAL) / COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' OR T1.SEX = 'F' AND T2.UA < 6.5 AND T2.UA < 8.0
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UN = 29
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RA = 'RA' AND T2.UN < 30
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE >= 1.5 AND T1.SEX = 'M'
SELECT SUM(CASE WHEN T1.SEX = 'M' THEN 1 ELSE 0 END) - SUM(CASE WHEN T1.SEX = 'F' THEN 1 ELSE 0 END) AS num FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE > 1.5
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID ORDER BY T2.T-BIL DESC LIMIT 1
SELECT DISTINCT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL > 2.0
SELECT T1.ID, T2.T-CHO FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID ORDER BY T2.T-CHO DESC LIMIT 1
SELECT SUM(CAST(YEAR(NOW()) - YEAR(birthday)) AS REAL) / COUNT(T1.ID) AS avg FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.T-CHO >= 250
SELECT T1.ID, T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.TG > 300
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG > 200 AND SUBSTR(T1.Birthday, 1, 4) - SUBSTR(T1.Birthday, 1, 4) > 50
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '-1' AND T2.CPK < 250
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CPK > 250 AND T1.Birthday LIKE '1936%' OR T1.Birthday LIKE '1940%' OR T1.Birthday LIKE '1944%' OR T1.Birthday LIKE '1948%' OR T1.Birthday LIKE '1952%' OR T1.Birthday LIKE '1956%'
SELECT T1.ID, T1.SEX, T1.Birthday , SUBSTR(T1.Birthday, 1, 4) - SUBSTR(T1.Birthday, 6, 2) AS age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU > 180 AND T2.T-CHO < 250
SELECT T1.ID, T2.GLU FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE STRFTIME('%Y', T1.Description) = '1991' AND T2.GLU < 180
SELECT T1.ID, T1.SEX, T1.Birthday, CASE WHEN T2.WBC > 9 THEN T2.WBC ELSE 3.5 END AS WBC FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.WBC > 9 OR T2.WBC < 3.5 GROUP BY T1.ID, T1.SEX, T1.Birthday
SELECT T1.Diagnosis, T2.ID, TIMESTAMPDIFF(YEAR, T2.Birthday, CURRENT_TIMESTAMP) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.RBC < 3.5
SELECT DISTINCT CASE WHEN T2.RBC <= 3.5 OR T2.RBC >= 6 THEN '+' ELSE '-' END AS RESULT , CASE WHEN T2.RBC <= 3.5 OR T2.RBC >= 6 THEN 'Admitted' ELSE 'Not Admitted' END AS RESULT FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND SUBSTR(T1.Birthday, 1, 4) - SUBSTR(T2.Date, 1, 4) >= 50
SELECT DISTINCT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '- ' AND T2.HGB < 10
SELECT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'SLE' AND T1.HGB > 10 AND T1.HGB < 17
SELECT T1.ID, T1.Birthday + 365 * (12 - STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday)) AS age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID GROUP BY T1.ID, T1.Birthday + 365 * (12 - STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday)) HCT > 52 HCT < 100 AND COUNT(ID) > 2
SELECT AVG(HCT) FROM Laboratory WHERE `Examination Date` LIKE '1991%' AND HCT < 29
SELECT SUM(CASE WHEN T1.PLT < 100 THEN 1 ELSE 0 END) - SUM(CASE WHEN T1.PLT > 400 THEN 1 ELSE 0 END) AS DIFF FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID
SELECT T2.First, T2.SEX, T2.Birthday, T1.PLT FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.YEAR(Date) = '1984' AND T2.SEX = 'F' AND T2.Birthday < 1984 + 50 AND T1.PLT BETWEEN 100 AND 400
SELECT CAST(SUM(CASE WHEN T2.SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.SEX) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.PT > 14 AND (T1.Birthday + (strftime('%Y', now()) - strftime('%Y', T1.Birthday)) ) > 55
SELECT DISTINCT T1.First Date FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.PT < 14 AND SUBSTR(T1.First Date, 1, 4) > '1992'
SELECT COUNT(T2.APTT) FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` > '1997-01-01' AND T2.APTT < 45
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.APTT > 45 AND T1.Thrombosis = 0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.WBC BETWEEN 3.5 AND 9 AND T2.FG <= 150 OR T2.FG >= 450
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday > '1980-01-01' AND T2.FG < 150 OR T2.FG > 450
SELECT DISTINCT T1.Diagnosis FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.U-PRO >= 30
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.U-PRO > 0 AND T2.U-PRO < 30 AND T1.Diagnosis = 'SLE'
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= 2000
SELECT COUNT(T1.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.IGg BETWEEN 900 AND 2000 AND T1.Symptoms IS NOT NULL
SELECT T1.Diagnosis FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGA >= 80 AND T2.IGA <= 500 ORDER BY T2.IGA DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGA BETWEEN 80 AND 500 AND STRFTIME('%Y', T1.First Date) >= 1990
SELECT T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.IGM <= 40 OR T2.IGM >= 400 GROUP BY T2.Diagnosis ORDER BY COUNT(T2.Diagnosis) DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRP = '+' AND T1.Description IS NULL
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE >= 1.5 AND (SUBSTR(CAST(T1.Birthday AS TEXT), 1, INSTR(T1.Birthday, ' ') - 1) - SUBSTR(CAST(CAST(CURDATE AS TEXT) AS TEXT), 1, INSTR(CAST(CURDATE AS TEXT) AS TEXT) - 1)) < 70
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RA BETWEEN '-.' AND '+.' AND T2.KCT = '+'
SELECT DISTINCT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RA BETWEEN '-1' AND '+1' AND STRFTIME('%Y', T1.Birthday) >= '1985'
SELECT T1.ID, SUBSTR(T1.Birthday, 1, 4) AS year FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RF < 20 AND SUBSTR(T1.Birthday, 1, 4) - SUBSTR(T2.Date, 1, 4) > 60
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.RF < 20 AND T3.Thrombosis = '0'
SELECT COUNT(DISTINCT T1.ID) FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.C3 > 35 AND T1.ANA Pattern = 'P'
SELECT T1.ID FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.aCL IgA = ( SELECT MAX(aCL IgA) FROM Examination WHERE Diagnosis != 'Normal' )
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'Blood Clots in veins' AND T2.C4 > 10
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RNP = '+' OR T2.RNP = '0' AND T1.Admission = '+'
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RNP NOT IN ('-', '+') ORDER BY T1.Birthday DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SM = 'negative' AND T2.SM IS NOT NULL AND T1.Admission = 1 AND T1.SEX = 1 AND T1.Description = 'No' AND T2.Thrombosis = 0
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SM NOT IN ('negative', '0') ORDER BY T1.Birthday DESC LIMIT 3
SELECT T2.ID FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` > '1997-01-01' AND T2.SCG170 IN ('negative', '0')
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SC170 IN ('negative', '0') AND T1.SEX = 'F' AND T2.Symptoms IS NULL
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SSA IN ('+', '-') AND STRFTIME('%Y', T1.First Date) < '2000'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SSA NOT IN ('negative', '0') ORDER BY T1.First Date LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' AND T2.SSB = '0' AND T1.aCL IgG IS NOT NULL AND T1.aCL IgM IS NOT NULL AND T1.aCL IgA IS NOT NULL AND T1.aCL IgA IS NOT NULL AND T1.aCL IgM IS NOT NULL AND T1.aCL IgG IS NOT NULL
SELECT COUNT(DISTINCT CASE WHEN T1.SSB IN ('negative', '0') THEN T2.ID END) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.LAB ID WHERE T2.Symptoms IS NOT NULL
SELECT COUNT(ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CENTROMEA IN ('-', '+') AND T2.SSB IN ('-', '+') AND T1.SEX = 'M'
SELECT DISTINCT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.LABORATORY INNER JOIN Patient AS T3 ON T2.ID = T3.ID WHERE T1.DNA > 8
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.DNA < 8 AND T1.Description IS NULL
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG > 900 AND T2.IGG < 2000 AND T1.Admission = '+'
SELECT CAST(SUM(CASE WHEN T2.GOT >= 60 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE'
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT < 60 AND T1.SEX = 'M'
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT >= 60 ORDER BY T1.Birthday ASC LIMIT 1
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT < 60 ORDER BY T2.GPT DESC LIMIT 3
SELECT COUNT(ID) FROM Patient WHERE Diagnosis = 'Normal glutamic pylvic transaminase' AND Sex = 'M'
SELECT T1.First Date FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH < 500 ORDER BY T2.LDH DESC LIMIT 1
SELECT T1.First Date FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH >= 500 ORDER BY T1.First Date DESC LIMIT 1
SELECT COUNT(ID) FROM Patient WHERE Admission = '+' AND ALP >= 300
{"sql": "SELECT COUNT(ID) FROM Patient WHERE Admission = '- ' AND CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '') AS REAL) * 100000 - CAST(REPLACE(SUBSTR(T2.DATE, 1, 2), ',', '')
SELECT DISTINCT T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T3.TP < 6.0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.TP BETWEEN 6 AND 8.5 AND T3.Diagnosis = 'SJS'
SELECT T1.`Examination Date` FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T2.ID = T3.ID WHERE T3.ALB > 3.5 AND T3.ALB < 5.5
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.ALB BETWEEN 3.5 AND 5.5 AND T2.TP BETWEEN 6.0 AND 8.5
SELECT T2.aCL IgG FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T1.Description = 'Female patient with the highest uric acid level in the normal range' AND T1.UA > 6.50
SELECT T1.ANA FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T2.ID = T3.ID WHERE T3.CRE < 1.5 ORDER BY T1.ANA DESC LIMIT 1
SELECT T1.ID FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE < 1.5 ORDER BY T2.aCL IgA DESC LIMIT 1
SELECT COUNT(T2.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T2.ID = T3.ID WHERE T3.T-BIL > 2.0 AND T1.ANA Pattern LIKE 'P'
SELECT T1.ANA FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL < 2.0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO > 250 AND T2.KCT = '-'
SELECT COUNT(T2.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO < 250 AND T1.ANA Pattern = 'P'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG < 200 AND T1.Symptoms IS NOT NULL
SELECT T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.TG < 200 ORDER BY T1.TG DESC LIMIT 1
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.CPK < 250 AND T3.Thrombosis = 0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.KCT = '+' OR T2.RVVT = '+' OR T2.LAC = '+' AND T1.CPK < 250
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU > 180 ORDER BY T1.Birthday LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.GLU < 180 AND T2.Thrombosis = 0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '+' AND T2.WBC BETWEEN 3.5 AND 9.0
SELECT COUNT(T2.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' AND T2.WBC BETWEEN 3.5 AND 9.0
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '-' AND T2.RBC BETWEEN 3.5 AND 6.0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis IS NOT NULL AND T1.PLT BETWEEN 100 AND 400
SELECT T1.ID, T1.PLT FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'MCTD' AND T1.PLT > 100 AND T1.PLT < 400
SELECT AVG(T2.PT) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.PT < 14
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'Thrombosis' AND T1.PT < 14
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'ANGELA' AND T1.last_name = 'SANDS'
SELECT COUNT(T2.member_id) FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'College of Engineering'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T2.department = 'Art and Design'
SELECT COUNT(T2.member_id) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Women''s Soccer'
SELECT T1.phone FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Women''s Soccer'
SELECT COUNT(T1.member_id) FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id INNER JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T2.event_name = 'Women''s Soccer' AND T3.t_shirt_size = 'Medium'
SELECT T2.event_name FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T2.event_name ORDER BY COUNT(T1.link_to_event) DESC LIMIT 1
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.position = 'Vice President'
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = 'Maya' AND T3.last_name = 'Mclean'
SELECT COUNT(T2.event_id) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison' AND STRFTIME('%Y', T3.event_date) = '2019'
SELECT COUNT(T2.member_id) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.type = 'Meeting' AND T2.member_id > 10
SELECT T2.event_name FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name <> '' GROUP BY T2.event_name HAVING COUNT(T1.link_to_member) > 20
SELECT CAST(COUNT(DISTINCT T1.event_name) AS REAL) / COUNT(DISTINCT T1.event_id) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.type = 'Meeting' AND STRFTIME('%Y', T1.event_date) = '2020'
SELECT T2.cost FROM event AS T1 INNER JOIN expense AS T2 ON T2.link_to_member = T1.event_id WHERE T1.type = 'Club' ORDER BY T2.cost DESC LIMIT 1
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T2.major_name = 'Environmental Engineering'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.event_name = 'Laugh Out Loud'
SELECT T1.last_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T2.major_name = 'Law and Constitutional Studies'
SELECT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip WHERE T1.first_name = 'Sherri' AND T1.last_name = 'Ramsey'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Tyler' AND T1.last_name = 'Hewitt'
SELECT T1.amount FROM budget AS T1 INNER JOIN member AS T2 ON T1.link_to_event = T2.link_to_member WHERE T2.position = 'Vice President'
SELECT T1.amount FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Food' AND T2.event_name = 'September Meeting'
SELECT T2.city, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip WHERE T1.position = 'President'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'IL'
SELECT T2.spent FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Meeting' AND T2.category = 'Advertisement'
SELECT T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.first_name = 'Pierce' AND T1.last_name = 'Guidi'
SELECT SUM(T2.amount) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Speaker'
SELECT T1.approved FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id WHERE T2.event_name = 'October Meeting' AND T2.event_date = '2019-10-08'
SELECT SUM(T2.cost) / 2 FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Elijah' AND T1.last_name = 'Allen' AND T2.expense_date LIKE '9/%' OR T2.expense_date LIKE '10/%'
SELECT SUM(CASE WHEN STRFTIME('%Y', T2.event_date) = '2019' THEN T1.spent ELSE 0 END) - SUM(CASE WHEN STRFTIME('%Y', T2.event_date) = '2020' THEN T1.spent ELSE 0 END) AS diff FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT location FROM event WHERE event_name = 'Spring Budget Review'
SELECT T2.cost FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date = '2019-09-04' AND T1.type = 'Poster'
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT notes FROM income WHERE source = 'Fundraising' AND date_received = '2019-09-14'
SELECT COUNT(*) FROM major WHERE department = 'College of Humanities and Social Sciences'
SELECT phone FROM member WHERE first_name = 'Carlo' AND last_name = 'Jacobs'
SELECT DISTINCT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Adela' AND T1.last_name = 'O''Gallagher'
SELECT SUM(CASE WHEN T2.remaining < 0 THEN 1 ELSE 0 END) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'November Meeting'
SELECT SUM(T2.amount) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Speaker'
SELECT T2.event_status FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Post Cards, Posters' AND T1.expense_date = '2019-08-20'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Brent' AND T1.last_name = 'Thomason'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Business' AND T1.t_shirt_size = 'Medium'
SELECT T2.zip_code FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Christof' AND T1.last_name = 'Neilson'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.position = 'Vice President'
SELECT T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.position = 'President'
SELECT T2.date_received FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'CONNOR' AND T1.last_name = 'HILBERT'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.source = 'Dues' ORDER BY T2.date_received LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.event_name = 'Yearly Kickoff' THEN T1.amount ELSE 0 END) - SUM(CASE WHEN T2.event_name = 'October Meeting' THEN T1.amount ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T2.event_name = 'October Meeting' THEN T1.amount ELSE 0 END) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT CAST(SUM(CASE WHEN T2.event_name = 'November Speaker' THEN T1.amount ELSE 0 END) AS REAL) * 100 / SUM(T1.amount) FROM budget AS T1 INNER JOIN event AS T2 ON T2.event_id = T1.link_to_event
SELECT SUM(cost) FROM expense WHERE expense_description = 'Pizza'
SELECT COUNT(city) FROM zip_code WHERE county = 'Orange County' AND state = 'VA'
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT T2.city, T2.county, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip WHERE T1.first_name = 'amy' AND T1.last_name = 'firth'
SELECT T2.expense_description FROM budget AS T1 INNER JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget ORDER BY T1.remaining LIMIT 1
SELECT T2.first_name, T2.last_name FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'October Meeting'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id GROUP BY T2.college ORDER BY COUNT(T2.college) DESC LIMIT 1
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.phone = '809-555-3360'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.amount = ( SELECT MAX(amount) FROM budget )
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.position = 'Vice President'
SELECT COUNT(T2.member_id) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Women''s Soccer'
SELECT T2.date_received FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Casey' AND T1.last_name = 'Mason'
SELECT COUNT(T2.zip) FROM zip_code AS T1 INNER JOIN member AS T2 ON T1.zip = T2.zip WHERE T1.state = 'MD'
SELECT COUNT(T2.event_id) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T1.phone = '954-555-6240'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN major AS T2 ON T1.member_id = T2.link_to_major WHERE T2.department = 'School of Applied Sciences, Technology and Education'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'Closed' ORDER BY T2.spent / T2.amount DESC LIMIT 1
SELECT COUNT(position) FROM member WHERE position = 'President'
SELECT MAX(spent) FROM budget
SELECT COUNT(event_id) FROM event WHERE STRFTIME('%Y', event_date) = '2020' AND type = 'Meeting'
SELECT SUM(spent) FROM budget WHERE category = 'Food'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.first_name, T1.last_name HAVING COUNT(T2.link_to_event) > 7
SELECT T3.first_name, T3.last_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major INNER JOIN attendance AS T3 ON T2.member_id = T3.link_to_member INNER EVENT AS T4 ON T3.link_to_event = T4.event_id WHERE T4.event_name = 'Community Theater' AND T1.major_name = 'Interior Design'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.city = 'Georgetown' AND T2.state = 'SC'
SELECT SUM(T2.amount) FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Grant' AND T1.last_name = 'Gilmour'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT SUM(T3.cost) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event INNER JOIN expense AS T3 ON T2.link_to_budget = T3.link_to_member WHERE T1.event_name = 'Yearly Kickoff'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.event_name = 'Yearly Kickoff'
SELECT T1.first_name, T1.last_name, T2.source FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.amount DESC LIMIT 1
SELECT T2.event_name FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.cost = ( SELECT MIN(cost) FROM expense )
SELECT CAST(SUM(CASE WHEN T2.event_name = 'Yearly Kickoff' THEN T1.cost ELSE 0 END) AS REAL) * 100 / SUM(T1.cost) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id
SELECT CAST(SUM(CASE WHEN T2.major_name = 'Finance' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T2.major_name = 'Physics' THEN 1 ELSE 0 END) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id
SELECT source FROM income WHERE date_received LIKE '2019-09%' ORDER BY amount DESC LIMIT 1
SELECT first_name, last_name, email FROM member WHERE position = 'Secretary'
SELECT COUNT(T2.member_id) FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Physics Teaching'
SELECT COUNT(T2.member_id) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Community Theater' AND STRFTIME('%Y', T1.event_date) = '2019'
SELECT COUNT(T1.member_id) FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN major AS T3 ON T2.link_to_major = T3.major_id WHERE T2.first_name = 'Luisa' AND T2.last_name = 'Guidi'
SELECT AVG(CAST(REPLACE(SUBSTR(spent, 4), ',', '') AS REAL)) FROM budget WHERE event_status = 'Closed' AND category = 'Food'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Advertisement' ORDER BY T1.spent DESC LIMIT 1
SELECT T2.status FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id INNER JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = 'Maya' AND T3.last_name = 'McLean' AND T2.event_name = 'Women''s Soccer'
SELECT CAST(SUM(CASE WHEN type = 'Community Service' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(event_id) FROM event WHERE STRFTIME('%Y', event_date) = '2019'
SELECT T1.cost FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id WHERE T2.event_name = 'September Speaker' AND T1.expense_description = 'Posters'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY COUNT(t_shirt_size) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'Closed' AND T2.remaining < 0 ORDER BY T2.remaining LIMIT 1
SELECT T1.type, SUM(T2.cost) FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Meeting'
SELECT T1.amount, T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'April Speaker' ORDER BY T1.amount
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertisement' ORDER BY amount DESC LIMIT 3
SELECT SUM(T2.cost) FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Parking'
SELECT SUM(cost) FROM expense WHERE expense_date = '2019-08-20'
SELECT T1.first_name, T1.last_name, T2.cost FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.member_id = 'rec4BLdZHS2Blfp4v'
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.t_shirt_size = 'X-Large'
SELECT T1.zip_code FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost < 50
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Phillip' AND T1.last_name = 'Cullen'
SELECT T1.position FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Business'
SELECT COUNT(T2.member_id) FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.t_shirt_size = 'Medium' AND T1.major_name = 'Business'
SELECT DISTINCT T1.type FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT DISTINCT T2.category FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.location = 'MU 215'
SELECT T2.category FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date = '2020-03-24T12:00:00'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Vice President'
SELECT CAST(COUNT(CASE WHEN T2.major_name = 'Business' THEN T1.member_id ELSE NULL END) AS REAL) * 100 / COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id
SELECT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = 'MU 215'
SELECT COUNT(amount) FROM income WHERE amount = 50
SELECT COUNT(member_id) FROM member WHERE t_shirt_size = 'X-Large' AND position = 'Member'
SELECT COUNT(major_id) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences'
SELECT T2.last_name, T1.department, T1.college FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Environmental Engineering'
SELECT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T2.event_id = T1.link_to_event WHERE T2.location = 'MU 215' AND T2.type = 'Guest Speaker' AND T1.spent = 0
SELECT T2.city, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code INNER JOIN major AS T3 ON T1.member_id = T3.major_id WHERE T3.department = 'Electrical and Computer Engineering' AND T1.position = 'Member'
SELECT T1.event_name FROM event AS T1 INNER JOIN member AS T2 ON T1.event_id = T2.link_to_event WHERE T2.position = 'Vice President' AND T1.location = '900 E. Washington St.'
SELECT T1.last_name, T1.position FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.expense_date = '2019-09-10' AND T2.expense_description = 'Pizza'
SELECT T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T1.position = 'Member' AND T3.event_name = 'Women''s Soccer'
SELECT CAST(SUM(CASE WHEN T1.amount = 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.amount) FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = 'Medium'
SELECT DISTINCT T1.zip_code FROM zip_code AS T1 INNER JOIN member AS T2 ON T2.zip = T1.zip_code WHERE T1.type = 'PO Box'
SELECT DISTINCT zip_code FROM zip_code WHERE state = 'Puerto Rico' AND county = 'San Juan' AND type = 'PO Box'
SELECT event_name FROM event WHERE type = 'Game' AND status = 'Closed' AND event_date BETWEEN '2019-03-15' AND '2020-03-20'
SELECT T2.link_to_event FROM expense AS T1 INNER JOIN attendance AS T2 ON T1.link_to_member = T2.link_to_member WHERE T1.cost > 50
SELECT T1.first_name, T1.last_name, T2.link_to_event FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_date LIKE '2019-01%' AND T3.event_date LIKE '2019-11%' AND T2.link_to_member = 1000001
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Katy' AND T2.major_name = 'rec1N0upiVLy5esTO'
SELECT T1.phone FROM member AS T1 INNER JOIN link_to_major AS T2 ON T1.zip = T2.zip_code INNER JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T3.college = 'College of Agriculture and Applied Sciences' AND T3.major_name = 'Business'
SELECT DISTINCT T1.email FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost > 20 AND T2.expense_date BETWEEN '2019-09-10' AND '2019-11-19'
SELECT COUNT(T2.member_id) FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'College of Education & Human Services' AND T1.major_name = 'Education'
SELECT CAST(SUM(CASE WHEN remaining < 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(event_id) FROM budget
SELECT event_id, location, status FROM event WHERE event_date BETWEEN '2019-11-01' AND '2020-03-31'
SELECT T2.expense_description FROM budget AS T1 INNER JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.cost > 50
SELECT first_name, last_name FROM member WHERE t_shirt_size = 'XLarge'
SELECT CAST(SUM(CASE WHEN type = 'PO Box' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(zip_code) FROM zip_code
SELECT T2.event_name, T2.location FROM budget AS T1 INNER JOIN event AS T2 ON T2.event_id = T1.link_to_event WHERE T1.remaining > 0
SELECT T1.event_name, T1.event_date FROM event AS T1 INNER JOIN expense AS T2 ON T2.link_to_member = T1.event_id WHERE T2.cost BETWEEN 50 AND 100 AND T2.expense_description = 'Pizza'
SELECT T1.first_name, T1.last_name, T3.major_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member INNER JOIN major AS T3 ON T3.major_id = T1.zip WHERE T2.cost > 100
SELECT T2.city, T2.county FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN zip_code AS T3 ON T2.zip = T3.zip_code INNER JOIN event AS T4 ON T4.event_id = T2.link_to_event WHERE T1.amount > 40
SELECT T2.first_name, T2.last_name FROM ( SELECT T1.first_name, T1.last_name, SUM(T2.cost) FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.first_name, T1.last_name HAVING COUNT(T2.cost) > 1 ) T1 ORDER BY T1.cost DESC LIMIT 1
SELECT AVG(T3.cost) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN expense AS T3 ON T2.link_to_member = T3.link_to_member WHERE T1.position != 'Member'
SELECT T2.event_name FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id WHERE T1.cost * 1000000 < ( SELECT AVG(T1.cost) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id )
SELECT CAST(SUM(CASE WHEN type = 'Meeting' THEN cost ELSE 0 END) AS REAL) * 100 / COUNT(event_id) FROM expense WHERE link_to_member IN ( SELECT event_id FROM event WHERE type = 'Meeting' )
SELECT T2.amount FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Water, chips, cookies' ORDER BY T1.cost DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.cost DESC LIMIT 5
SELECT T2.first_name, T2.last_name, T2.phone FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.cost > ( SELECT AVG(cost) FROM expense )
SELECT CAST(SUM(IIF(T2.state = 'New Jersey', 1, 0)) AS REAL) * 100 / COUNT(T2.state) - CAST(SUM(IIF(T2.state = 'Vermont', 1, 0)) AS REAL) * 100 / COUNT(T2.state) FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code
SELECT T2.major_name, T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Gerke'
SELECT T2.first_name, T2.last_name, T1.cost FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_description = 'Water, Veggie tray, supplies'
SELECT T1.last_name, T1.phone FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.department WHERE T2.major_name = 'Elementary Education'
SELECT T1.category, T1.amount FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Food'
SELECT T2.first_name, T2.last_name, T1.amount FROM income AS T1 INNER JOIN member AS T2 ON T2.member_id = T1.link_to_member WHERE T1.date_received = '9/9/2019'
SELECT T1.category FROM budget AS T1 INNER JOIN expense AS T2 ON T2.link_to_budget = T1.budget_id WHERE T2.expense_description = 'Posters'
SELECT T1.first_name, T1.last_name, T3.college FROM member AS T1 INNER JOIN link_to_major AS T2 ON T1.zip = T2.zip_code INNER JOIN major AS T3 ON T2.major_id = T3.major_id WHERE T1.position = 'Secretary'
SELECT SUM(T2.spent), T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Speaker Gifts' GROUP BY T1.event_name
SELECT T2.city FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Gerke'
SELECT T1.first_name, T1.last_name, T1.position FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.city = 'Lincolnton' AND T2.state = 'North Carolina' AND T2.zip_code = 28092
SELECT COUNT(GasStationID) FROM gasstations WHERE Country = 'CZE' AND Segment = 'Premium'
SELECT CAST(SUM(CASE WHEN Currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN Currency = 'CZK' THEN 1 ELSE 0 END) FROM customers
SELECT T1.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE STRFTIME('%Y', T1.Date) >= '2012' AND STRFTIME('%m', T1.Date) <= '12' ORDER BY T1.Consumption ASC LIMIT 1
SELECT AVG(T1.Consumption) / 12 FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND STRFTIME('%Y', T1.Date) = '2013'
SELECT T1.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date BETWEEN '2011-01' AND '2011-12' AND T2.Currency = 'CZK' ORDER BY T1.Consumption DESC LIMIT 1
SELECT COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date BETWEEN '2012-01' AND '2012-12' AND T1.Consumption < 30000
SELECT SUM(CASE WHEN T2.Currency = 'CZK' THEN T1.Consumption ELSE 0 END) - SUM(CASE WHEN T2.Currency = 'EUR' THEN T1.Consumption ELSE 0 END) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date BETWEEN '2012-01' AND '2012-12'
SELECT `Date` FROM yearmonth WHERE `Date` LIKE '%/%/Y' GROUP BY `Date` ORDER BY COUNT(`Date`) DESC LIMIT 1
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Consumption IS NOT NULL GROUP BY T1.Segment ORDER BY SUM(T2.Consumption) ASC LIMIT 1
SELECT strftime('%Y', `Date`) FROM yearmonth GROUP BY strftime('%Y', `Date`) ORDER BY COUNT(`Date`) DESC LIMIT 1
SELECT T2.`Month` FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND T1.Date BETWEEN '2013-01' AND '2013-12' GROUP BY T2.`Month` ORDER BY COUNT(T2.`Month`) DESC LIMIT 1
SELECT (CAST(SUM(CASE WHEN T1.Segment = 'SME' THEN T2.Consumption END) - SUM(CASE WHEN T1.Segment = 'LAM' THEN T2.Consumption END) AS REAL) / COUNT(T2.CustomerID) ) - (CAST(SUM(CASE WHEN T1.Segment = 'LAM' THEN T2.Consumption END) - SUM(CASE WHEN T1.Segment = 'KAM' THEN T2.Consumption END) AS REAL) / COUNT(T2.CustomerID) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'CZK' AND T1.Segment IN ('SME', 'LAM', 'KAM') AND STRFTIME('%Y', T2.Date) = '2013' GROUP BY T1.Segment ORDER BY SUM(T2.Consumption) / COUNT(T2.CustomerID) LIMIT 1
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'EUR' AND T2.Date LIKE '%2012%' AND T2.Date LIKE '%2013%' ORDER BY T2.Consumption FOR 2012 - T2.Consumption DESC LIMIT 1, 1
SELECT SUM(T1.Amount) FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T2.Date BETWEEN '2013-08' AND '2013-11' AND T2.CustomerID = 6
SELECT ( SELECT COUNT(DISTINCT GasStationID) FROM gasstations WHERE Country = 'CZE' AND Segment = 'DISC' ) - ( SELECT COUNT(DISTINCT GasStationID) FROM gasstations WHERE Country = 'SVK' AND Segment = 'DISC' ) AS DIFF
SELECT (SUM(CASE WHEN CustomerID = 7 THEN Consumption ELSE 0 END) - SUM(CASE WHEN CustomerID = 5 THEN Consumption ELSE 0 END)) * 100 / SUM(CASE WHEN CustomerID = 5 THEN Consumption ELSE 0 END) FROM yearmonth WHERE `Date` = '201304'
SELECT SUM(CASE WHEN T2.Currency = 'CZK' THEN 1 ELSE 0 END) - SUM(CASE WHEN T2.Currency = 'EUR' THEN 1 ELSE 0 END) AS diff FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID
SELECT T1.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '201310' AND T2.Currency = 'EUR' ORDER BY T1.Consumption DESC LIMIT 1
SELECT T1.CustomerID, SUM(T2.Amount) FROM yearmonth AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID WHERE T3.CompanyName = 'KAM' GROUP BY T1.CustomerID ORDER BY SUM(T2.Amount) DESC LIMIT 1
SELECT SUM(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.CustomerID = 101 AND T1.Date = '2013-05'
SELECT CAST(SUM(CASE WHEN T1.Consumption > 46.73 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'LAM'
SELECT T2.Country, COUNT(T2.GasStationID) FROM gasstations AS T1 INNER JOIN ( SELECT GasStationID FROM gasstations GROUP BY GasStationID ORDER BY CAST(SUM(Price) AS REAL) / SUM(Consumption) DESC LIMIT 1 ) AS T2 ON T1.GasStationID = T2.GasStationID
SELECT CAST(SUM(CASE WHEN T2.Currency = 'Euro' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID
SELECT CAST(SUM(CASE WHEN T1.Consumption > 528.3 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE '201202%'
SELECT CAST(SUM(CASE WHEN T2.Segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.GasStationID) FROM gasstations AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = 'Slovakia'
SELECT CustomerID FROM yearmonth WHERE `Date` LIKE '2013-09%' ORDER BY Consumption DESC LIMIT 1
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2013-09' GROUP BY T1.Segment ORDER BY COUNT(T1.Segment) ASC LIMIT 1
SELECT T1.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '201206' AND T2.Segment = 'SME' ORDER BY T1.Consumption ASC LIMIT 1
SELECT MAX(Consumption) FROM yearmonth WHERE `Date` LIKE '%/%/2012%'
SELECT SUM(T2.Consumption) / 12 FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'euro' ORDER BY SUM(T2.Consumption) / 12 DESC LIMIT 1
SELECT DISTINCT T1.Description FROM products AS T1 INNER JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID INNER JOIN yearmonth AS T3 ON T2.CustomerID = T3.CustomerID WHERE T3.Date = '2013-09'
SELECT DISTINCT T1.Country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN yearmonth AS T3 ON T2.Date = T3.Date WHERE T3.`YearMonth` = '201306'
SELECT T2.ChainID FROM gasstations AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN `transactions_1k` AS T3 ON T2.GasStationID = T3.GasStationID WHERE T3.Amount * T1.Currency = 1000000
SELECT T1.Description FROM products AS T1 INNER JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID WHERE T2.Amount * T1.Price IN ( SELECT Amount * Price FROM transactions_1k WHERE Currency = 'euro' )
SELECT AVG(T1.Amount * T1.Price) FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.Date = T2.Date WHERE T2.Date LIKE '2012-01%'
SELECT COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = 'EUR' AND T1.Consumption > 1000
SELECT DISTINCT T1.Description FROM products AS T1 INNER JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID INNER JOIN gasstations AS T3 ON T2.GasStationID = T3.GasStationID WHERE T3.Country = 'CZE'
SELECT T1.`Time` FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ChainID = 11
SELECT COUNT(T1.TransactionID) FROM `transactions_1k` AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = 'CZE' AND T1.Price > 1000
SELECT COUNT(T1.TransactionID) FROM `transactions_1k` AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = 'CZE' AND T1.Date > '2012-01-01'
SELECT AVG(T2.Amount * T2.Price) FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T2.GasStationID = T1.GasStationID WHERE T1.Country = 'CZE'
SELECT AVG(T2.Amount * T2.Price) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'EUR'
SELECT T1.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-25' GROUP BY T1.CustomerID ORDER BY SUM(T1.Amount) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 INNER JOIN yearmonth AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = '2012-08-25' AND T2.CustomerID IN ( SELECT CustomerID FROM yearmonth WHERE `Date` = '2012-08-25' ) GROUP BY T1.Country ORDER BY COUNT(T1.GasStationID) ASC LIMIT 1
SELECT T1.Currency FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-24' AND T2.Time = '16:25:00'
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-23' AND T2.Time = '21:20:00'
SELECT COUNT(T1.TransactionID) FROM `transactions_1k` AS T1 INNER JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID INNER JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID WHERE T2.Date = '2012-08-26' AND T1.Time < '13:00:00' AND T3.Currency = 'CZK'
SELECT Segment FROM customers WHERE CustomerID = ( SELECT MIN(CustomerID) FROM customers )
SELECT DISTINCT T2.Country FROM yearmonth AS T1 INNER JOIN gasstations AS T2 ON T1.CustomerID = T2.GasStationID WHERE T1.Date = '2012-08-24' AND T1.Time = '12:42:00'
SELECT DISTINCT ProductID FROM transactions_1k WHERE `Date` = '2012-08-23' AND Time = '21:20:00'
SELECT T2.Date, T2.Consumption FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE '2012-01%' AND T1.Date <> '2012-01-01' AND T1.Date <> '2012-01-01' AND T2.CustomerID = 12405
SELECT COUNT(T1.TransactionID) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date = '2012-08-26' AND T1.Time BETWEEN '08:00:00' AND '09:00:00' AND T2.Country = 'CZE'
SELECT T2.Currency FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE '2013-06%' AND T1.Consumption = 214582.17
SELECT T1.Country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.CardID = 667467
SELECT T1.Country FROM gasstations AS T1 INNER JOIN yearmonth AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = '2012-08-24' AND T1.Segment = 'C' AND T1.Country = 'spain'
SELECT CAST(SUM(CASE WHEN T2.Currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-25'
SELECT (SUM(CASE WHEN `Date` = '2012-08-25' THEN 1 ELSE 0 END) - SUM(CASE WHEN `Date` = '2013-01-01' THEN 1 ELSE 0 END)) / SUM(CASE WHEN `Date` = '2012-08-25' THEN 1 ELSE 0 END) FROM yearmonth WHERE CustomerID = 101
SELECT T1.Description FROM products AS T1 INNER JOIN `transactions_1k` AS T2 ON T2.ProductID = T1.ProductID WHERE T2.GasStationID = 1 ORDER BY T2.Amount * T1.Price DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN Description = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM products WHERE Country = 'SVK'
SELECT SUM(T2.Amount) FROM yearmonth AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '201201' AND T1.CustomerID = 38508
SELECT DISTINCT T1.ProductID, T1.Description FROM products AS T1 INNER JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Description LIKE '%best selling%' ORDER BY T2.Amount * T2.Price DESC LIMIT 5
SELECT T1.CustomerID, SUM(T2.Price) / SUM(T2.Amount), T1.Currency FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN transactions_1k AS T3 ON T2.CustomerID = T3.CustomerID GROUP BY T1.CustomerID, T1.Currency ORDER BY SUM(T2.Price) / SUM(T2.Amount) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ProductID = 2 ORDER BY T2.Amount * T2.Price DESC LIMIT 1
SELECT DISTINCT T2.Consumption FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T1.ProductID = 5 AND T2.Date = '201208' AND T1.Amount * T1.Price > 29.00
