SELECT CAST(SUM(T2.FreeMealCount) AS REAL) / SUM(T2.Enrollment) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Alameda County' AND T1.School Type = 'K-12'
SELECT CAST(T1.Free Meal Count (Ages 5-17) AS REAL) / T1.Enrollment (Ages 5-17) AS rate FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.StatusType = 'Continuation' AND T1.Enrollment (Ages 5-17) > 0 AND T1.Free Meal Count (Ages 5-17) > 0 LIMIT 3
SELECT DISTINCT T2.Zip FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Fresenigo Office of Education' AND T1.Charter School (Y/N) = 1
SELECT T2.MailStreet FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.FRPM Count (K-12) DESC LIMIT 1
SELECT T1.Phone FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Charter School (Y/N) = 1 AND T1.OpenDate > '2000-01-01'
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.Virtual = 'F' AND T2.AvgScrMath > 400
SELECT T1.schools FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.Magnet = 1 AND T1.Enrollment (Ages 5-17) > 500
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr = 10000 ORDER BY T2.NumGE1500 DESC LIMIT 1
SELECT COUNT(T1.FreeMealCount) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FreeMealCount = ( SELECT MAX(FRPM Count (K-12)) FROM frpm )
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath > 560 AND T1.Charter = 'Y'
SELECT T2.FRPM COUNT(T1.Free Meal Count (Ages 5-17)) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T1.CDSCode = T3.cds WHERE T3.rtype = 'Reading' GROUP BY T1.CDSCode ORDER BY SUM(T3.AvgScrRead) DESC LIMIT 1
SELECT DISTINCT T1.CDSCode FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`Enrollment (K-12)` + T1.`Enrollment (Ages 5-17)` > 500
SELECT T2.FreeMealCount FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T1.CDSCode = T3.cds WHERE T3.rtype = 'Excellence' AND T2.FreeMealCount IS NOT NULL AND T2.FreeMealCount <> 0 AND T2.FreeMealCount / T2.Enrollment (Ages 5-17) > 0.3
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 / T2.NumTstTakr > ( SELECT CAST(SUM(NumGE1500) AS REAL) / SUM(NumTstTakr) FROM satscores ) ORDER BY T2.NumGE1500 / T2.NumTstTakr DESC LIMIT 3
SELECT T2.NCESDist, T2.NCESchool FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.Enrollment (Ages 5-17) DESC LIMIT 5
SELECT T2.dname FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.rtype = 'Read' GROUP BY T2.dname ORDER BY SUM(T1.AvgScrRead) DESC LIMIT 1
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr < 100 AND T1.County = 'Alameda'
SELECT T2.CDSCode, T1.CharterNum FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrWrite > 499
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Fresenigo' AND T2.FundingType = 'Directly funded' AND T2.FRPMPCount (K-12) < 250
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath = ( SELECT MAX(AvgScrMath) FROM satscores )
SELECT COUNT(*) FROM frpm WHERE County = 'Amador' AND Low Grade = 9 AND High Grade = 12
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Los Angeles' AND T2.Free Meal Count (K-12) < 500 AND T2.Free Meal Count (K-12) <= 700
SELECT T2.school FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode INNER JOIN frpm AS T3 ON T2.CDSCode = T3.CDSCode WHERE T2.County = 'Contra Costa' GROUP BY T2.school ORDER BY SUM(T1.NumTstTakr) DESC LIMIT 1
SELECT T1.Street, T1.StreetAbr FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.FRPM Count (K-12) - T2.Free Meal Count (Ages 5-17) > 30
SELECT T1.`School Name` FROM frpm AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.Percent (%) Eligible Free (K-12) > 0.1 AND T2.AvgScrMath >= 1500
SELECT DISTINCT T2.FundingType FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.AvgScrMath > 400 AND T1.AvgScrRead > 400
SELECT T1.Street, T1.City, T1.Zip FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = 'CA' AND T2.Free Meal Count (Ages 5-17) > 800
SELECT T1.AvgScrWrite, T1.Phone FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.OpenDate > 1991 AND T2.ClosedDate < 2000
SELECT T2.school, T2.DOCTYPE FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Enrollment (K-12) - T1.Enrollment (Ages 5-17) > ( SELECT AVG(Enrollment (K-12)) - AVG(Enrollment (Ages 5-17)) FROM frpm )
SELECT T1.OpenDate FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment (K-12) = 12 ORDER BY T1.OpenDate DESC LIMIT 1
SELECT T2.City FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T2.City ORDER BY SUM(T1.Enrollment (K-12)) LIMIT 5
SELECT CAST(T1.FreeMealCount (K-12) AS REAL) / T1.Enrollment (K-12) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode
SELECT T2.FreeMealRate FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.CDSCode = '66' ORDER BY T2.FreeMealRate DESC LIMIT 5
SELECT T1.Website FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Free Meal Count (Ages 5-17) BETWEEN 1900 AND 2000
SELECT CAST(SUBSTR(T2.Free Meal Count (Ages 5-17), 3, 2) AS REAL) / SUBSTR(T2.Enrollment (Ages 5-17), 3, 2) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.schoolsName = 'Kacey Gibson''s School'
SELECT T2.AdmEmail1 FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Charter School (Y/N) = 1 AND T1.Enrollment (K-12) IS NOT NULL ORDER BY T1.Enrollment (K-12) ASC LIMIT 1
SELECT T1.AdmFName1, T1.AdmLName1 FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 = 1500 LIMIT 1
SELECT T2.Street, T2.City, T2.Zip, T2.State FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.FRPM Count (K-12) / T2.NumTstTakr ASC LIMIT 1
SELECT T1.Website FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Los Angeles County' AND T2.FRPM Count (K-12) BETWEEN 2000 AND 3000
SELECT SUM(T1.NumTstTakr) / COUNT(T1.cds) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.OpenDate LIKE '1980%'
SELECT T1.Phone FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.District = 'Fresno Unified' ORDER BY T2.AvgScrRead ASC LIMIT 1
SELECT T1.school FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.Virtual = 'F' ORDER BY T2.AvgScrRead DESC LIMIT 5
SELECT T2.EdOpsName FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode GROUP BY T2.EdOpsCode, T2.EdOpsName ORDER BY AVG(T1.AvgScrMath) DESC LIMIT 1
SELECT AVG(T2.AvgScrMath), T1.County FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.cds = '001' GROUP BY T1.County ORDER BY AVG(T2.AvgScrMath) ASC LIMIT 1
SELECT T2.AvgScrWrite, T1.City FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 = ( SELECT MAX(NumGE1500) FROM satscores )
SELECT T1.CDSCode, T1.StatusType FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.AdmFName1 = 'Ricci' AND T1.AdmFName2 = 'Ulrich'
SELECT T2.State FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.DOC = 31 GROUP BY T2.State ORDER BY COUNT(T2.Enrollment (K-12)) DESC LIMIT 1
SELECT CAST(COUNT(CASE WHEN T2.OpenDate LIKE '1980-01-01' THEN 1 ELSE NULL END) AS REAL) * 100 / 12 FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.DOC = 52 AND T2.County = 'Alameda County'
SELECT SUM(CASE WHEN T1.DOCTYPE = 54 THEN 1 ELSE 0 END) / SUM(CASE WHEN T1.DOCTYPE = 52 THEN 1 ELSE 0 END) AS RATIO FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Orange County'
SELECT DISTINCT T2.County, T1.school_name, T1.ClosedDate FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.StatusType = 'Closed' GROUP BY T2.County, T1.school_name, T1.ClosedDate ORDER BY COUNT(T2.CDSCode) DESC LIMIT 1
SELECT T2.Street, T2.StreetAbr, T1.school_name FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T1.CDSCode = T3.cds WHERE T3.AvgScrMath = ( SELECT MAX(AvgScrMath) FROM satscores ) ORDER BY T3.AvgScrMath LIMIT 6
SELECT T1.Street, T2.schoolname FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T2.CDSCode = T3.cds WHERE T3.AvgScrRead = ( SELECT MAX(AvgScrRead) FROM satscores )
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.MailCity = 'Lakeport' AND T2.AvgScrRead + T2.AvgScrMath + T2.AvgScrWrite >= 1500
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.MailCity = 'Fresno'
SELECT T1.Zip FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.AdmFName1 = 'Avetik Atoian'
SELECT CAST(SUM(CASE WHEN T2.County = 'Colusa' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T2.County = 'Humboldt' THEN 1 ELSE 0 END) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailState = 'CA'
SELECT COUNT(T2.MailCity) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailState = 'CA' AND T1.MailCity = 'San Joaquin'
SELECT T1.Phone, T1.Ext FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrWrite = ( SELECT MAX(AvgScrWrite) FROM satscores ) ORDER BY T2.AvgScrWrite LIMIT 333
SELECT T1.Phone, T1.Ext, T2.Name FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Zip = 95203 AND T2.Educational Option Type = 'HS'
SELECT DISTINCT T1.Wbsite FROM schools AS T1 INNER JOIN ( SELECT AdmFName1, AdmLName1, AdmFName2, AdmLName2, AdmFName3, AdmLName3 FROM schools WHERE AdmFName1 = 'Mike Larson' OR AdmFName2 = 'Mike Larson' OR AdmFName3 = 'Mike Larson' ) AS T2 ON T1.AdmFName1 = T2.AdmFName1 INNER JOIN ( SELECT AdmFName1, AdmLName1, AdmFName2, AdmLName2, AdmFName3, AdmLName3 FROM schools WHERE AdmFName1 = 'Dante Alvarez' OR AdmFName2 = 'Dante Alvarez' OR AdmFName3 = 'Dante Alvarez' ) AS T3 ON T1.AdmFName2 = T3.AdmFName1 INNER JOIN ( SELECT AdmFName1, AdmLName1, AdmFName2, AdmLName2, AdmFName3, AdmLName3 FROM schools WHERE AdmFName1 = 'Mike Larson' OR AdmFName2 = 'Mike Larson' OR AdmFName3 = 'Mike Larson' ) AS T4 ON T1.AdmFName2 = T4.AdmFName1 INNER JOIN ( SELECT AdmFName1, AdmLName1, AdmFName2, AdmLName2, AdmFName3, AdmLName3 FROM schools WHERE AdmFName1 = 'Dante Alvarez' OR AdmFName2 = 'Dante Alvarez' OR AdmFName3 = 'Dante Alvarez' ) AS T5 ON T1.AdmFName3 = T5.AdmFName1
SELECT T2.website FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Virtual = 'P' AND T1.Charter = 'Y' AND T1.County = 'San Joaquin'
SELECT COUNT(T1.City) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.City = 'Hickman' AND T1.DOC = 52 AND T1.Charter = '1'
SELECT SUM(CASE WHEN FRPM Count (K-12) * 100 / Enrollment (K-12) < 0.18 THEN 1 ELSE 0 END) FROM frpm WHERE County = 'Los Angeles' AND Charter = 0
SELECT T1.AdmFName1, T1.AdmLName1, T1.City FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.CharterNum = 00D2 AND T1.Charter = 1
SELECT COUNT(T2.MailCity) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.CharterNum = 00D4 AND T1.MailCity = 'Hickman'
SELECT CAST(SUM(CASE WHEN FundingType = 'Loyalty' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(FundingType) FROM schools WHERE County = 'Santa Clara'
SELECT COUNT(DISTINCT T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FundingType = 'Directly Funded' AND T2.OpenDate BETWEEN '1/1/2000' AND '12/31/2005' AND T2.County = 'Stanislaus'
SELECT SUM(CASE WHEN T2.City = 'San Francisco' THEN T1.FRPM ELSE 0 END) AS total FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.ClosedDate LIKE '1989%' AND T2.District = 'Community College District'
{"sql": "SELECT DISTINCT T2.County FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.SOC = 11 AND T1.AdmFName1 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName1 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName2 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName2 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName3 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName3 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName4 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName4 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName5 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName5 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName6 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName6 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName7 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName7 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName8 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName8 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName9 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName9 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName10 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName10 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName11 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName11 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName12 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName12 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName13 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName13 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName14 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName14 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName15 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName15 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName16 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName16 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName17 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName17 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName18 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName18 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName19 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName19 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName20 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName20 = 'Youth Authority Facilities (CEA)' AND T1.SOC = 11 AND T1.AdmFName1 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName1 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName2 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName2 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName3 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName3 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName4 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName4 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName5 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName5 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName6 = 'Youth Authority Facilities (CEA)' AND T1.AdmLName6 = 'Youth Authority Facilities (CEA)' AND T1.AdmFName7 = 'Youth Authority Facilities
SELECT T2.NCESSchool FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.SOC = 31
SELECT COUNT(T2.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Alpine' AND T1.StatusType = 'Active' OR T1.StatusType = 'Closed'
SELECT T1.District Code FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.City = 'Fresno' AND T2.Magnet = 0
SELECT SUM(CASE WHEN T1.Advantage = 'Ages 5-17' AND T1.FreeMealCount = 100 THEN 1 ELSE 0 END) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Advantage = 'Ages 5-17' AND T1.FreeMealCount = 100 AND T2.EdOpsCode = 'SSS' AND T1.Academic Year = 2014 AND T1.FreeMealCount = 100
SELECT SUM(CASE WHEN T1.Free Meal Count (Ages 5-17) > 0 THEN 1 ELSE 0 END) AS freematch FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.MailStreet = 'PO Box 1040' AND T2.Street = '1040' AND T2.StreetAbr = '1040' AND T2.City = 'Wichegill' AND T2.State = 'FL'
SELECT T1.Low Grade FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.NCESDist = 613360 AND T2.EdOpsCode = 'SPECON'
SELECT T2.EdOpsName FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County Code = 37 AND T1.FRAMP = 2
SELECT T2.City FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Low Grade = 9 AND T1.High Grade = 12 AND T1.County = 'Merced' AND T1.EILCode = 'HS'
SELECT T2.Percent (%) Eligible FRPM (Ages 5-17), T2.Percent (%) Eligible Free (Ages 5-17) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Los Angeles County' AND T2.Free Meal Count (K-12) = 2013-14 CALPADS Fall 1 Certification Status
SELECT T2.GSoffered FROM schools AS T1 INNER JOIN ( SELECT GSoffered, COUNT(GSoffered) AS num FROM schools GROUP BY GSoffered ) AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.City = 'Adelanto' GROUP BY T2.GSoffered ORDER BY T2.num DESC LIMIT 1
SELECT SUM(CASE WHEN T2.Virtual = 'F' THEN 1 ELSE 0 END) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'San Diego' OR T2.County = 'Santa Barbara'
SELECT DISTINCT T2.school, T1.Latitude, T1.Latitude FROM schools AS T1 INNER JOIN ( SELECT school, latitude FROM schools ORDER BY latitude DESC LIMIT 1 ) AS T2 ON T1.Latitude = T2.latitude
SELECT T1.City, T1.Latitude, T1.Low Grade FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = 'CA' ORDER BY T1.Latitude LIMIT 1
SELECT GSoffered FROM schools ORDER BY ABS(Latitude) DESC LIMIT 1
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.NSLP Provision Status = 'Multiple Provision Types' AND T1.Magnet = 1 AND T1.GSoffered = 1
SELECT DISTINCT AdmFName1, AdmLName1, AdmFName2, AdmLName2, AdmFName3, AdmLName3 FROM schools WHERE AdmFName1 = ( SELECT AdmFName1 FROM schools GROUP BY AdmFName1 ORDER BY COUNT(AdmFName1) DESC LIMIT 1 )
SELECT T2.Percent (%) Eligible Free (K-12), T1.District Code FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = 'Alusine'
SELECT T2.LastUpdate, T2.AdmFName1, T2.AdmLName1, T2.AdmFName2, T2.AdmLName2, T2.AdmFName3, T2.AdmLName3 FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.CharterNum = 40
SELECT DISTINCT T2.AdmEmail1 FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.OpenDate LIKE '1/1/2009%' AND T1.County Name = 'San Bernardino County' AND T2.City = 'San Bernardino City Unified' AND T2.SOC = 62 AND T2.DOC = 54 AND T1.OpenDate BETWEEN '1/1/2009' AND '12/31/2010'
SELECT T2.AdmEmail1, T1.schools FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumTstTakr = ( SELECT MAX(NumTstTakr) FROM satscores ) AND T2.NumGE1500 = ( SELECT MAX(NumGE1500) FROM satscores )
SELECT COUNT(T1.account_id) FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A3 = 'East Bohemia' AND T1.type = 'issuance after transaction'
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A2 = 'Prague'
SELECT A13 - A12 FROM district WHERE A12 = 1995 AND A13 = 1996
SELECT COUNT(T1.district_id) FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' AND T1.A11 BETWEEN 6000 AND 10000
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'North Bohemia' AND T1.gender = 'M' AND T2.A11 > 8000
SELECT T1.account_id FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.gender = 'F' ORDER BY T1.A11 LIMIT 1
SELECT T1.account_id FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A11 = ( SELECT MAX(T2.A11) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id )
SELECT COUNT(T1.account_id) FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.gender = 'M' AND T1.type = 'Statement' AND T1.issued = 'Weekly'
SELECT DISTINCT T1.client_id FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'POPLATEK PO OBRATU'
SELECT DISTINCT T1.account_id, T1.amount FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'approved' AND STRFTIME('%Y', T1.`date`) = '1997' AND T2.district_id = 1
SELECT T1.account_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND T2.date LIKE '1993%' ORDER BY T1.amount DESC LIMIT 1
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T2.A2 = 'Sokolov' AND STRFTIME('%Y', T1.birth_date) < '1950'
SELECT DISTINCT account_id FROM account WHERE date LIKE '1995%'
SELECT DISTINCT T2.account_id FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.amount > 3000 AND T1.date < '1997-01-01'
SELECT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.disp_id = '940303'
SELECT T1.date FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount = 840 AND STRFTIME('%Y-%m-%d', T1.date) = '1998-10-14'
SELECT T2.district_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.`date` = '1994-08-25'
SELECT MAX(T1.amount) FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN disp AS T3 ON T2.account_id = T3.account_id WHERE STRFTIME('%Y-%m-%d', T1.date) = '1996-10-21'
SELECT T3.gender FROM district AS T1 INNER JOIN disp AS T2 ON T1.district_id = T2.district_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T1.A11 = ( SELECT MAX(T1.A11) FROM district AS T1 INNER JOIN disp AS T2 ON T1.district_id = T2.district_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id ) AND T1.A13 = ( SELECT MAX(T1.A13) FROM district AS T1 INNER JOIN disp AS T2 ON T1.district_id = T2.district_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id )
SELECT T3.amount FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.status = 'APPLY' ORDER BY T3.amount DESC LIMIT 1
SELECT COUNT(T3.gender) FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id INNER JOIN district AS T3 ON T3.district_id = T1.district_id WHERE T1.A2 = 'Jesenik' AND T2.gender = 'F'
SELECT T2.disp_id FROM disp AS T1 INNER JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'P' AND T1.amount = 5100 AND T1.date = '1998-09-02'
SELECT SUM(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Litomerice' AND STRFTIME('%Y', T1.`date`) = '1996'
SELECT T1.A2 FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' AND T2.birth_date = '1976-01-29'
SELECT T1.birth_date FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.amount = '98832' AND T2.`date` = '1996-01-03'
SELECT T1.account_id FROM disp AS T1 INNER JOIN district AS T2 ON T1.client_id = T2.district_id WHERE T2.A3 = 'Prague' GROUP BY T1.account_id
SELECT CAST(SUM(IIF(T1.gender = 'M', 1, 0)) AS REAL) * 100 / COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'South Bohemia'
SELECT (( SELECT T1.balance FROM trans AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'approved' AND T2.`date` = '1993-03-22' ) - ( SELECT T1.balance FROM trans AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'approved' AND T2.`date` = '1998-12-27' )) * 100.0 / ( SELECT T1.balance FROM trans AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'approved' AND T2.`date` = '1993-07-05' )
SELECT CAST(SUM(CASE WHEN T1.status = 'A' THEN T1.amount * 100 ELSE 0 END) AS REAL) * 100 / SUM(T1.amount) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id
SELECT CAST(SUM(CASE WHEN T1.status = 'C' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.status) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < 1000000
SELECT T1.account_id, T2.A3, T2.A13 FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE STRFTIME('%Y', T1.date) = '1993' AND T2.A13 = 'POPLATEK PO OBRATU'
SELECT DISTINCT T1.account_id, T1.frequency FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 2 AND T2.client_id IN ( SELECT client_id FROM client WHERE district_id = ( SELECT district_id FROM district WHERE A2 = 'east' AND A3 = 'Bohemia' ) ) AND T1.district_id = ( SELECT district_id FROM district WHERE A2 = 'east' AND A3 = 'Bohemia' ) AND T1.date BETWEEN '1995%' AND '2000%'
SELECT T1.account_id, T1.`date` FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Prachatice'
SELECT T1.A2, T1.A3 FROM district AS T1 INNER JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.loan_id = 4990
SELECT T1.account_id, T2.A2, T2.A3 FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.amount > 300000
SELECT T1.loan_id, T2.A3, T2.A11 FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.duration = 60
SELECT T3.A3, T3.A4, ((T3.A16 - T3.A12) / T3.A12) * 100 FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.status = 'D' AND T3.A12 = 0
SELECT CAST(SUM(CASE WHEN T1.district_id = 13 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date = '1993-12' AND T2.A2 = 'Decin'
SELECT DISTINCT account_id FROM disp WHERE issued = 'POPLATEK MESICNE'
SELECT T1.district_id FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' GROUP BY T1.district_id ORDER BY COUNT(T1.district_id) DESC LIMIT 9
SELECT T1.A2 FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T3.date LIKE '1996-01%' AND T3.type = 'VYDAJ' LIMIT 10
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'South Bohemia' AND T2.A4 = 'credit card'
SELECT T1.A3 FROM district AS T1 INNER JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = 'C' GROUP BY T1.A3 ORDER BY COUNT(T1.A3) DESC LIMIT 1
SELECT AVG(T1.amount) FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T2.gender = 'M'
SELECT T1.A2, T1.A3, T1.A4, T1.A5, T1.A6, T1.A7, T1.A8, T1.A9, T1.A10, T1.A11, T1.A12, T1.A13, T1.A14, T1.A15, T1.A16 FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE STRFTIME('%Y', T2.date) = '1996' ORDER BY T1.A13 DESC LIMIT 1
SELECT SUM(T1.A16) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A16 = 1996 GROUP BY T1.district_id ORDER BY COUNT(T1.A16) DESC LIMIT 1
SELECT COUNT(DISTINCT T2.account_id) FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 'POPLATEK MESICNE' AND T2.operation = 'VYBER KARTOU' AND T2.balance < 0
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'POPLATEK MESICNE' AND T1.amount = 250000 AND T1.status = 'APPROVED' AND T1.date BETWEEN '1995-01-01' AND '1997-12-31'
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'C' AND T2.district_id = 1
SELECT SUM(CASE WHEN T1.gender = 'M' THEN 1 ELSE 0 END) AS num FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A15 = ( SELECT MAX(A15) FROM district )
SELECT COUNT(T1.account_id) FROM disp AS T1 INNER JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'gold'
SELECT SUM(CASE WHEN T2.A2 = 'Pisek' THEN 1 ELSE 0 END) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id
SELECT T2.district_id FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount = 'USS $10,000' AND STRFTIME('%Y', T1.`date`) = '1997'
SELECT DISTINCT T2.account_id FROM trans AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T1.k_symbol = 'SIPO'
SELECT DISTINCT T1.account_id FROM disp AS T1 INNER JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'gold'
SELECT AVG(amount) FROM trans WHERE STRFTIME('%Y', `date`) = '2021' AND operation = 'VYBER KARTOU'
SELECT DISTINCT T1.account_id FROM trans AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'VYBER KARTOU' AND T1.`amount` < ( SELECT AVG(amount) FROM loan ) AND STRFTIME('%Y', T1.`date`) = '1998'
SELECT DISTINCT T3.gender FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.gender = 'F'
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'south Bohemia' AND T1.gender = 'F'
SELECT T1.account_id FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN disp AS T3 ON T1.account_id = T3.account_id WHERE T2.A2 = 'Tabor' AND T3.type = 'OWNER'
SELECT T1.account_id, T3.A11 FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE (T1.status = 'RECEIPT' AND T2.district_id = 111) OR (T1.status = 'RECEIPT' AND T2.district_id = 123) OR (T1.status = 'RECEIPT' AND T2.district_id = 134) OR (T1.status = 'RECEIPT' AND T2.district_id = 145) OR (T1.status = 'RECEIPT' AND T2.district_id = 156) OR (T1.status = 'RECEIPT' AND T2.district_id = 167) OR (T1.status = 'RECEIPT' AND T2.district_id = 178) OR (T1.status = 'RECEIPT' AND T2.district_id = 189) OR (T1.status = 'RECEIPT' AND T2.district_id = 100)
SELECT COUNT(T1.account_id) FROM trans AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T2.A3 = 'North Bohemia' AND T1.bank = 'AB'
SELECT T1.A2 FROM district AS T1 INNER JOIN disp AS T2 ON T1.district_id = T2.district_id WHERE T2.type = 'VYDAJ'
SELECT SUM(T1.A15) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A3 > 4000 AND STRFTIME('%Y', T2.`date`) > '1997'
SELECT COUNT(T1.card_id) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'CLASSIC' AND T2.account_id = ( SELECT account_id FROM loan WHERE status = 'LOAN' )
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'M' AND T2.district_id = 105
SELECT CAST(SUM(CASE WHEN T2.type = 'gold' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.type) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'gold' AND T1.issued < '1998-01-01'
SELECT T1.client_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id ORDER BY T1.amount DESC LIMIT 1
SELECT SUM(CASE WHEN T1.district_id = 532 THEN 1 ELSE 0 END) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A15 = 'A15' AND T2.account_id = 251
SELECT T1.district_id FROM account AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT T2.operation FROM disp AS T1 INNER JOIN trans AS T2 ON T1.disp_id = T2.disp_id WHERE T1.client_id = 3356 AND T2.amount = 0 AND T2.operation = 'VYBER'
SELECT COUNT(T2.account_id) FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 'POPLATEK TYDNE' AND T2.amount < 200000
SELECT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 13539
SELECT T2.A3 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 3541
SELECT T1.district_id FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'A' GROUP BY T1.district_id ORDER BY COUNT(T1.account_id) DESC LIMIT 1
SELECT T2.client_id FROM order AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T1.order_id = 32423
SELECT T2.* FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T1.district_id = 5
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id = 103
SELECT DISTINCT T1.client_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.type = 'JUNIOR' AND T3.issued >= '1997-01-01'
SELECT SUM(IIF(T1.A11 > 10000 AND T3.gender = 'F', 1, 0)) * 100 / COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN client AS T3 ON T2.district_id = T3.district_id
SELECT SUM(T1.amount) * 100.0 / SUM(T1.amount) AS growth FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id WHERE SUBSTR(T2.birth_date, 1, 4) = '1996' AND SUBSTR(T2.birth_date, -4) = '07' AND T2.gender = 'M'
SELECT COUNT(trans_id) FROM trans WHERE STRFTIME('%Y', `date`) > '1995' AND operation = 'VYBER KARTOU'
SELECT SUM(T1.A16) - SUM(T1.A14) FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = 'East Bohemia' AND T1.A3 = 'North Bohemia' AND T1.A4 = '1996'
SELECT COUNT(*) FROM disp WHERE account_id BETWEEN 1 AND 10
SELECT T2.frequency, T1.k_symbol FROM order AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.account_id = 3
SELECT T2.gender FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 130
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 'POPLATEK PO OBRATU' AND T2.type = 'R'
SELECT SUM(T1.amount), T1.status FROM loan AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 992
SELECT T1.amount, T3.gender FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T1.trans_id = 851 AND T2.account_id = 4
SELECT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 9
SELECT SUM(T1.amount) FROM loan AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T2.date) = '1998' AND T2.operation = 'P' AND T1.status = 'Paid' AND T1.account_id = 617
SELECT T1.client_id FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'East Bohemia' AND STRFTIME('%Y', T1.birth_date) BETWEEN '1983' AND '1987'
SELECT T1.account_id FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T2.gender = 'F' ORDER BY T1.amount DESC LIMIT 3
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'M' AND STRFTIME('%Y', T1.birth_date) BETWEEN '1974' AND '1976' AND T2.amount > 4000
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Beroun' AND T1.date > '1996-01-01'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T1.gender = 'F' AND T3.type = 'JCR'
SELECT CAST(SUM(CASE WHEN T1.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Prague'
SELECT CAST(SUM(CASE WHEN T1.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.gender) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'W'
SELECT COUNT(T2.client_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 'POPLATEK TYDNE' AND T2.type = 'statement'
SELECT T1.account_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.date < '1997-01-01' AND T1.duration = '24' GROUP BY T1.account_id ORDER BY SUM(T1.amount) ASC LIMIT 1
SELECT DISTINCT T1.account_id FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.gender = 'F' AND T1.birth_date IS NOT NULL AND T2.A11 = ( SELECT MIN(A11) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'F' )
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'East Bohemia' AND STRFTIME('%Y', T1.birth_date) = '1920'
SELECT COUNT(T1.account_id) FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'POPLATEK TYDNE' AND T1.duration = '24'
SELECT AVG(amount) FROM loan WHERE status = 'C'
SELECT DISTINCT T1.account_id, T3.district_id FROM disp AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.type = 'P' OR T1.type = 'L'
SELECT T1.client_id, T1.birth_date FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'gold' AND T2.disp_id = 'OWNER'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY COUNT(bond_type) DESC LIMIT 1
SELECT COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.element = 'cl'
SELECT AVG(CASE WHEN T1.element = 'o' THEN 1 ELSE 0 END) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '-'
SELECT CAST(SUM(CASE WHEN T2.label = '+' THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-'
SELECT COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'na' AND T2.label = '-'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T1.bond_type = '#'
SELECT CAST(SUM(IIF(T1.element = 'c', 1, 0)) AS REAL) * 100 / COUNT(T2.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = '='
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '#'
SELECT COUNT(atom_id) FROM atom WHERE element != 'br'
SELECT COUNT(molecule_id) FROM molecule WHERE molecule_id BETWEEN 'TR000' AND 'TR099' AND label = '+'
SELECT molecule_id FROM atom WHERE element = 'c'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR004_8_9'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = '='
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T3.atom_id = T2.atom_id INNER JOIN atom AS T4 ON T4.atom_id = T3.atom_id WHERE T2.element = 'h' GROUP BY T1.label ORDER BY COUNT(T1.label) DESC LIMIT 1
SELECT DISTINCT T1.bond_type FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T1.molecule_id = T3.molecule_id WHERE T2.element = 'cl' OR T3.element = 'cl'
SELECT T1.atom_id FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = '-1'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-'
SELECT T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'non-carcinogenic' GROUP BY T2.element ORDER BY COUNT(T2.element) LIMIT 1
SELECT DISTINCT T2.bond_type FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id = 'TR004_8' AND T1.atom_id2 = 'TR004_20'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element != 'sn' AND (T1.label = '+' OR T1.label = '-')
SELECT COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.molecule_id WHERE T2.bond_type = '-' AND (T1.element = 'i' OR T1.element = 's')
SELECT T1.atom_id FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = '#'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 WHERE T1.molecule_id = 'TR181'
SELECT CAST(SUM(IIF(T2.element = 'f', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT SUM(IIF(T2.label = '+', 1, 0)) * 100 / COUNT(T2.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '#'
SELECT element FROM atom WHERE molecule_id = 'TR000' ORDER BY element ASC LIMIT 3
SELECT T1.atom_id FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.bond_id = T1.bond_id WHERE T3.molecule_id = 'TR001' AND T1.bond_id = 'TR001_2_6'
{"sql": "SELECT SUM(IIF(label = '+", 1, 0)) - SUM(IIF(label = '-', 1, 0)) AS DIFF FROM molecule"}
SELECT T2.atom_id FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.bond_id = 'TR000_2_5'
SELECT bond_id FROM connected WHERE atom_id = 2
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double bond' LIMIT 5
SELECT SUM(IIF(bond_type = '=', 1, 0)) * 100 / COUNT(bond_id) AS per FROM bond WHERE molecule_id = 'TR008'
SELECT SUM(IIF(label = '+', 1, 0)) / COUNT(molecule_id) AS per FROM molecule
SELECT CAST(SUM(IIF(element = 'h', 1, 0)) AS REAL) * 100 / COUNT(atom_id) FROM atom WHERE molecule_id = 'TR206'
SELECT DISTINCT T1.bond_type FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR000'
SELECT T1.element, T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR060'
SELECT T1.bond_type, IIF(SUM(IIF(T2.molecule_id = 'TR010', 1, 0)) > 0.5, 'carcinogenic', 'not carcinogenic') FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.bond_type
SELECT T2.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-' ORDER BY T2.molecule_id LIMIT 3
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR006' ORDER BY T1.bond_id
SELECT COUNT(T1.atom_id) FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR009_12' OR T1.atom_id2 = 'TR009_12'
SELECT COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.element = 'br'
SELECT T1.bond_type, T2.atom_id2 FROM bond AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.bond_id WHERE T2.bond_id = 'TR001_6_9'
SELECT T2.molecule_id, T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_10'
SELECT COUNT(molecule_id) FROM bond WHERE bond_type = '#'
SELECT COUNT(bond_id) FROM connected WHERE atom_id = 'TR%_19'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR004'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '-'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.atom_id LIKE '21%' OR T1.atom_id LIKE '22%' OR T1.atom_id LIKE '23%' OR T1.atom_id LIKE '24%' OR T1.atom_id LIKE '25%'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element IN ('p', 'n')
SELECT IIF(SUM(CASE WHEN T2.label = '+' THEN 1 ELSE 0 END) > 2, 'carcinogenic', 'not carcinogenic') FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = ' = '
SELECT CAST(COUNT(T2.bond_id) AS REAL) / COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'i'
SELECT T2.bond_type, SUBSTR(T2.bond_id, 7, 2) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 45
SELECT element FROM atom WHERE atom_id NOT IN ( SELECT atom_id FROM connected )
SELECT T1.atom_id FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.molecule_id WHERE T2.molecule_id = 'TR041' AND T2.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_id = 'TR144_8_19'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic' AND T1.bond_type = 'double' GROUP BY T1.molecule_id ORDER BY COUNT(T1.molecule_id) DESC LIMIT 1
SELECT T3.element FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T1.label = '+' GROUP BY T3.element ORDER BY COUNT(T3.atom_id) ASC LIMIT 1
SELECT atom_id FROM atom WHERE element = 'pb'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '#'
SELECT CAST(SUM(IIF(T2.atom_id = T2.atom_id, 1, 0)) AS REAL) * 100 / COUNT(T1.atom_id) FROM connected AS T1 INNER JOIN atom AS T2 ON T1.atom_id = T2.atom_id
SELECT SUM(IIF(T2.label = '+', 1, 0)) * 100 / COUNT(T1.molecule_id) AS per FROM bond AS T1 LEFT JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-'
SELECT SUM(CASE WHEN element = 'C' THEN 1 ELSE 0 END) AS count FROM atom WHERE element IN ('C', 'H')
SELECT atom_id2 FROM connected WHERE atom_id = ( SELECT atom_id FROM atom WHERE element = 's' )
SELECT DISTINCT T1.atom_id FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.molecule_id WHERE T1.element = 'sn' AND T2.bond_type IN ('=', '-') AND T2.bond_type NOT IN ('#')
SELECT COUNT(molecule_id) FROM bond WHERE bond_type = '-'
SELECT SUM(CASE WHEN T2.element = 'p' THEN 1 ELSE 0 END) + SUM(CASE WHEN T2.element = 'br' THEN 1 ELSE 0 END) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.atom_id
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-'
SELECT CAST(SUM(IIF(T1.element = 'cl', 1, 0)) AS REAL) * 100 / COUNT(T2.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = '-'
SELECT label FROM molecule WHERE molecule_id IN ('TR000', 'TR001', 'TR002')
SELECT molecule_id FROM molecule WHERE label != 'carcinogen'
SELECT COUNT(molecule_id) FROM molecule WHERE molecule_id BETWEEN 'TR000' AND 'TR030' AND label = '+'
SELECT bond_type FROM bond WHERE molecule_id BETWEEN 'TR000' AND 'TR050'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_10_11'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = 'bond' AND element = 'i'
SELECT MAX(T1.label) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'ca'
SELECT CASE WHEN COUNT(T1.element) > 0 THEN 'yes' ELSE 'no' END FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_1_8'
SELECT T2.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'triple' AND T2.label = '-' AND T1.element = 'c'
SELECT CAST(SUM(IIF(T2.element = 'cl', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT element FROM atom WHERE molecule_id = 'TR001'
SELECT molecule_id FROM bond WHERE bond_type = 'double'
SELECT T2.atom_id, T2.atom_id2 FROM bond AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.bond_id WHERE T1.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR000_1_2'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.bond_type = '- '
SELECT label FROM molecule WHERE molecule_id = 'TR001_10_11'
SELECT T1.bond_id, T3.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T1.atom_id = T3.atom_id WHERE T1.bond_type = '#'
SELECT T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND SUBSTR(T2.atom_id, 7, 1) = '4'
SELECT SUM(IIF(element = 'h', 1, 0)), label FROM atom WHERE molecule_id = 'TR006'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'ca'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'c'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_10_11'
SELECT CAST(SUM(CASE WHEN bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(molecule_id) FROM bond
SELECT CAST(SUM(CASE WHEN T2.bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.bond_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR047'
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 'TR001'
SELECT label FROM molecule WHERE molecule_id = 'TR151'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR151'
SELECT COUNT(molecule_id) FROM molecule WHERE label = 'carcinogenic'
SELECT atom_id FROM atom WHERE molecule_id LIKE 'TR%' AND element = 'c'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+'
SELECT T1.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id INNER JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T2.label = '+' AND T2.bond_type = 'double bond'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'h' AND T2.label = '+'
SELECT T2.atom_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T1.bond_id = 'TR000_1_2' AND T3.atom_id = 'TR000_1'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.element = 'c'
SELECT CAST(SUM(IIF(T2.label = '+', 1, 0)) AS REAL) * 100 / COUNT(T2.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'h'
SELECT label FROM molecule WHERE molecule_id = 'TR124'
SELECT element FROM atom WHERE molecule_id = 'TR186'
SELECT bond_type FROM bond WHERE molecule_id = 'TR007_4_19'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_2_4'
SELECT COUNT(T1.molecule_id), T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'double bond' AND T2.molecule_id = 'TR006'
SELECT T1.molecule_id, T2.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+'
SELECT T1.atom_id, T2.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = '-1'
SELECT T1.molecule_id, T2.element FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.atom_id WHERE T1.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.bond_id WHERE T2.bond_id = 'TR000_2_3'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.bond_id INNER JOIN connected AS T3 ON T2.bond_id = T3.bond_id INNER JOIN atom AS T4 ON T3.atom_id = T4.atom_id WHERE T1.element = 'cl'
SELECT T1.atom_id, COUNT(T2.bond_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.bond_id WHERE T1.molecule_id = 346 AND T2.molecule_id = 346 GROUP BY T1.atom_id
SELECT COUNT(T1.molecule_id), COUNT(T3.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'double bond' AND T2.label = '+'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.atom_id INNER JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T2.element != 's' AND T1.bond_type = 'double bond'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_2_4' AND T1.label = '+'
SELECT COUNT(atom_id) FROM atom WHERE molecule_id = 'TR001'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '-'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.element = 'cl'
SELECT T2.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'c' AND T2.label = '-'
SELECT CAST(SUM(IIF(T2.label = 'chlorine', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_3_4'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = 'TR000_1' AND T2.atom_id2 = 'TR000_2'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.atom_id = 'TR000_2' OR T2.atom_id = 'TR000_4'
SELECT element FROM atom WHERE atom_id = 'TR000_1'
SELECT label FROM molecule WHERE molecule_id = 'TR000'
SELECT CAST(SUM(CASE WHEN bond_type = '-1' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(bond_id) FROM bond
SELECT COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'n' AND T2.label = '+'
SELECT T1.molecule_id FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.molecule_id WHERE T2.bond_type = ' = ' AND T1.element = 's'
SELECT T2.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '-' GROUP BY T2.molecule_id HAVING COUNT(T2.atom_id) > 5
SELECT T1.element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T2.bond_type = '=' AND T3.label = 'TR024'
SELECT T2.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T2.molecule_id = T1.molecule_id WHERE T2.label = '+' GROUP BY T2.molecule_id ORDER BY COUNT(T1.atom_id) DESC LIMIT 1
SELECT SUM(IIF(T2.label = '+', 1, 0)) / COUNT(T1.molecule_id) AS percentage FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T1.element = 'h' AND T3.bond_type = '#'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+'
SELECT COUNT(molecule_id) FROM bond WHERE molecule_id BETWEEN 'TR004' AND 'TR010' AND bond_type = '- '
SELECT COUNT(element) FROM atom WHERE element = 'c' AND molecule_id = 'TR008'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 'TR004_7' AND T2.label != 'carcinogenic'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T1.element = 'o' AND T1.bond_type = 'double bond'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.bond_type = '#'
SELECT T1.element, T2.bond_type FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR002'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN bond AS T2 ON T1.atom_id = T2.bond_id INNER JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.label = 'TR012' AND T2.bond_type = ' = ' AND T1.element = 'c'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.element = 'o'
SELECT name FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.code WHERE T1.borderColor IS NOT NULL AND T1.cardKingdomFoilId IS NULL
SELECT name FROM cards ORDER BY faceConvertedManaCost DESC LIMIT 1
SELECT name FROM cards WHERE edhrecRank < 100 AND frameVersion = 2015
SELECT T1.name FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' AND T2.format = 'gladiator' AND T1.rarity = 'mythic'
SELECT DISTINCT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = 'Cards' AND T2.side IS NULL AND T1.format = 'vintage'
SELECT T1.id, T1.artist FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'commander' AND T2.status = 'Legal' AND T1.power = '*' OR T1.power IS NULL
SELECT T1.id, T3.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid INNER JOIN sets AS T3 ON T1.code = T3.code WHERE T1.artist = 'Stephen Daniele' AND T1.hasContentWarning = 1
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Sublime Epiphany' AND T2.number = '74s'
SELECT T1.artist, T1.uuid, T1.isPromo FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T1.uuid ORDER BY COUNT(T2.text) DESC LIMIT 1
SELECT T1.language FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'annul' AND T2.number = '29'
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'Japanese'
SELECT CAST(SUM(CASE WHEN T2.language = 'Chinese Simplified' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid
SELECT T2.code, T2.totalSetSize FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Italian'
SELECT COUNT(types) FROM cards WHERE artist LIKE 'Aaron Boyd'
SELECT T1.keywords FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Angel of Mercy'
SELECT COUNT(id) FROM cards WHERE power = '*'
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT T1.color borderColor FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Ancestor''s Chosen'
SELECT originalType FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.name = 'Angel of Mercy'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Restricted' AND T1.isTextless = 0
SELECT T1.text FROM foreign_data AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.date = '2013-01-01' AND T2.text LIKE 'Condemn'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.isStarter = 1 AND T2.status = 'restricted'
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Cloudchaser Eagle'
SELECT T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Benalish Knight'
SELECT T1.format FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Benalish Knight'
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T2.language = 'Phyrexian'
SELECT CAST(COUNT(CASE WHEN borderColor = 'borderless' THEN id ELSE NULL END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT COUNT(*) FROM cards WHERE isReprint = 1 AND language = 'German'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN foreign_data AS T3 ON T2.uuid = T3.uuid WHERE T1.borderColor = 'borderless' AND T3.language = 'Russian'
SELECT CAST(SUM(CASE WHEN T2.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.isStorySpotlight = 1
SELECT COUNT(id) FROM cards WHERE toughness = 99
SELECT T1.asciiName FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.artist = 'Aaron Boyd'
SELECT COUNT(id) FROM cards WHERE availability = 'mtgo' AND borderColor = 'black'
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT COUNT(originalType) FROM cards WHERE originalType = 'Summon - Angel' AND subtypes != 'Angel'
SELECT id FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT id FROM cards WHERE duelDeck = 'a'
SELECT edhrecRank FROM cards WHERE frameVersion = '2015'
SELECT T1.asciiName FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T2.language = 'Chinese Simplified'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN foreign_data AS T3 ON T2.uuid = T3.uuid WHERE T3.language = 'Japanese' AND T1.availability = 'paper'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' AND T1.borderColor = 'white'
SELECT T1.uuid, T2.language FROM legalities AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'legacy'
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Beacon of Immortality'
SELECT COUNT(T1.id), T2.status FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = 'future'
SELECT T1.color FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T2.setCode = 'OGW'
SELECT T1.name, T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T2.setCode = T1.id WHERE T2.setCode = '10E' AND T1.convertedManaCost = 5
SELECT T1.name, T2.date FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = 'Creature - Elf'
SELECT T1.color, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.id BETWEEN 1 AND 20
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = 'Artifact' AND T1.colors = 'B'
SELECT T1.name FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'uncommon' ORDER BY T2.date LIMIT 3
SELECT COUNT(*) FROM cards WHERE artist LIKE 'John Avon%' AND hasNonFoil = 'false'
SELECT COUNT(id) FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL AND borderColor = 'white'
SELECT COUNT(id) FROM cards WHERE availability = 'mtgo' AND hand = -1 AND artist = 'UDON'
SELECT COUNT(id) FROM cards WHERE hasContentWarning = 1 AND availability = 'paper' AND frameVersion = '1993'
SELECT manaCost FROM cards WHERE availability = 'mtgo,paper' AND frameVersion = 2003 AND borderColor = 'black' AND layout = 'normal'
{"sql": "SELECT SUM(T1.manaCost) FROM cards AS T1 INNER JOIN ( SELECT T2.manaCost FROM cards AS T2 INNER JOIN ( SELECT T3.artist, SUM(T3.manaCost) AS manaCost FROM cards AS T3 INNER JOIN ( SELECT T4.artist, SUM(T4.manaCost) AS manaCost FROM cards AS T4 INNER JOIN ( SELECT T5.artist, SUM(T5.manaCost) AS manaCost FROM cards AS T5 INNER JOIN ( SELECT T6.artist, SUM(T6.manaCost) AS manaCost FROM cards AS T6 INNER JOIN ( SELECT T7.artist, SUM(T7.manaCost) AS manaCost FROM cards AS T7 INNER JOIN ( SELECT T8.artist, SUM(T8.manaCost) AS manaCost FROM cards AS T8 INNER JOIN ( SELECT T9.artist, SUM(T9.manaCost) AS manaCost FROM cards AS T9 INNER JOIN ( SELECT T10.artist, SUM(T10.manaCost) AS manaCost FROM cards AS T10 INNER JOIN ( SELECT T11.artist, SUM(T11.manaCost) AS manaCost FROM cards AS T11 INNER JOIN ( SELECT T12.artist, SUM(T12.manaCost) AS manaCost FROM cards AS T12 INNER JOIN ( SELECT T13.artist, SUM(T13.manaCost) AS manaCost FROM cards AS T13 INNER JOIN ( SELECT T14.artist, SUM(T14.manaCost) AS manaCost FROM cards AS T14 INNER JOIN ( SELECT T15.artist, SUM(T15.manaCost) AS manaCost FROM cards AS T15 INNER JOIN ( SELECT T16.artist, SUM(T16.manaCost) AS manaCost FROM cards AS T16 INNER JOIN ( SELECT T17.artist, SUM(T17.manaCost) AS manaCost FROM cards AS T17 INNER JOIN ( SELECT T18.artist, SUM(T18.manaCost) AS manaCost FROM cards AS T18 INNER JOIN ( SELECT T19.artist, SUM(T19.manaCost) AS manaCost FROM cards AS T19 INNER JOIN ( SELECT T20.artist, SUM(T20.manaCost) AS manaCost FROM cards AS T20 INNER JOIN ( SELECT T21.artist, SUM(T21.manaCost) AS manaCost FROM cards AS T21 INNER JOIN ( SELECT T22.artist, SUM(T22.manaCost) AS manaCost FROM cards AS T22 INNER JOIN ( SELECT T23.artist, SUM(T23.manaCost) AS manaCost FROM cards AS T23 INNER JOIN ( SELECT T24.artist, SUM(T24.manaCost) AS manaCost FROM cards AS T24 INNER JOIN ( SELECT T25.artist, SUM(T25.manaCost) AS manaCost FROM cards AS T25 INNER JOIN ( SELECT T26.artist, SUM(T26.manaCost) AS manaCost FROM cards AS T26 INNER JOIN ( SELECT T27.artist, SUM(T27.manaCost) AS manaCost FROM cards AS T27 INNER JOIN ( SELECT T28.artist, SUM(T28.manaCost) AS manaCost FROM cards AS T28 INNER JOIN ( SELECT T29.artist, SUM(T29.manaCost) AS manaCost FROM cards AS T29 INNER JOIN ( SELECT T30.artist, SUM(T30.manaCost) AS manaCost FROM cards AS T30 INNER JOIN ( SELECT T31.artist, SUM(T31.manaCost) AS manaCost FROM cards AS T31 INNER JOIN ( SELECT T32.artist, SUM(T32.manaCost) AS manaCost FROM cards AS T32 INNER JOIN ( SELECT T33.artist, SUM(T33.manaCost) AS manaCost FROM cards AS T33 INNER JOIN ( SELECT T34.artist, SUM(T34.manaCost) AS manaCost FROM cards AS T34 INNER JOIN ( SELECT T35.artist, SUM(T35.manaCost) AS manaCost FROM cards AS T35 INNER JOIN ( SELECT T36.artist, SUM(T36.manaCost) AS manaCost FROM cards AS T36 INNER JOIN ( SELECT T37.artist, SUM(T37.manaCost) AS manaCost FROM cards AS T37 INNER JOIN ( SELECT T38.artist, SUM(T38.manaCost) AS manaCost FROM cards AS T38 INNER JOIN ( SELECT T39.artist, SUM(T39.manaCost) AS manaCost FROM cards AS T39 INNER JOIN ( SELECT T40.artist, SUM(T40.manaCost) AS manaCost FROM cards AS T40 INNER JOIN ( SELECT T41.artist, SUM(T41.manaCost) AS manaCost FROM cards AS T41
SELECT DISTINCT supertypes, subtypes FROM cards WHERE availability = 'arena'
SELECT setCode FROM set_translations WHERE language = 'Spanish'
SELECT CAST(SUM(CASE WHEN isOnlineOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards WHERE frameEffects = 'legendary'
SELECT CAST(SUM(CASE WHEN isStorySpotlight = 1 AND isTextless = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT CAST(SUM(CASE WHEN T2.language = 'Spanish' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.baseSetSize = 309
SELECT COUNT(T1.setCode) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Commander' AND T2.language = 'Portuguese (Brasil)'
SELECT T2.id FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = 'Creature' AND T1.status = 'legal'
SELECT DISTINCT T2.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T2.language = 'de' AND T1.supertypes IS NOT NULL AND T1.subtypes IS NOT NULL
SELECT COUNT(T1.power) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.power IS NULL OR T1.power = '*' AND T2.text LIKE '%triggered ability%'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid INNER JOIN legalities AS T3 ON T1.uuid = T3.uuid WHERE T2.text = 'This is a triggered mana ability.' AND T3.format = 'premodern' AND T1.side IS NULL
SELECT T1.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'pauper' AND T1.artist = 'Erica Yang'
SELECT T1.artist FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = 'Das perfekte Gegenmittel zu einer dichten Formation'
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T2.language = 'French' AND T1.type = 'Creature' AND T1.layout = 'normal' AND T1.borderColor = 'black' AND T1.artist = 'Matthew D. Wilson'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'rare' AND T2.date = '2007-02-01'
SELECT T1.language FROM foreign_data AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.code INNER JOIN sets AS T3 ON T2.setCode = T3.code WHERE T3.block = 'Ravnica' AND T2.setCode = ( SELECT setCode FROM sets WHERE baseSetSize = 180 )
SELECT CAST(SUM(CASE WHEN T2.hasContentWarning = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'commander' AND T1.status = 'legal'
SELECT CAST(SUM(CASE WHEN T2.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.power) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.power IS NULL OR T1.power = '*'
SELECT CAST(SUM(CASE WHEN T2.language = 'Japanese' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode
SELECT availability FROM cards WHERE artist = 'Daren Bader'
SELECT COUNT(id) FROM cards WHERE borderColor = 'borderless' AND edhrecRank > 12000
SELECT COUNT(id) FROM cards WHERE isPromo = 1 AND isReprint = 1 AND isOversized = 1
SELECT name FROM cards WHERE promoTypes = 'arenaleague' OR power = '*' LIMIT 3
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.multiverseid = T1.multiverseId WHERE T1.multiverseId = 149934
SELECT cardKingdomFoilId FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL ORDER BY cardKingdomFoilId ASC LIMIT 3
SELECT CAST(SUM(CASE WHEN isTextless = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM cards WHERE layout = 'normal'
SELECT cardKingdomFoilId FROM cards WHERE side LIKE '%Angel AND Wizard%' AND subtypes = 'Angel and Wizard' AND (CASE WHEN COUNT(*) = 4 THEN 'YES' ELSE 'NO' END) IS NULL
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.mtgoCode WHERE T2.mtgoCode IS NULL OR T2.mtgoCode = '' LIMIT 3
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.setCode = 'ARC' AND T1.mcmName = 'Archenemy'
SELECT T1.name, T2.translation FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.number = 5
SELECT T1.language, T2.type FROM foreign_data AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.setCode = '206'
SELECT T3.id, T4.id FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN cards AS T3 ON T1.uuid = T3.uuid INNER JOIN foreign_data AS T4 ON T3.uuid = T4.uuid WHERE T2.block = 'Shadowmoor' AND T4.language = 'Italian' ORDER BY T3.id LIMIT 2
SELECT T1.code FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode INNER JOIN cards AS T3 ON T2.setCode = T3.uuid WHERE T1.isFoilOnly = 1 AND T2.language = 'Japanese' AND T1.isForeignOnly = 1
SELECT T2.name FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Russian' ORDER BY T2.baseSetSize DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.isOnlineOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM foreign_data AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Chinese Simplified'
SELECT COUNT(DISTINCT T2.code) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Japanese' AND (T2.mtgoCode IS NULL OR T2.mtgoCode = '')
SELECT id FROM cards WHERE borderColor = 'black'
SELECT id FROM cards WHERE frameEffects = 'extendedart'
SELECT name FROM cards WHERE isFullArt = 1 AND borderColor != 'white'
SELECT T1.language FROM foreign_data AS T1 INNER JOIN set_translations AS T2 ON T2.setCode = T1.uuid WHERE T2.setCode = '174'
SELECT T1.name FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.code = 'ALL'
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'A Pedra Fellwar'
SELECT T2.setCode FROM rulings AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.uuid WHERE T1.date = '07/13/2007'
SELECT T1.baseSetSize, T1.code FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block IN ('Masques', 'Mirage')
SELECT code FROM sets WHERE type = 'expansion'
SELECT T1.name, T2.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.type = 'card' AND T1.watermark = 'boros'
SELECT T1.language, T1.flavorText, T1.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.colorIndicator = 'watermark'
SELECT CAST(SUM(CASE WHEN T1.convertedManaCost = 10 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.convertedManaCost) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.name = 'Abyssal Horror'
SELECT code FROM sets WHERE type = 'expansion commander'
SELECT T1.name, T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'abzan'
SELECT T2.language, T2.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'azorius'
SELECT COUNT(id) FROM cards WHERE artist = 'Aaron Miller' AND cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT COUNT(*) FROM cards WHERE availability LIKE '%paper%' AND hand = '3'
SELECT name FROM cards WHERE isTextless = 0
SELECT T1.manaCost FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Ancestor''s Chosen'
SELECT COUNT(id) FROM cards WHERE power = '*' OR power IS NULL AND borderColor = 'white'
SELECT name FROM cards WHERE isPromo = 1 AND side IS NOT NULL GROUP BY name
SELECT DISTINCT T1.supertypes, T1.subtypes FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Molimo, Maro-Sorcerer'
SELECT purchaseUrls FROM cards WHERE promoTypes = 'bundle'
SELECT COUNT(DISTINCT artist) FROM cards WHERE availability LIKE '%arena,mtgo%' AND borderColor = 'black'
SELECT T1.name FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name IN ('Serra Angel', 'Shrine Keeper') ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE flavorName = 'Battra, Dark Destroyer'
SELECT name FROM cards WHERE frameVersion = '2003' ORDER BY convertedManaCost DESC LIMIT 3
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'Italian' AND T2.flavorText = 'Ancestor''s Chosen'
SELECT COUNT(T1.language) FROM set_translations AS T1 INNER JOIN cards AS T2 ON T1.setCode = T2.id WHERE T2.name = 'Angel of Mercy'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.translation = 'Hauptset Zehnte Edition'
SELECT T1.language FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Ancestor''s Chosen' AND T1.language = 'Korean'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN sets AS T3 ON T2.setCode = T3.code WHERE T2.translation = 'Hauptset Zehnte Edition' AND T1.artist = 'Adam Rex'
SELECT T2.baseSetSize FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.translation = 'Hauptset Zehnte Edition'
SELECT T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Eighth Edition' AND T2.language = 'Chinese Simplified'
SELECT IIF(T1.mtgoCode IS NULL, 'no', 'yes') FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.code WHERE T1.name = 'Angel of Mercy'
SELECT T2.releaseDate FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.name = 'Ancestor''s Chosen'
SELECT T3.type FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN cards AS T3 ON T1.uuid = T3.uuid WHERE T1.translation = 'Hauptset Zehnte Edition'
SELECT COUNT(T1.code) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Ice Age' AND T2.language = 'Italian' AND T2.translation IS NOT NULL
SELECT T1.isForeignOnly FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = 'Adarkar Valkyrie'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'Italian' AND T1.baseSetSize < 10
SELECT COUNT(T1.name) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.name = T2.code WHERE T2.name = 'Coldsnap' AND T1.borderColor = 'black'
SELECT T1.asciiName FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.name = 'Coldsnap' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 INNER JOIN sets AS T2 ON T1.uuid = T2.code WHERE T2.name = 'Coldsnap' AND (T1.artist IN ('Jeremy Jarvis', 'Aaron Miller', 'Chippy'))
SELECT T1.number FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.name = 'Coldsnap' AND T1.number = 4
SELECT COUNT(*) FROM cards WHERE name = 'Coldsnap' AND convertedManaCost > 5 AND power LIKE '*' OR power IS NULL
SELECT T1.flavorText FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Ancestor''s Chosen' AND T2.language = 'Italian'
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Ancestor''s Chosen' AND T2.flavorText IS NOT NULL
SELECT T1.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T2.name LIKE 'Ancestor%s Chosen' AND T2.language = 'German'
SELECT T3.text FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN rulings AS T3 ON T1.uuid = T3.uuid WHERE T2.language = 'Italian' AND T1.name = 'Coldsnap'
SELECT T1.asciiName FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN foreign_data AS T3 ON T2.language = T3.language WHERE T2.setCode = 'Coldsnap' AND T3.language = 'Italian' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.date FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Reminisce'
SELECT CAST(SUM(CASE WHEN T1.convertedManaCost = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.name = 'Coldsnap'
SELECT CAST(SUM(CASE WHEN T1.power = 'Incredibly Powerful' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.name) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.mcmId WHERE T2.name = 'Coldsnap'
SELECT code FROM sets WHERE releaseDate = '2017-07-14'
SELECT keyruneCode FROM sets WHERE code = 'PKHC'
SELECT T1.mcmId FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.mcmId WHERE T2.code = 'SS2'
SELECT T1.mcmName FROM sets AS T1 INNER JOIN cards AS T2 ON T1.mcmId = T2.mcmId WHERE T1.releaseDate = '2017-06-09'
SELECT T1.type FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T2.name LIKE '%From the Vault: Lore%'
SELECT T1.parentCode FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.uuid WHERE T1.name = 'Commander 2014 Oversized'
SELECT T1.text, T2.hasContentWarning FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Jim Pavelec'
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = 'Evacuation'
SELECT T1.baseSetSize FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Rinascita di Alara'
SELECT T3.type FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code INNER JOIN cards AS T3 ON T1.language = T3.uuid WHERE T1.translation = 'Huitième édition'
SELECT T2.translation FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'French' AND T2.translation = 'Tendo Ice Bridge'
SELECT COUNT(T2.translation) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Tenth Edition'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'Japanese' AND T1.name = 'Fellwar Stone'
SELECT T1.name FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T2.name = 'Journey into Nyx Hero''s Path' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Ola de frío'
SELECT T1.type FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T1.name = 'Samite Pilgrim'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.name = T2.code WHERE T2.name = 'World Championship Decks 2004' AND T1.convertedManaCost = 3
SELECT T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Mirrodin' AND T2.language = 'Chinese Simplified'
SELECT CAST(SUM(CASE WHEN T1.isNonFoilOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T2.language = 'Japanese'
SELECT CAST(SUM(CASE WHEN T3.isOnlineOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.name) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.setCode INNER JOIN sets AS T3 ON T2.setCode = T3.code WHERE T2.language = 'Portuguese (Brazil)'
SELECT T1.printings FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Aleksi Briclot' AND T1.isTextless = 1
SELECT id FROM sets ORDER BY baseSetSize DESC LIMIT 1
SELECT T1.name FROM cards AS T1 INNER JOIN ( SELECT T2.asciiName, T2.convertedManaCost FROM cards AS T1 WHERE T1.side IS NULL ) AS T2 ON T1.asciiName = T2.asciiName ORDER BY T2.convertedManaCost DESC LIMIT 1
SELECT T.frameEffects FROM ( SELECT T2.frameEffects, COUNT(T1.cardKingdomFoilId) AS num FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId IS NOT NULL AND T1.cardKingdomId IS NOT NULL GROUP BY T2.frameEffects ) AS T ORDER BY T.num DESC LIMIT 1
SELECT COUNT(id) FROM cards WHERE power IS NULL OR power = '*' AND hasFoil = 0 AND duelDeck = 'a'
SELECT T2.code FROM cards AS T1 INNER JOIN sets AS T2 ON T1.uuid = T2.mcmId WHERE T2.type = 'commander' AND T1.isPromo = 1 ORDER BY T2.totalSetSize DESC LIMIT 1
SELECT T1.name FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'duel' ORDER BY T1.manaCost DESC LIMIT 10
SELECT MIN(T1.originalReleaseDate), T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'mythic' AND T2.status = 'legal'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T2.uuid = T1.uuid WHERE T1.artist = 'Volkan Baǵa' AND T2.language = 'French'
SELECT COUNT(T2.name) FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal' AND T2.rarity = 'Rare' AND T2.type = 'Enchantment' AND T2.name = 'Abundance'
SELECT T2.format, T1.name FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' GROUP BY T2.format ORDER BY COUNT(T2.status) DESC LIMIT 1
SELECT T1.language FROM foreign_data AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Battlebond'
SELECT T1.asciiName, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY T1.artist LIMIT 1
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameVersion = '1997' AND T2.artist = 'D. Alexander Gregory' AND T2.hasContentWarning = 1 AND T2.format = 'legacy'
SELECT T1.name, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.edhrecRank = 1 AND T2.status = 'Banned'
SELECT SUM(IIF(T2.releaseDate BETWEEN '1/1/2012' AND '12/31/2015', 1, 0)) / COUNT(T2.code) AS average , MAX(T1.language) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code
SELECT artist FROM cards WHERE availability = 'arena' AND borderColor = 'black'
SELECT uuid FROM legalities WHERE format = 'oldschool'
SELECT COUNT(id) FROM cards WHERE availability = 'paper' AND artist = 'Matthew D. Wilson'
SELECT T1.date, T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Kev Walker' ORDER BY T1.date DESC
SELECT T1.name, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid INNER JOIN sets AS T3 ON T3.code = T2.setCode WHERE T3.name = 'Hour of Devastation' AND T2.status = 'Legal'
SELECT T2.name FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = 'Korean' AND T1.translation = 'false'
SELECT DISTINCT T1.frameVersion, T3.status FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid INNER JOIN sets AS T3 ON T1.code = T3.code WHERE T1.artist = 'Allen Williams'
SELECT DisplayName FROM users WHERE DisplayName IN ('Harlan', 'Jarrod Dixon') ORDER BY Reputation DESC LIMIT 1
SELECT T2.UserDisplayName FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE STRFTIME('%Y', T2.CreationDate) = '2011'
SELECT COUNT(Id) FROM users WHERE LastAccessDate > '2014-09-01'
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.DownVotes > 1 AND T1.UpVotes > 100
SELECT COUNT(OwnerId) FROM posts WHERE Score > 10 AND strftime('%Y', CreationDate) > '2013'
SELECT COUNT(T1.OwnerUserId) FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T3.DisplayName = 'csgillespie'
SELECT T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie'
SELECT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Eliciting priors from experts'
SELECT T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie' ORDER BY T1.ViewCount DESC LIMIT 1
SELECT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.FavoriteCount DESC LIMIT 1
SELECT SUM(T2.CommentCount) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'csgillespie'
SELECT T1.AnswerCount FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie' ORDER BY T1.AnswerCount DESC LIMIT 1
SELECT T2.UserDisplayName FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Examples for teaching: Correlation does not mean causation'
SELECT COUNT(T1.OwnerId) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'csgillespie' AND T2.ParentId IS NULL
SELECT DISTINCT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.ClosedDate IS NOT NULL
SELECT COUNT(T2.OwnerUserId) FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id INNER JOIN users AS T3 ON T2.OwnerUserId = T3.Id WHERE T3.Age > 65 AND T1.Score >= 20
SELECT T2.Location FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Eliciting priors from experts'
SELECT T1.Body FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T2.TagName = 'bayesian'
SELECT T1.Body FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId GROUP BY T1.Id ORDER BY COUNT(T1.Tags) DESC LIMIT 1
SELECT COUNT(T1.Id) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'csgillespie'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'csgillespie'
SELECT COUNT(T1.Name) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'csgillespie' AND STRFTIME('%Y', T1.Date) = '2011'
SELECT T2.DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T2.DisplayName ORDER BY COUNT(T1.Id) DESC LIMIT 1
SELECT AVG(T1.Score) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'csgillespie'
SELECT CAST(COUNT(T1.Id) AS REAL) / COUNT(DISTINCT T1.DisplayName) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Views > 200
SELECT CAST(SUM(CASE WHEN T2.Age > 65 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Score > 5
SELECT SUM(T2.BountyAmount) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.Id = 58 AND T2.CreationDate = '2010-07-19'
SELECT CreationDate FROM votes GROUP BY CreationDate ORDER BY COUNT(PostId) DESC LIMIT 1
SELECT COUNT(Id) FROM badges WHERE Name = 'Revival'
SELECT T1.Title FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score = ( SELECT MAX(Score) FROM comments )
SELECT SUM(T2.Comment) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ViewCount = 1910
SELECT T2.FavoriteCount FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 3025 AND T1.CreationDate = '2014-04-23 20:29:39'
SELECT Text FROM comments WHERE PostId = 107829 AND CommentCount = 1
SELECT CASE WHEN T2.ClosedDate IS NULL THEN 'Well-finished' ELSE 'Not well-finished' END FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 23853 AND T1.CreationDate = '2013-07-12 09:08:18.0'
SELECT T1.Reputation FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Id = 65041
SELECT COUNT(T2.OwnerUserId) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'Tiago Pasqualini'
SELECT T2.UserDisplayName FROM votes AS T1 INNER JOIN postHistory AS T2 ON T1.UserId = T2.UserId WHERE T1.Id = 6347
SELECT SUM(T2.BountyAmount) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId INNER JOIN posts AS T3 ON T2.PostId = T3.Id WHERE T3.Title LIKE '%data visualization%'
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'DatEpicCoderGuyWhoPrograms'
SELECT CAST(SUM(CASE WHEN T1.OwnerUserId = 24 THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T2.OwnerUserId = 24 THEN 1 ELSE 0 END) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId
SELECT ViewCount FROM posts WHERE Title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17
SELECT DisplayName FROM users WHERE WebsiteUrl = 'http://stackoverflow.com'
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'SilentGhost'
SELECT T1.DisplayName FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = 'Thank you user93!'
SELECT Text FROM comments WHERE UserId = ( SELECT Id FROM users WHERE DisplayName = 'A Lion' )
SELECT T2.DisplayName, T2.Reputation FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Understanding what Dassault iSight is doing?'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'How does gentle boosting differ from AdaBoost?'
SELECT T1.DisplayName FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Necromancer' LIMIT 10
SELECT T2.DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Open source tools for visualizing multi-dimensional data'
SELECT T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T2.DisplayName = 'Vebjorn Ljosa'
SELECT T1.Score, T2.WebsiteUrl FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Yevgeny'
SELECT T1.Text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Why square the difference instead of taking the absolute value in standard deviation?'
SELECT SUM(T2.BountyAmount) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.Title LIKE 'data%'
SELECT T3.OwnerUserId FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T1.Title LIKE '%variance%' AND T2.BountyAmount = 50
SELECT T1.Title, T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Tags LIKE '%humor%' GROUP BY T1.Title, T2.Text
SELECT COUNT(Id) FROM comments WHERE UserId = 13
SELECT Id FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY Views LIMIT 1
SELECT COUNT( UserId ) FROM badges WHERE Name = 'Supporter' AND strftime('%Y', Date) = '2011'
SELECT COUNT(UserId) FROM badges WHERE Name IN (( SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Reputation = 1 GROUP BY T1.Name, T2.Id HAVING COUNT(T1.Name) > 5 ))
SELECT COUNT(T2.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = 'New York' AND T1.Name = 'Supporter' AND T1.Name = 'Teacher'
SELECT T2.UserId, T2.Reputation FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.PostId = 1
SELECT T1.UserId FROM postHistory AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Views >= 1000 GROUP BY T1.UserId HAVING COUNT(T1.PostId) = 1
SELECT T2.UserId, T2.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T2.UserId ORDER BY COUNT(T1.UserId) DESC LIMIT 1
SELECT COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = 'India' AND T1.Name = 'Teacher'
SELECT CAST(SUM(IIF(T1.Year = 2010, 1, 0)) AS REAL) * 100 / SUM(IIF(T1.Year = 2010, 1, 0)) + SUM(IIF(T1.Year = 2011, 1, 0)) * 100 / SUM(IIF(T1.Year = 2010, 1, 0)) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Student'
SELECT T1.PostHistoryTypeId, COUNT(DISTINCT T2.UserId) FROM postHistory AS T1 INNER JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.PostId = 3720 GROUP BY T1.PostHistoryTypeId
SELECT T1.ViewCount FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE T2.RelatedPostId = 61217
SELECT T1.Score, T2.LinkTypeId FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE T2.PostId = 395
SELECT T1.PostId, T2.OwnerUserId FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.Score > 60
SELECT SUM(T1.FavoriteCount) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Id = 686 AND STRFTIME('%Y', T1.CreationDate) = '2011'
SELECT AVG(T1.UpVotes), AVG(T2.Age) FROM users AS T1 INNER JOIN users AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T2.OwnerUserId HAVING COUNT(T2.OwnerUserId) > 10
SELECT COUNT( UserId) FROM badges WHERE Name = 'Announcer'
SELECT Name FROM badges WHERE Date = '2010-07-19 19:39:08.0'
SELECT COUNT(PostId) FROM comments WHERE Score > 60
SELECT Text FROM comments WHERE CreationDate = '2010-07-19 19:16:14.0'
SELECT COUNT(Id) FROM posts WHERE Score = 10
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T1.Reputation DESC LIMIT 1
SELECT T1.Reputation FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Date = '2010-07-19 19:39:08.0'
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Pierre'
SELECT T1.Date FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = 'Rochester, NY'
SELECT CAST(SUM(IIF(T1.Name = 'Teacher', 1, 0)) AS REAL) * 100 / COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id
SELECT CAST(SUM(CASE WHEN T2.Age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.Age) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Organizer'
SELECT T2.Score FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.CreationDate = '2010-07-19 19:19:56'
SELECT Text FROM comments WHERE CreationDate LIKE '2010-07-19%'
SELECT T1.Age FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = 'Vienna, Austria'
SELECT COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Supporter' AND T2.Age >= 19 AND T2.Age <= 65
SELECT COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = '2010-07-19 19:39:08.0'
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation ASC LIMIT 1
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Sharpie'
SELECT COUNT(T1.UserId) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Supporter' AND T2.Age > 65
SELECT DisplayName FROM users WHERE Id = 30
SELECT COUNT(Location) FROM users WHERE Location = 'New York City'
SELECT COUNT(Id) FROM votes WHERE CreationDate LIKE '2010%'
SELECT COUNT(Id) FROM users WHERE Age >= 19 AND Age <= 65
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN STRFTIME('%Y', T1.CreationDate) = '2010' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN STRFTIME('%Y', T1.CreationDate) = '2011' THEN 1 ELSE 0 END) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id
SELECT T4.TagName FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId INNER JOIN posts AS T3 ON T2.PostId = T3.Id INNER JOIN tags AS T4 ON T3.ExcerptPostId = T4.ExcerptPostId WHERE T1.DisplayName = 'John Salvatier'
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Daniel Vassallo'
SELECT COUNT(T1.Id) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Harlan'
SELECT T1.PostId FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'slashnick' ORDER BY T1.AnswerCount DESC LIMIT 1
SELECT T1.OwnerUserId FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName IN ('Harvey Motulsky', 'Noah Snyder') ORDER BY T1.ViewCount DESC LIMIT 1
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Matt Parker' AND T2.PostId > 4
SELECT COUNT(T2.Score) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Neil McGuigan' AND T2.Score < 60
SELECT T1.Tags FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Mark Meckes' AND T1.CommentCount = 0 GROUP BY T1.Tags
SELECT T2.DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Organizer'
SELECT CAST(SUM(CASE WHEN T2.TagName = 'r' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Tags = T2.Id
SELECT SUM(CASE WHEN T1.OwnerDisplayName = 'Mornington' THEN T2.ViewCount ELSE 0 END) - SUM(CASE WHEN T1.OwnerDisplayName = 'Amos' THEN T2.ViewCount ELSE 0 END) AS DIFF FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId
SELECT COUNT(UserId) FROM badges WHERE Name = 'Commentator' AND Date LIKE '2014%'
SELECT COUNT(Id) FROM posts WHERE CreationDate LIKE '2010-07-21%'
SELECT DisplayName, Age FROM users WHERE Views = ( SELECT MAX(Views) FROM users )
SELECT LastEditDate, LastEditorUserId FROM posts WHERE Title = 'Detecting a given face in a database of facial images'
SELECT COUNT(Id) FROM comments WHERE UserId = 13 AND Score < 60
SELECT T1.Title, T3.UserDisplayName FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T2.Score > 60
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE STRFTIME('%Y', T1.Date) = '2011' AND T2.Location = 'North Pole'
SELECT T1.OwnerDisplayName, T2.WbsiteUrl FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.FavoriteCount > 150
SELECT COUNT(PostId), LastEditDate FROM posts WHERE Title = 'What is the best introductory Bayesian statistics textbook'
SELECT T1.LastAccessDate, T1.Location FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Outliers'
SELECT T2.Title FROM postLinks AS T1 INNER JOIN posts AS T2 ON T2.Id = T1.RelatedPostId WHERE T2.Tags LIKE 'How to tell if something happened in a data set which monitors a value over time'
SELECT T2.PostId, T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.UserDisplayName = 'Samuel' AND STRFTIME('%Y', T2.Date) = '2013'
SELECT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.ViewCount DESC LIMIT 1
SELECT DISTINCT T1.OwnerUserId, T1.OwnerDisplayName, T3.Location FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId INNER JOIN users AS T3 ON T1.OwnerUserId = T3.Id WHERE T2.TagName = 'hypothesis-testing'
SELECT T2.RelatedPostId, T2.LinkTypeId FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.RelatedPostId WHERE T1.Title = 'What are principal component scores?'
SELECT T1.ParentId FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId ORDER BY T1.Score DESC LIMIT 1
SELECT T1.DisplayName, T1.WebsiteUrl FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT Title FROM posts ORDER BY ViewCount DESC LIMIT 5
SELECT COUNT(T2.TagName) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T1.ViewCount BETWEEN 5000 AND 7000
SELECT OwnerUserId FROM posts WHERE FavoriteCount = ( SELECT MAX(FavoriteCount) FROM posts )
SELECT Age FROM users ORDER BY Reputation DESC LIMIT 1
SELECT COUNT(T1.Id) FROM votes AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE STRFTIME('%Y', T1.CreationDate) = '2011' AND T1.BountyAmount = 50
SELECT Id FROM users WHERE Age = ( SELECT MIN(Age) FROM users )
SELECT SUM(Score) FROM posts WHERE LasActivityDate LIKE '2010-07-19%'
SELECT CAST(SUM(CASE WHEN AnswerCount <= 2 THEN 1 ELSE 0 END) AS REAL) / 12 FROM posts WHERE STRFTIME('%Y', CreationDate) = '2010'
SELECT T2.PostId FROM votes AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 1465 ORDER BY T2.FavoriteCount DESC LIMIT 1
SELECT T1.Title FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId ORDER BY T1.CreaionDate ASC LIMIT 1
SELECT T1.DisplayName FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.DisplayName ORDER BY COUNT(T2.Name) DESC LIMIT 1
SELECT MIN(T2.CreationDate) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'chl'
SELECT T2.CreationDate FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId ORDER BY T1.Age LIMIT 1
SELECT T2.DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Autobiographer' ORDER BY T1.Date LIMIT 1
SELECT COUNT(T1.OwnerUserId) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.FavoriteCount >= 4 AND T2.Location = 'United Kingdom'
SELECT AVG(T1.PostId) FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T2.Age ORDER BY T2.Age DESC LIMIT 1
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT COUNT(Id) FROM users WHERE Reputation > 2000 AND Views > 1000
SELECT DisplayName FROM users WHERE Age >= 19 AND Age <= 65
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Jay Stevens' AND STRFTIME('%Y', T2.CreationDate) = '2010'
SELECT T1.Id, T1.Title FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Harvey Motulsky' ORDER BY T1.ViewCount DESC LIMIT 1
SELECT Id, Title FROM posts WHERE Score = ( SELECT MAX(Score) FROM posts )
SELECT AVG(T1.Score) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Stephen Turner'
SELECT T2.UserDisplayName FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T1.ViewCount > 20000 AND STRFTIME('%Y', T1.CreationDate) = '2011'
SELECT Id, OwnerDisplayName FROM posts WHERE STRFTIME('%Y', CreationDate) = '2010' ORDER BY FavoriteCount DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.Reputation > 1000 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Reputation) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE strftime('%Y', T2.CreationDate) = '2011'
SELECT CAST(SUM(CASE WHEN Age >= 13 AND Age <= 18 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(Id) FROM users
SELECT T2.ViewCount, T1.DisplayName FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T2.Text LIKE 'Computer Game Datasets' ORDER BY T2.ViewCount DESC LIMIT 1
SELECT COUNT(PostId) FROM posts WHERE ViewCount > ( SELECT AVG(ViewCount) FROM posts )
SELECT COUNT(T2.Id) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Score = ( SELECT MAX(Score) FROM posts )
SELECT COUNT(Id) FROM posts WHERE ViewCount > 35000 AND CommentCount = 0
SELECT T1.UserDisplayName, T1.Location FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T2.PostId = 183 ORDER BY T2.LastEditDate DESC LIMIT 1
SELECT T1.Name FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Emmett' ORDER BY T1.Date DESC LIMIT 1
SELECT COUNT(OwnerId) FROM ( SELECT T2.OwnerUserId AS ownerId FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Age BETWEEN 19 AND 65 AND T1.UpVotes > 5000 )
SELECT 365 * (strftime('%Y', T1.Date) - strftime('%Y', T2.creationdate)) + 30 * (strftime('%m', T1.Date) - strftime('%m', T2.creationdate)) + strftime('%d', T1.Date) - strftime('%d', T2.creationdate) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Zolomon'
SELECT COUNT(T1.PostId), COUNT(T1.Comment) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId INNER JOIN users AS T3 ON T2.UserId = T3.Id WHERE T3.AccountId = ( SELECT AccountId FROM users ORDER BY CreationDate DESC LIMIT 1 )
SELECT T1.Text, T2.DisplayName FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id INNER JOIN posts AS T3 ON T1.PostId = T3.Id WHERE T3.Title = 'Analysing wind data with R' ORDER BY T1.CreationDate DESC LIMIT 10
SELECT COUNT(UserId) FROM badges WHERE Name = 'Citizen Patrol'
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Tags = T2.Id WHERE T2.TagName = 'careers'
SELECT T1.Reputation, T2.ViewCount FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'Jarrod Dixon'
SELECT SUM(T1.CommentCount) + SUM(T1.AnswerCount) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Clustering 1D data'
SELECT CreationDate FROM users WHERE DisplayName = 'IrishStat'
SELECT COUNT(PostId) FROM votes WHERE BountyAmount > 30
SELECT CAST(SUM(CASE WHEN T1.Score > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Score) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id INNER JOIN comments AS T3 ON T1.Id = T3.PostId INNER JOIN votes AS T4 ON T1.Id = T4.PostId
SELECT COUNT(PostId) FROM posts WHERE Score < 20
SELECT COUNT(Id) FROM tags WHERE Count <= 20 AND Id < 15
SELECT ExcerptPostId, WikiPostId FROM tags WHERE TagName = 'sample'
SELECT T1.Reputation, T1.UpVotes FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text LIKE 'fine, you win :)'
SELECT T1.Text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title LIKE '%linear regression%'
SELECT Text FROM comments WHERE PostId = ( SELECT Id FROM posts WHERE ViewCount BETWEEN 100 AND 150 ORDER BY Score DESC LIMIT 1 )
SELECT T1.CreationDate, T2.Age FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.WelcomeUrl LIKE 'http://www.example.com/'
SELECT COUNT(T1.Id) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score = 0 AND T1.ViewCount < 5
SELECT COUNT(PostId) FROM posts WHERE CommentCount = 1 AND Score = 0
SELECT COUNT(T2.UserId) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score = 0 AND T2.UserId = users.Age(40)
SELECT T1.PostId, T2.CommentCount FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Group differences on a five point Likert item'
SELECT T1.Score FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Text LIKE 'R is also lazy evaluated.'
SELECT T2.Text FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Harvey Motulsky'
SELECT T1.UserDisplayName FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Score BETWEEN 1 AND 5 AND T2.DownVotes = 0
SELECT CAST(SUM(CASE WHEN T1.UpVotes = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Score) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Score BETWEEN 5 AND 10
SELECT T2.power_name FROM superhero AS T1 INNER JOIN superpower AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = '3-D Man'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.height_cm > 200
SELECT T1.full_name FROM superhero AS T1 INNER JOIN ( SELECT T2.power_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id GROUP BY T1.power_name HAVING COUNT(T1.power_name) > 15 ) AS T2 ON T1.id = T2.hero_id
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Blue'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = 'Apocalypse'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.eye_colour_id = 1 AND T3.power_name = 'Agility' AND T1.gender_id = 1
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id INNER JOIN superpower AS T3 ON T1.id = T3.power_id WHERE T2.colour = 'Blue' AND T1.eye_colour_id = T2.id AND T2.colour = 'Blond' AND T3.power_name = 'Agility'
SELECT COUNT(T2.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'Marvel Comics'
SELECT T2.superhero_name FROM superhero AS T1 INNER JOIN ( SELECT superhero_name FROM superhero WHERE publisher_id = 1 ORDER BY height_cm DESC LIMIT 1 ) AS T2 ON T1.superhero_name = T2.superhero_name INNER JOIN publisher AS T3 ON T3.id = T1.publisher_id WHERE T3.publisher_name = 'Marvel Comics'
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Sauron'
SELECT T1.eye_colour_id FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' GROUP BY T1.eye_colour_id ORDER BY COUNT(T1.eye_colour_id) DESC LIMIT 1
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T3.superhero_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id INNER JOIN publisher AS T4 ON T3.publisher_id = T4.id WHERE T4.publisher_name = 'Marvel Comics' AND T1.power_name = 'Super Strength'
SELECT COUNT(T2.publisher_id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics'
SELECT T4.publisher_name FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id INNER JOIN publisher AS T4 ON T3.publisher_id = T4.id WHERE T1.attribute_name = 'Speed' ORDER BY T2.attribute_value LIMIT 1
SELECT COUNT(T2.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN colour AS T3 ON T2.eye_colour_id = T3.id WHERE T1.publisher_name = 'Marvel Comics' AND T3.colour = 'Gold'
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Blue Beetle II'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Blond'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Intelligence' ORDER BY T2.attribute_value LIMIT 1
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'Copycat'
SELECT T3.superhero_name FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.attribute_name = 'Durability' AND T2.attribute_value < 50
SELECT T3.superhero_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = 'Death Touch'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Strength' AND T1.gender = 'Female' AND T2.attribute_value = 100
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id GROUP BY T1.superhero_name ORDER BY COUNT(T1.superhero_name) DESC LIMIT 1
SELECT COUNT(T2.id) FROM race AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T1.race = 'vampire'
SELECT CAST(SUM(CASE WHEN T1.alignment = 'Bad' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id), COUNT(CASE WHEN T1.publisher_name = 'Marvel Comics' THEN 1 ELSE NULL END) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id
SELECT SUM(CASE WHEN T2.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) - SUM(CASE WHEN T2.publisher_name = 'DC Comics' THEN 1 ELSE 0 END) AS DIFFERENCE FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id
SELECT id FROM publisher WHERE publisher_name = 'Star Trek'
SELECT AVG(T2.attribute_value) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id
SELECT COUNT(id) FROM superhero WHERE full_name IS NULL
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.id = 75
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.superhero_name = 'Deathlok'
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 'Female'
SELECT T1.power_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender = 'Male' LIMIT 5
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.height_cm BETWEEN 170 AND 190 AND T2.colour = 'No Colour'
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 56
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Demi-God' LIMIT 5
SELECT COUNT(id) FROM superhero WHERE alignment_id = 'Bad'
SELECT T1.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 169
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T1.height_cm = 185 AND T1.race_id = ( SELECT race_id FROM race WHERE race = 'human' )
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id ORDER BY T1.weight_kg DESC LIMIT 1
SELECT CAST(COUNT(CASE WHEN T2.publisher_name = 'Marvel Comics' THEN T1.id ELSE NULL END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.height_cm BETWEEN 150 AND 180
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 'Male' AND T1.weight_kg > ( SELECT AVG(T1.weight_kg) * 0.79 FROM superhero AS T1 )
SELECT T2.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id GROUP BY T2.power_id ORDER BY COUNT(T2.power_id) DESC LIMIT 1
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Abomination'
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 1
SELECT COUNT(T2.hero_id) FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T1.power_name = 'stealth'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'strength' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT CAST(COUNT(T1.id) AS REAL) / COUNT(CASE WHEN T2.id = 1 THEN 1 ELSE NULL END) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id
SELECT COUNT(T2.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'Dark Horse Comics'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN hero_attribute AS T3 ON T1.id = T3.hero_id INNER JOIN attribute AS T4 ON T3.attribute_id = T4.id WHERE T2.publisher_name = 'Dark Horse Comics' ORDER BY T4.attribute_value DESC LIMIT 1
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = 'Abraham Sapien'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Flight'
SELECT T2.eye_colour_id, T2.hair_colour_id, T2.skin_colour_id FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN gender AS T3 ON T2.gender_id = T3.id WHERE T3.gender = 'Female' AND T1.publisher_name = 'Dark Horse Comics'
SELECT T1.superhero_name, T3.publisher_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id INNER JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T1.hair_colour_id = T1.eye_colour_id AND T1.hair_colour_id = T1.skin_colour_id
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'A-Bomb'
SELECT CAST(SUM(CASE WHEN T2.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.gender) FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.skin_colour_id
SELECT T1.superhero_name, T3.race FROM superhero AS T1 INNER JOIN race AS T3 ON T1.race_id = T3.id WHERE T1.full_name = 'Charles Chandler'
SELECT T2.gender FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.superhero_name = 'Agent 13'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Adaptation'
SELECT COUNT(T2.power_id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Amazo'
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.full_name = 'Hunter Zolomon'
SELECT T1.height_cm FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Amber'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Black' AND T1.eye_colour_id = T2.id
SELECT T1.eye_colour_id FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Gold'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Vampire'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Neutral'
SELECT COUNT(T2.hero_id) FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T1.attribute_name = 'Strength' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT T1.race, T1.alignment FROM race AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.superhero_name = 'Cameron Hicks'
SELECT CAST(COUNT(CASE WHEN T3.gender = 'Female' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T2.publisher_name) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN gender AS T3 ON T2.gender_id = T3.id WHERE T1.publisher_name = 'Marvel Comics'
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien'
SELECT SUM(CASE WHEN full_name = 'Emil Blonsky' THEN weight_kg ELSE 0 END) - SUM(CASE WHEN full_name = 'Charles Chandler' THEN weight_kg ELSE 0 END) FROM superhero
SELECT AVG(height_cm) FROM superhero
SELECT T4.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id INNER JOIN superhero AS T4 ON T3.id = T4.id WHERE T1.superhero_name = 'Abomination'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id INNER JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T2.id = 21 AND T3.id = 1
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Speed' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT COUNT(id) FROM superhero WHERE alignment_id = 3
SELECT T1.attribute_name, T2.attribute_value FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id INNER JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T3.superhero_name = '3-D Man'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Brown' AND T2.id = 3
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name IN ('Hawkman', 'Karate Kid', 'Speedy')
SELECT COUNT(id) FROM superhero WHERE publisher_id = 1
SELECT CAST(SUM(CASE WHEN T1.eye_colour_id = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Blue'
SELECT SUM(CASE WHEN T2.gender = 'Female' THEN 1 ELSE 0 END) / SUM(CASE WHEN T2.gender = 'Male' THEN 1 ELSE 0 END) AS ratio FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT id FROM superpower WHERE power_name = 'cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = 0 OR weight_kg IS NULL
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.full_name = 'Karen Beecher-Duncan'
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.full_name = 'Helen Parr'
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 108 AND T1.height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T3.race FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN race AS T3 ON T1.race_id = T3.id ORDER BY T2.attribute_value DESC LIMIT 1
SELECT T2.alignment, T1.power_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = 'Atom IV'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Blue' LIMIT 5
SELECT AVG(T2.attribute_value) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T3.id = 3
SELECT T1.colour FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.skin_colour_id INNER JOIN hero_attribute AS T3 ON T2.id = T3.hero_id WHERE T3.attribute_value = 100
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 2 AND T1.alignment_id = 1
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT T3.race FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id INNER JOIN race AS T3 ON T1.race_id = T3.id WHERE T2.colour = 'blue' AND T1.gender = 'male'
SELECT CAST(COUNT(CASE WHEN T2.gender = 2 THEN T2.id ELSE NULL END) AS REAL) * 100 / COUNT(T2.gender) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.alignment_id = 2
SELECT COUNT(CASE WHEN T1.eye_colour_id = 1 THEN 1 ELSE NULL END) - COUNT(CASE WHEN T1.eye_colour_id = 7 THEN 1 ELSE NULL END) AS DIFFERENCE FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.weight_kg IS NULL OR T1.weight_kg = 0
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T1.superhero_name = 'Hulk' AND T3.attribute_name = 'Strength'
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.superhero_name = 'Ajax'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id INNER JOIN race AS T3 ON T1.race_id = T3.id WHERE T2.colour = 'Green' AND T1.alignment = 'Bad'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' AND T1.gender = 'Female'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Wind Control'
SELECT T3.gender FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = 'Phoenix Force'
SELECT T1.superhero_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics' ORDER BY T1.weight_kg DESC LIMIT 1
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN race AS T3 ON T1.race_id = T3.id WHERE T2.publisher_name = 'Dark Horse Comics' AND T3.race != 'Human'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'Speed' AND T2.attribute_value = 100
SELECT SUM(CASE WHEN T2.publisher_name = 'DC Comics' THEN 1 ELSE 0 END) - SUM(CASE WHEN T2.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) AS diff FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id
SELECT T3.attribute_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T1.superhero_name = 'Black Panther' ORDER BY T2.attribute_value LIMIT 1
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = 'Abomination'
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT CAST(SUM(CASE WHEN T1.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.gender) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'George Lucas'
SELECT CAST(SUM(CASE WHEN T2.alignment = 'Good' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.alignment) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'Marvel Comics'
SELECT COUNT(id) FROM superhero WHERE full_name LIKE 'John%'
SELECT T1.hero_id FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id ORDER BY T1.attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT T1.full_name FROM superhero AS T1 WHERE T1.weight_kg < 100 AND T1.eye_colour_id = ( SELECT eye_colour_id FROM colour WHERE colour = 'brown' )
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = 'Aquababy'
SELECT T1.weight_kg, T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.id = 40
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id INNER JOIN attribute AS T3 ON T2.attribute_id = T3.id INNER JOIN hero_attribute AS T4 ON T3.id = T4.attribute_id WHERE T1.gender_id = 1 AND T1.alignment_id = 1
SELECT T1.id FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Intelligence'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = 'Blackwulf'
SELECT T1.power_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.height_cm * 100 > ( SELECT AVG(T3.height_cm) * 80 FROM superhero AS T3 )
SELECT T2.driverRef FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 20 ORDER BY T1.q1 DESC LIMIT 5
SELECT T2.surname FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 19 ORDER BY T1.q2 LIMIT 1
SELECT T2.year FROM circuits AS T1 INNER JOIN races AS T2 ON T2.circuitId = T1.circuitId WHERE T1.location = 'Shanghai' GROUP BY T2.year
SELECT T1.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Circuit de Barcelona-Catalunya'
SELECT T1.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.country = 'Germany'
SELECT T1.positionText FROM constructorStandings AS T1 INNER JOIN circuits AS T2 ON T1.raceId = T2.circuitId INNER JOIN constructors AS T3 ON T1.constructorId = T3.constructorId WHERE T3.name = 'Renault'
SELECT COUNT(T2.name) FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.year = 2010 AND T1.country NOT IN ('Asia', 'Europe')
SELECT T1.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.country = 'Spain'
SELECT T1.lat, T1.lng FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Australian Grand Prix'
SELECT url FROM races WHERE circuitId = ( SELECT circuitId FROM circuits WHERE name = 'Sepang International Circuit' )
SELECT T2.time FROM circuits AS T1 INNER JOIN races AS T2 ON T2.circuitId = T1.circuitId WHERE T1.name = 'Sepang International Circuit'
SELECT T2.lat, T2.lng FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Abu Dhabi Grand Prix'
SELECT T2.country FROM constructorResults AS T1 INNER JOIN circuits AS T2 ON T1.constructorId = T2.circuitId WHERE T1.points = 1 AND T1.raceId = 24
SELECT T1.q1 FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Bruno' AND T2.surname = 'Senna' AND T1.raceId = 354
SELECT T3.nationality FROM qualifying AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T1.q2 = '0:01:40' AND T1.number = 355
SELECT T2.number FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.position = 'Q3' AND T1.q3 = 'M:SS' AND T1.raceId = 903
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Bahrain Grand Prix' AND T1.year = 2007 AND T2.time IS NULL
SELECT T2.url FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceId = 901
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.date = '2015-11-29'
SELECT T2.forename, T2.surname FROM laps AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T3.raceId = 592 AND T2.dob IS NOT NULL ORDER BY T2.dob DESC LIMIT 1
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.lap = 161 AND T1.time = '0:01:27'
SELECT T2.nationality FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 933 ORDER BY T1.fastestLapSpeed DESC LIMIT 1
SELECT T2.lat, T2.lng FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Malaysian Grand Prix'
SELECT T1.url FROM constructors AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId WHERE T2.points = ( SELECT MAX(points) FROM constructorResults WHERE raceId = 9 )
SELECT T1.q1 FROM qualifying AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T1.driverId = ( SELECT driverId FROM drivers WHERE forename = 'Lucas' AND surname = 'di Grassi' ) AND T2.raceId = 345
SELECT T3.nationality FROM laps AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId INNER JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T2.q2 = '0:01:15' AND T2.raceId = 347
SELECT T2.code FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.q3 = 'M:01:33' AND T1.raceId = 45
SELECT T2.time FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T1.forename = 'Bruce' AND T1.surname = 'McLaren' AND T3.raceId = 743
SELECT T2.driverId FROM qualifying AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = ( SELECT raceId FROM races WHERE year = 2006 AND name = 'San Marino Grand Prix' ) AND T2.position = 2
SELECT url FROM seasons WHERE year = ( SELECT year FROM races WHERE raceId = 901 )
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.date = '2015-11-29'
SELECT T2.forename, T2.surname FROM races AS T1 INNER JOIN drivers AS T2 ON T1.raceId = T2.driverId WHERE T1.raceId = 872 ORDER BY T2.dob DESC LIMIT 1
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 348 ORDER BY T1.time DESC LIMIT 1
SELECT T2.nationality FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.fasterLapSpeed DESC LIMIT 1
SELECT CAST((SELECT T2.fastestLapSpeed FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Paul' AND T1.surname = 'di Resta' AND T1.driverId = 853) - ( SELECT T2.fastestLapSpeed FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Paul' AND T1.surname = 'di Resta' AND T1.driverId = 854 )) AS PER FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Paul' AND T1.surname = 'di Resta' AND T1.driverId = 853
SELECT CAST(SUM(CASE WHEN T2.time = '1983-07-16' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.driverId) FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId
SELECT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.country = 'Singapore' ORDER BY T1.year LIMIT 1
SELECT name FROM races WHERE year = 2005 ORDER BY name DESC
SELECT name FROM races WHERE year = ( SELECT year FROM races ORDER BY year ASC LIMIT 1 )
SELECT name, date FROM races WHERE year = 1999 ORDER BY round DESC LIMIT 1
SELECT year FROM races GROUP BY year ORDER BY COUNT(year) DESC LIMIT 1
SELECT DISTINCT T1.name FROM races AS T1 INNER JOIN ( SELECT raceId FROM races WHERE year != 2000 ) AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2017
SELECT T3.country, T2.name, T2.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId INNER JOIN ( SELECT DISTINCT T1.year, T2.name, T2.location AS loc FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 1983 ) AS T3 ON T1.circuitId = T3.circuitId ORDER BY T3.year LIMIT 1
SELECT T1.year FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = 'British Grand Prix' AND T2.circuitId = 'BRANDS-HATCH' ORDER BY T1.year DESC LIMIT 1
SELECT COUNT(T1.year) FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId WHERE T3.name = 'Silverstone Circuit' AND T2.name = 'British Grand Prix'
SELECT T2.forename, T2.surname FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.year = 2010 AND T1.name = 'Singapore Grand Prix' AND T2.position = 1
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId ORDER BY T2.points DESC LIMIT 1
SELECT T2.driverId, T1.points FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = ( SELECT raceId FROM races WHERE year = 2017 AND name = '2017 Chinese Grand Prix' ) ORDER BY T1.points DESC LIMIT 3
SELECT T2.lap, T2.driverId, T1.name FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId ORDER BY T2.milliseconds LIMIT 1
SELECT AVG(T2.milliseconds) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'Malaysian Grand Prix' AND T3.forename = 'Lewis' AND T3.surname = 'Hamilton' AND T1.year = 2009
SELECT CAST(SUM(CASE WHEN T1.position > 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.driverId) FROM driverStandings AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId WHERE T1.driverId IN ( SELECT driverId FROM drivers WHERE surname = 'Hamilton' ) AND T2.year >= 2010
SELECT T2.forename, T2.surname, T1.points FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId GROUP BY T2.driverId ORDER BY T1.points DESC LIMIT 1
SELECT T1.YEAR(CURRENT_TIMESTAMP) - T1.YEAR(dob), T1.forename, T1.surname FROM drivers AS T1 INNER JOIN constructors AS T2 ON T1.driverRef = T2.constructorId WHERE T1.nationality = 'Japanese' ORDER BY T1.dob DESC LIMIT 1
SELECT T2.circuitId FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year BETWEEN 1990 AND 2000 GROUP BY T2.circuitId
SELECT T2.name, T2.location, T1.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.year = 2006 AND T1.country = 'USA'
SELECT T2.name, T1.name, T1.location FROM circuits AS T1 INNER JOIN races AS T2 ON T2.circuitId = T1.circuitId WHERE T2.`date` LIKE '2005-09%'
SELECT T2.raceId FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Alex' AND T1.surname = 'Yoon' AND T2.position < 20
SELECT T1.points FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId INNER JOIN driverStandings AS T4 ON T1.driverId = T4.driverId WHERE T3.name = 'Sepang International Circuit' AND T4.driverId = 117
SELECT T2.raceId, T2.year, T1.surname, T1.forename FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Michael' AND T1.surname = 'Schumacher' ORDER BY T2.position ASC LIMIT 1
SELECT CAST(SUM(T2.points) AS REAL) / COUNT(T2.points) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN driverStandings AS T3 ON T2.driverId = T3.driverId WHERE T1.year = 2000 AND T3.forename = 'Eddie' AND T3.surname = 'Irving'
SELECT T1.year, T2.points FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.forename = 'Lewis' AND T3.surname = 'Hamilton' ORDER BY T1.year LIMIT 1
SELECT T1.name, T2.country FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2017 ORDER BY T1.date
SELECT T1.name, T2.year, T3.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId INNER JOIN results AS T3 ON T1.raceId = T3.raceId GROUP BY T1.name, T2.year, T3.location ORDER BY SUM(T3.laps) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.country = 'Germany' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.name) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'European Grand Prix'
SELECT lat, lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT name FROM circuits WHERE name = 'Silverstone Circuit, Hockenheimring' OR name = 'Hungaroring' ORDER BY lat DESC LIMIT 1
SELECT circuitRef FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT COUNT(driverId) FROM drivers WHERE code IS NULL
SELECT T2.country FROM drivers AS T1 INNER JOIN circuits AS T2 ON T1.driverRef = T2.circuitId ORDER BY T1.dob DESC LIMIT 1
SELECT surname FROM drivers WHERE nationality = 'italian'
SELECT url FROM drivers WHERE surname = 'Davidson' AND forename = 'Anthony'
SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton'
SELECT T2.circuitId FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2009 AND T1.name = '2009 Spanish Grand Prix'
SELECT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Silverstone Circuit'
SELECT T2.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Silverstone'
SELECT T1.time FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId WHERE T2.year = 2010 AND T3.name = 'Abu Dhabi' AND T2.date LIKE '%/%/10'
SELECT COUNT(T2.name) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.country = 'Italy'
SELECT T1.date FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Barcelona-Catalunya' AND T1.name = 'Formula_1'
SELECT T2.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2009 AND T2.country = 'Spain'
SELECT T1.fasterLapTime FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.driverRef = 'LH1' ORDER BY T1.fasterLapTime LIMIT 1
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN results AS T3 ON T1.driverId = T3.driverId WHERE T3.fasterLapSpeed IS NOT NULL ORDER BY T3.fasterLapSpeed DESC LIMIT 1
SELECT T3.driverRef FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'Canadian Grand Prix' AND T2.position = 1 AND T2.year = 2007
SELECT T3.name FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton'
SELECT T2.name FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN results AS T3 ON T2.raceId = T3.raceId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton' ORDER BY T3.rank LIMIT 1
SELECT MAX(T1.fastestLapSpeed) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.name = 'Spanish Grand Prix' AND T1.position = 1 AND T1.positionText = 'Fast' AND T1.fastestLapTime = '2009-07-12'
SELECT T1.year FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.forename = 'Lewis' AND T3.surname = 'Hamilton'
SELECT T1.positionText FROM results AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId INNER JOIN races AS T4 ON T2.raceId = T4.raceId WHERE T3.forename = 'Lewis' AND T3.surname = 'Hamilton' AND T4.name = 'Chinese Grand Prix' AND T4.year = 2008
SELECT T2.forename, T2.surname FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T3.year = 1989 AND T3.name = 'Australian Grand Prix' AND T1.number = 4
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2008 AND T1.name = 'Australian Grand Prix' AND T2.time IS NOT NULL
SELECT T2.position FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.year = 2008 AND T3.forename = 'Lewis' AND T2.position = 1
SELECT T2.time FROM driverStandings AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.name = 'Chinese Grand Prix' AND T1.position = 2 AND T3.year = 2008
SELECT T1.driverRef, T2.url FROM drivers AS T1 INNER JOIN races AS T2 ON T1.driverId = T2.raceId INNER JOIN results AS T3 ON T1.driverId = T3.driverId WHERE T2.year = 2008 AND T2.name = 'Australian Grand Prix' ORDER BY T3.time DESC LIMIT 1
SELECT COUNT(T1.driverId) FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.year = 2008 AND T1.nationality = 'British'
SELECT COUNT(T1.driverId) FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.year = 2008 AND T2.name = 'Chinese Grand Prix'
SELECT SUM(T2.points) FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton'
SELECT AVG(T2.fastestLapTime) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.driverRef = 'LH'
SELECT CAST(COUNT(CASE WHEN T2.time IS NOT NULL THEN T2.driverId ELSE 0 END) AS REAL) * 100 / COUNT(T2.driverId) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2008
SELECT CAST((T3.time - T2.positionText) AS REAL) * 100 / T2.positionText FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN results AS T3 ON T1.raceId = T3.raceId WHERE T1.year = 2008 AND T1.name = 'Australian Grand Prix' ORDER BY T3.time DESC LIMIT 1
SELECT COUNT(circuitId) FROM circuits WHERE location = 'Melbourne' AND country = 'Australia'
SELECT lat, lng FROM circuits WHERE country = 'USA'
SELECT COUNT(*) FROM drivers WHERE dob > '1980-' AND nationality = 'British'
SELECT MAX(T1.points) FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T2.nationality = 'British'
SELECT T2.constructorId FROM results AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId ORDER BY T1.points DESC LIMIT 1
SELECT T3.name FROM constructorResults AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T1.constructorId = T3.constructorId WHERE T2.year = 2018 AND T1.points = 0 AND T2.raceId = 291
SELECT COUNT(T2.constructorId) FROM races AS T1 INNER JOIN constructorResults AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T2.constructorId = T3.constructorId WHERE T3.nationality = 'Japanese' AND T1.year = 2
SELECT DISTINCT T2.constructorId FROM results AS T1 INNER JOIN constructorStandings AS T2 ON T1.constructorId = T2.constructorId WHERE T1.rank = 1
SELECT COUNT(T2.constructorId) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId INNER JOIN constructorStandings AS T3 ON T2.constructorId = T3.constructorId INNER JOIN drivers AS T4 ON T2.driverId = T4.driverId WHERE T4.nationality = 'French' AND T2.laps > 50
SELECT CAST(SUM(CASE WHEN T3.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T3.time) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.year BETWEEN 2007 AND 2009
SELECT AVG(T1.time) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.year < 1975
SELECT T2.forename, T2.surname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.rank = 2 AND strftime('%Y', T1.position) > '1975'
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T2.time IS NULL AND T2.driverId IN ( SELECT driverId FROM drivers WHERE nationality = 'Italian' )
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId ORDER BY T1.time DESC LIMIT 1
SELECT T1.lap FROM lapTimes AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.position = 1 AND T2.fasterLap = 1 AND T2.year = 2009
SELECT AVG(T1.fastestLapSpeed) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.name = 'Spanish Grand Prix' AND T1.fastestLapSpeed IS NOT NULL AND T1.fastestLapSpeed > 0
SELECT T2.name, T1.year FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId ORDER BY T1.milliseconds LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.lap > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.driverId) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.dob BETWEEN 1985 AND 1985 + 1 AND T2.lap > 50
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.nationality = 'French' AND T2.time < 120
SELECT code FROM drivers WHERE nationality = 'America'
SELECT raceId FROM races WHERE year = 2009
SELECT COUNT(raceId) FROM results WHERE raceId = 18
SELECT T2.code, COUNT(T2.code) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.nationality = 'Netherlandic' ORDER BY T1.year DESC LIMIT 3
SELECT driverRef FROM drivers WHERE forename = 'Robert' AND surname = 'Kubica'
SELECT COUNT(driverId) FROM drivers WHERE dob LIKE '1980%' AND nationality = 'British'
SELECT T3.forename, T3.surname FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.nationality = 'germany' AND T1.year BETWEEN 1980 AND 1990 ORDER BY T2.time LIMIT 3
SELECT T1.driverRef FROM drivers AS T1 INNER JOIN races AS T2 ON T1.driverId = T2.raceId WHERE T1.nationality = 'German' ORDER BY T1.dob LIMIT 1
SELECT T2.driverId, T2.code FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE strftime('%Y', T1.fastestLapTime) = '1971'
SELECT T2.forename, T2.surname FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE strftime('%Y', T1.time) < '1982' ORDER BY T1.time DESC LIMIT 10
SELECT T1.year FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId ORDER BY T2.fasterLapTime LIMIT 1
SELECT T1.year FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId ORDER BY T2.time DESC LIMIT 1
SELECT driverId FROM lapTimes WHERE lap = 1 ORDER BY time DESC LIMIT 5
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T2.statusId = 2 AND T1.raceId BETWEEN 50 AND 100
SELECT location, lat, lng FROM circuits WHERE country = 'Austria' GROUP BY location
SELECT T2.number FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.time IS NOT NULL GROUP BY T2.number ORDER BY COUNT(T2.number) DESC LIMIT 1
SELECT T3.driverRef, T3.nationality, T3.dob FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN circuits AS T3 ON T1.raceId = T3.circuitId WHERE T1.raceId = 23 AND T1.q2 IS NOT NULL
SELECT T1.year, T2.driverRef, T1.date, T1.time FROM races AS T1 INNER JOIN qualifying AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.dob IS NOT NULL ORDER BY T3.dob DESC LIMIT 1
SELECT COUNT(T2.driverId) FROM status AS T1 INNER JOIN results AS T2 ON T1.statusId = T2.statusId WHERE T1.status = 'Puncture' AND T2.driverId IN ( SELECT driverId FROM drivers WHERE nationality = 'American' )
SELECT T2.url FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T2.nationality = 'Italian' ORDER BY T1.points DESC LIMIT 1
SELECT T2.url FROM constructorStandings AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId GROUP BY T2.constructorId ORDER BY SUM(T1.wins) DESC LIMIT 1
SELECT T2.driverId FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'French Grand Prix' ORDER BY T2.time DESC LIMIT 1
SELECT T1.position, T1.milliseconds FROM lapTimes AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId ORDER BY T1.time ASC LIMIT 1
SELECT AVG(T1.fastestLapTime) FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN lapTimes AS T3 ON T1.raceId = T3.raceId WHERE T2.year = 2006 AND T2.circuitId = 'USGPR1' AND T3.position = '1' AND T3.lap = 1
SELECT T.forename, T.surname FROM ( SELECT T2.forename, T2.surname, CAST(SUM(T1.duration) AS REAL) / COUNT(T1.driverId) AS avg FROM pitStops AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.nationality = 'germany' AND strftime('%Y', T2.dob) BETWEEN '1980' AND '1985' ORDER BY avg LIMIT 3 ) AS T
SELECT T1.driverId, T1.position FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.year = 2008 AND T2.name = 'Canadian Grand Prix' ORDER BY T1.position DESC LIMIT 1
SELECT T3.constructorRef, T1.url FROM races AS T1 INNER JOIN constructorStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T2.constructorId = T3.constructorId WHERE T1.year = 2009 AND T1.name = 'Singapore Grand Prix' ORDER BY T1.time DESC LIMIT 1
SELECT forename, surname, dob FROM drivers WHERE nationality = 'Austrian' AND year(dob) BETWEEN 1981 AND 1991
SELECT forename, surname, dob, url FROM drivers WHERE nationality = 'germany' AND year(dob) BETWEEN 1971 AND 1985 ORDER BY year(dob) DESC
SELECT location, country, lat, lng FROM circuits WHERE name = 'Hungaroring'
SELECT T1.points, T3.name, T3.nationality FROM constructorResults AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN constructors AS T3 ON T1.constructorId = T3.constructorId WHERE T2.year BETWEEN 1980 AND 2010 AND T2.name = 'Monaco Grand Prix'
SELECT AVG(T1.points) FROM driverStandings AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId INNER JOIN constructorStandings AS T4 ON T3.raceId = T4.raceId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton' AND T2.nationality = 'Turkish'
SELECT CAST(COUNT(DISTINCT T2.year) AS REAL) / 10 FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.date BETWEEN '2000-01-01' AND '2010-12-31'
SELECT nationality FROM drivers GROUP BY nationality ORDER BY COUNT(nationality) DESC LIMIT 1
SELECT SUM(T2.wins) FROM results AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId WHERE T1.position = 91 AND T1.points = 1
SELECT T1.name FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T2.fasterLapSpeed = ( SELECT fastestLapSpeed FROM results ORDER BY fastestLapTime ASC LIMIT 1 )
SELECT T2.name, T2.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId ORDER BY T1.`date` DESC LIMIT 1
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN qualifying AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.year = 2008 AND T3.circuitId = ( SELECT circuitId FROM circuits WHERE name = 'Marina Bay Street' ) ORDER BY T2.position LIMIT 1
SELECT T1.forename, T1.surname, T1.nationality, T3.name FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId ORDER BY T1.dob DESC LIMIT 1
SELECT COUNT(T1.driverId) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.name = 'Canadian Grand Prix' AND T2.statusId = 3
SELECT T2.wins, T1.forename, T1.surname FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId ORDER BY T1.dob LIMIT 1
SELECT MAX(duration) FROM pitStops
SELECT T2.time FROM results AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId ORDER BY T1.fastestLapTime LIMIT 1
SELECT MAX(T1.duration) FROM pitStops AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton'
SELECT T1.lap FROM lapTimes AS T1 INNER JOIN pitStops AS T2 ON T2.driverId = T1.driverId INNER JOIN races AS T3 ON T3.raceId = T2.raceId WHERE T3.year = 2011 AND T2.stop = 'pit' AND T2.driverId = 103
SELECT T2.duration FROM races AS T1 INNER JOIN pitStops AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2011 AND T1.name = 'Australian Grand Prix'
SELECT T1.fastestLap FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton'
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId ORDER BY T2.time ASC LIMIT 20
SELECT T2.position FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.forename = 'Lewis' ORDER BY T2.time LIMIT 1
SELECT T1.fasterLapTime FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId WHERE T3.name = 'Austrian Grand Prix Circuit'
SELECT T2.lap, T2.time FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN circuits AS T3 ON T1.circuitId = T3.circuitId WHERE T3.country = 'Italy'
SELECT T1.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Austrian Grand Prix' AND T2.name = 'Formula_1'
SELECT T1.duration FROM pitStops AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.name = 'Austrian Grand Prix' AND T1.driverId = ( SELECT driverId FROM lapTimes WHERE raceId = ( SELECT raceId FROM races WHERE name = 'Austrian Grand Prix' ) ORDER BY time ASC LIMIT 1 )
SELECT T2.lat, T2.lng FROM results AS T1 INNER JOIN circuits AS T2 ON T1.raceId = T2.circuitId WHERE T1.fastestLap = '1:29.488'
SELECT AVG(T1.milliseconds) FROM pitStops AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Lewis' AND T2.surname = 'Hamilton'
SELECT AVG(T2.milliseconds) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.circuitId = ( SELECT circuitId FROM circuits WHERE name = 'Italy' )
SELECT player_fifa_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1
SELECT height, player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT preferred_foot FROM Player_Attributes WHERE potential = ( SELECT MIN(potential) FROM Player_Attributes )
SELECT COUNT(player_fifa_api_id) FROM Player_Attributes WHERE defensive_work_rate = 'low' AND overall_rating BETWEEN 60 AND 65
SELECT player_fifa_api_id FROM Player_Attributes ORDER BY crossing DESC LIMIT 5
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2016' GROUP BY T2.name ORDER BY SUM(T1.home_team_goal + T1.away_team_goal) DESC LIMIT 1
SELECT T1.team_fifa_api_id FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.season = '2015/2016' GROUP BY T1.team_fifa_api_id ORDER BY SUM(T2.home_team_goal - T2.away_team_goal) ASC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.penalties DESC LIMIT 10
SELECT T2.team_long_name FROM Match AS T1 INNER JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id INNER JOIN League AS T3 ON T3.id = T1.league_id WHERE T3.name = 'Scotland Premier League' AND T1.season = '2009/2010' GROUP BY T2.team_api_id ORDER BY SUM(T1.away_team_goal - T1.home_team_goal) DESC LIMIT 1
SELECT buildUpPlaySpeed FROM Team_Attributes ORDER BY buildUpPlaySpeed DESC LIMIT 4
SELECT T2.name FROM `Match` AS T1 INNER JOIN League AS T2 ON T2.id = T1.league_id WHERE T1.season = '2016' GROUP BY T2.name ORDER BY SUM(T1.home_team_goal = T1.away_team_goal) DESC LIMIT 1
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.sprint_speed >= 97 AND T1.date BETWEEN '2013-01-01' AND '2015-12-31'
SELECT T1.name, COUNT(T2.id) FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id GROUP BY T1.name ORDER BY COUNT(T2.id) DESC LIMIT 1
SELECT AVG(height) FROM Player WHERE birthday BETWEEN '1990-01-01 00:00:00' AND '1995-12-31 00:00:00'
SELECT player_api_id FROM Player_Attributes WHERE date LIKE '%2010%' ORDER BY overall_rating DESC LIMIT 1
SELECT T1.team_fifa_api_id FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlaySpeed > 50 AND T2.buildUpPlaySpeed < 60
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlayPassing IS NOT NULL AND strftime('%Y', T2.date) = '2012' GROUP BY T2.buildUpPlayPassing HAVING AVG(T2.buildUpPlayPassing) > AVG(T2.buildUpPlayPassing)
SELECT CAST(SUM(CASE WHEN T1.preferred_foot = 'left' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.player_fifa_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.birthday LIKE '1987%' OR T2.birthday LIKE '1988%' OR T2.birthday LIKE '1989%' OR T2.birthday LIKE '1990%' OR T2.birthday LIKE '1991%' OR T2.birthday LIKE '1992%'
SELECT league_id FROM `Match` GROUP BY league_id ORDER BY SUM(home_team_goal + away_team_goal) DESC LIMIT 5
SELECT AVG(T1.long_shots) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Ahmed Samir Farag'
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_api_id WHERE T2.height > 180 GROUP BY T2.player_name ORDER BY SUM(T1.heading_accuracy) DESC LIMIT 10
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlayDribblingClass = 'Normal' AND T2.date BETWEEN '2014-01-01 00:00:00' AND '2014-01-31 00:00:00' GROUP BY T1.team_api_id ORDER BY SUM(T2.chanceCreationPassing) / COUNT(T2.chanceCreationPassing) DESC LIMIT 1
SELECT DISTINCT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2009/2010' AND T1.home_team_api_id IN ( SELECT team_fifa_api_id FROM Team WHERE team_long_name = 'Premier League' )
SELECT team_short_name FROM Team WHERE team_long_name = 'Queens Park Rangers'
SELECT player_name FROM Player WHERE SUBSTR(birthday, 1, 4) = '1970' AND SUBSTR(birthday, 7, 7) = '10'
SELECT T2.attacking_work_rate FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Franco Zennaro'
SELECT T2.buildUpPlayPositioningClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.team_long_name = 'ADO Den Haag'
SELECT T1.heading_accuracy FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Francois Affolter' AND T1.date = '2014-09-18'
SELECT T1.overall_rating FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Gabriel Tamas' AND T1.date LIKE '2011%'
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Scotland Premier League' AND T1.season = '2015/2016'
SELECT T1.player_fifa_api_id FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday DESC LIMIT 1
SELECT player_name FROM Player WHERE player_api_id IN ( SELECT player_api_id FROM Player_Attributes WHERE potential = ( SELECT MAX(potential) FROM Player_Attributes ) )
SELECT COUNT(T1.player_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.preferred_foot = 'left' AND T2.weight < 130
SELECT T2.team_short_name FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.chanceCreationPassingClass = 'Risky'
SELECT T1.defensive_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'David Wilson'
SELECT T2.birthday FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.overall_rating DESC LIMIT 1
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Netherlands'
SELECT AVG(T1.home_team_goal) FROM Match AS T1 INNER JOIN League AS T2 ON T1.country_id = T2.id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Poland' AND T1.season = '2010/2011'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_name ORDER BY SUM(T2.finishing) / COUNT(T2.finishing) DESC LIMIT 1
SELECT player_name FROM Player WHERE height > 180
SELECT COUNT(player_name) FROM Player WHERE strftime('%Y', birthday) > '1990'
SELECT COUNT(T2.player_name) FROM Team_Attributes AS T1 INNER JOIN Player AS T2 ON T1.team_fifa_api_id = T2.player_fifa_api_id WHERE T1.buildUpPlaySpeedClass = 'Fast' AND T2.weight > 170 AND T2.player_name LIKE 'Adam%'
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.overall_rating > 80 AND strftime('%Y', T1.date) BETWEEN '2008' AND '2010'
SELECT T1.potential FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Aaron Doran'
SELECT player_name FROM Player WHERE player_fifa_api_id IN ( SELECT player_api_id FROM Player_Attributes WHERE preferred_foot = 'left' )
SELECT DISTINCT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlaySpeedClass = 'Fast'
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_short_name = 'CLB'
SELECT T2.team_short_name FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlayPassing > 70
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN '2010-01-01' AND '2015-12-31' AND T1.height > 170
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1
SELECT T1.name FROM Country AS T1 INNER JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlaySpeed = 31 AND T2.buildUpPlayDribbling = 53 AND T2.buildUpPlayPassing = 32
SELECT AVG(T1.overall_rating) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Aaron Doran'
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Germany 1. Bundesliga' AND strftime('%Y-%m', T1.date) BETWEEN '2008-08' AND '2008-10'
SELECT T1.team_short_name FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.home_team_goal = 10 GROUP BY T1.team_short_name
SELECT player_fifa_api_id FROM Player_Attributes WHERE balance = ( SELECT MAX(balance) FROM Player_Attributes ) AND potential = 61
SELECT AVG(ball_control) FROM Player_Attributes WHERE player_api_id IN ( SELECT player_api_id FROM Player WHERE player_name = 'Abdou Diallo' ) OR player_api_id IN ( SELECT player_api_id FROM Player WHERE player_name = 'Aaron Appindangoye' )
SELECT team_long_name FROM Team WHERE team_short_name = 'GEN'
SELECT birthday FROM Player WHERE player_name = 'Aaron Lennon' OR player_name = 'Abdelaziz Barrada' ORDER BY birthday DESC LIMIT 1
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT COUNT(T2.player_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.pref_foot = 'left' AND T1.attacking_work_rate = 'low'
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Belgium Jupiler League'
SELECT T1.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.overall_rating = ( SELECT MAX(overall_rating) FROM Player_Attributes )
SELECT COUNT(T1.player_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.birthday LIKE '1985%' AND T1.defensive_work_rate = 'High'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name IN ('Alexis', 'Ariel Borysiuk', 'Arouna Kone') ORDER BY T2.cross DESC LIMIT 1
SELECT T1.heading_accuracy FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Ariel Borysiuk'
SELECT COUNT(T2.player_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.height > 180 AND T1.volleys > 70
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.volley_score > 70 AND T1.dribbling > 70
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Belgium' AND T1.season = '2008-2009'
SELECT T1.long_passing FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.birthday ASC LIMIT 1
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Belgium Jupiler League' AND SUBSTR(T1.`date`, 1, 7) = '2009-04'
SELECT T1.name FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id WHERE T2.season = '2008/2009' GROUP BY T1.name ORDER BY COUNT(T2.season) DESC LIMIT 1
SELECT AVG(overall_rating) FROM Player_Attributes WHERE player_fifa_api_id IN ( SELECT player_fifa_api_id FROM Player WHERE strftime('%Y', birthday) < '1986' )
SELECT CAST((SUM(CASE WHEN T1.player_name = 'Ariel Borysiuk' THEN T2.overall_rating ELSE 0 END) - SUM(CASE WHEN T1.player_name = 'Paulin Puel' THEN T2.overall_rating ELSE 0 END)) AS REAL) * 100 / SUM(CASE WHEN T1.player_name = 'Paulin Puel' THEN T2.overall_rating ELSE 0 END) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id
SELECT AVG(T1.buildUpPlaySpeed) FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T2.team_long_name = 'Heart of Midlothian'
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Pietro Marino'
SELECT SUM(T1.crossing) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Aaron Lennox'
SELECT T2.chanceCreationPassing, T2.chanceCreationPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T1.team_long_name = 'Ajax' ORDER BY T2.chanceCreationPassing DESC LIMIT 1
SELECT T2.player_fifa_api_id FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Abdou Diallo' GROUP BY T2.player_fifa_api_id
SELECT T2.overall_rating FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Dorlan Pabon' ORDER BY T2.overall_rating DESC LIMIT 1
SELECT CAST(SUM(T2.away_team_goal) AS REAL) / COUNT(T2.away_team_api_id) FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.away_team_api_id WHERE T1.team_long_name = 'Parma' AND T2.country_id = 3
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.overall_rating = 77 AND T1.date LIKE '2016-06-23%' ORDER BY T2.birthday LIMIT 1
SELECT T1.overall_rating FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Aaron Mooy' AND T1.date LIKE '2016-02-04%'
SELECT T2.potential FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Francesco Parravicini' AND T2.date = '2010-08-30'
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Francesco Migliore' AND T1.date LIKE '2015-05-01%'
SELECT T2.defensive_work_rate FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Kevin Berigaud' AND T2.date = '2013-02-22'
SELECT T1.date FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Kevin Constant' ORDER BY T1.cross DESC LIMIT 1
SELECT T2.buildUpPlaySpeedClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.team_long_name = 'Willem II' AND T2.date = '2012-02-22'
SELECT T1.buildUpPlayDribbling FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_short_name = 'LEI' AND T1.date = '2015-09-10'
SELECT T2.buildUpPlayPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T1.team_long_name = 'FC Lorient' AND T2.date LIKE '2010-02-22%'
SELECT T2.chanceCreationPassingPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T1.team_long_name = 'PEC Zwolle' AND T2.date = '2013-09-20'
SELECT T1.chanceCreationCrossingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = 'Hull City' AND T1.date = '2010-02-22'
SELECT T1.defenceAggressionClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = 'Hannover 96' AND T1.date = '2015-09-10'
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Marko Arnautovic' AND T2.date BETWEEN '2007-02-22' AND '2016-04-21'
SELECT CAST((SUM(CASE WHEN T1.player_name = 'Landon Donovan' THEN T2.overall_rating ELSE 0 END) - SUM(CASE WHEN T1.player_name = 'Jordan Bowery' THEN T2.overall_rating ELSE 0 END)) AS REAL) * 100 / SUM(CASE WHEN T1.player_name = 'Landon Donovan' THEN T2.overall_rating ELSE 0 END) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Landon Donovan' AND T1.player_name = 'Jordan Bowery'
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT player_api_id FROM Player_Attributes WHERE player_api_id = 10 ORDER BY weight DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday + INTERVAL '35 days' < CURRENT_TIMESTAMP
SELECT COUNT(T1.home_team_goal) FROM Match AS T1 INNER JOIN Player AS T2 ON T1.home_player_11 = T2.player_api_id WHERE T2.player_name = 'Aaron Lennon'
SELECT SUM(T1.away_team_goal) FROM Match AS T1 INNER JOIN Player AS T2 ON T1.away_player_11 = T2.player_api_id WHERE T2.player_name IN ('Daan Smith', 'Filipe Ferreira')
SELECT SUM(T1.home_team_goal) FROM Match AS T1 INNER JOIN Player AS T2 ON T1.away_player_11 = T2.player_api_id OR T1.away_player_10 = T2.player_api_id OR T1.away_player_9 = T2.player_api_id OR T1.away_player_8 = T2.player_api_id OR T1.away_player_7 = T2.player_api_id OR T1.away_player_6 = T2.player_api_id OR T1.away_player_5 = T2.player_api_id OR T1.away_player_4 = T2.player_api_id OR T1.away_player_3 = T2.player_api_id OR T1.away_player_2 = T2.player_api_id OR T1.away_player_1 = T2.player_api_id
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = 'high'
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_fifa_api_id WHERE T1.finishing = 1 ORDER BY T1.date - T2.birthday DESC LIMIT 1
SELECT T3.player_name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id INNER JOIN Player AS T3 ON T3.player_api_id = T2.country_id WHERE T2.name = 'Belgium'
SELECT T3.country_id FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id INNER JOIN League AS T3 ON T3.country_id = T2.country_id WHERE T1.vision > 89
SELECT T4.name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id INNER JOIN League AS T3 ON T3.country_id = T1.player_fifa_api_id INNER JOIN Country AS T4 ON T4.id = T3.country_id GROUP BY T4.name ORDER BY SUM(T2.weight) / COUNT(T2.player_api_id) DESC LIMIT 1
SELECT T2.team_long_name FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeedClass = 'Slow'
SELECT T2.team_short_name FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.chanceCreationPassingClass = 'Safe'
SELECT AVG(T1.height) FROM Player AS T1 INNER JOIN League AS T2 ON T1.player_api_id = T2.country_id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Italy'
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name LIMIT 3
SELECT COUNT(player_name) FROM Player WHERE player_name LIKE 'Aaron%' AND CAST(birthday AS DATE) > '1990'
SELECT SUM(CASE WHEN T1.player_fifa_api_id = 6 THEN T1.jumping ELSE 0 END) - SUM(CASE WHEN T1.player_fifa_api_id = 23 THEN T1.jumping ELSE 0 END) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id
SELECT player_api_id FROM Player_Attributes WHERE preferred_foot = 'right' ORDER BY potential LIMIT 5
SELECT COUNT(player_api_id) FROM Player_Attributes WHERE preferred_foot = 'left' AND crossing = ( SELECT MAX(crossing) FROM Player_Attributes WHERE preferred_foot = 'left' )
SELECT CAST(SUM(CASE WHEN strength > 80 AND stamina > 80 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(player_api_id) FROM Player_Attributes
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Poland Ekstraklasa'
SELECT T1.home_team_goal, T1.away_team_goal FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Belgium Jupiler League' AND T1.date LIKE '2008-09-24%'
SELECT T1.sprint_speed, T1.agility, T1.acceleration FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Alexis Blin'
SELECT T2.buildUpPlaySpeedClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T1.team_long_name = 'KSV Cercle Brugge'
{"sql": "SELECT COUNT(T1.id) FROM Team AS T1 INNER JOIN League AS T2 ON T1.id = T2.id WHERE T2.name = 'Italian Serie A' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '804' AND T1.team_api_id = '804' AND T1.team_fifa_api_id = '8
SELECT T3.home_team_goal FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id INNER JOIN Team AS T3 ON T1.id = T3.team_api_id WHERE T2.name = 'Netherlands' ORDER BY T3.home_team_goal DESC LIMIT 1
SELECT T1.finishing, T1.curve FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.weight DESC LIMIT 1
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2015/2016' GROUP BY T2.name ORDER BY COUNT(T2.name) DESC LIMIT 4
SELECT T2.team_long_name FROM Match AS T1 INNER JOIN Team AS T2 ON T2.team_api_id = T1.away_team_api_id GROUP BY T2.team_api_id ORDER BY SUM(T1.away_team_goal) DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.height < 180 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.overall_rating > 70
SELECT CAST(SUM(CASE WHEN Admission = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Patient WHERE SEX = 'M'
SELECT CAST(SUM(CASE WHEN T1.SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday LIKE '%/%/1930%'
SELECT CAST(SUM(CASE WHEN Admission = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Patient WHERE strftime('%Y', Birthday) BETWEEN '1930' AND '1940'
SELECT CAST(SUM(CASE WHEN T1.Admission = '-' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.Admission = '+' THEN 1 ELSE 0 END) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE'
SELECT T1.Diagnosis, T2.`Date` FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 30609
SELECT T1.SEX, T1.Birthday, T2.`Examination Date`, T2.Symptoms FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 163109
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH > 500
SELECT T1.ID, T1.Birthday FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.RVVT = '+'
SELECT T1.ID, T1.SEX, T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Thrombosis = 2
SELECT T1.First FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO >= '250' AND strftime('%Y', T1.Birthday) = '1937'
SELECT T1.ID, T1.SEX, T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.ALB < 3.5
SELECT CAST(COUNT(CASE WHEN T2.TP < '6.0' OR T2.TP > '8.5' THEN T1.ID ELSE NULL END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F'
SELECT AVG(T2.aCL IgG) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '+' AND SUBSTR(T1.Birthday, 1, 4) - STRFTIME('%Y', CURRENT_TIMESTAMP) >= 50
SELECT COUNT(ID) FROM Patient WHERE STRFTIME('%Y', Description) = '1997' AND Admission = '- AND SEX = 'F'
SELECT strftime('%Y', First Date) - strftime('%Y', Birthday) FROM Patient
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Thrombosis = 1 AND T1.SEX = 'F' AND T2.`Examination Date` = '1997-01-01'
SELECT MAX(year(Birthday)) - MIN(year(Birthday)) FROM Patient WHERE tg >= 200
SELECT T2.Symptoms, T1.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID ORDER BY T1.Birthday DESC LIMIT 1
SELECT CAST(COUNT(ID) AS REAL) / 12 FROM Patient WHERE Birthday LIKE '1998%' AND SEX = 'M'
SELECT T2.`First Date`, T1.Birthday - T1.`First Date` AS age FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.Patient WHERE T2.Diagnosis = 'SJS' ORDER BY T1.Birthday DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.UA <= 8 THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T2.UA <= 6.5 THEN 1 ELSE 0 END) AS RATIO FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' OR T1.SEX = 'F'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.Patient WHERE strftime('%Y', T2.Examination Date) - strftime('%Y', T1.First Date) > 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Birthday < 18 AND strftime('%Y', T2.`Examination Date`) BETWEEN '1990' AND '1993'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.T-BIL >= '2.0'
SELECT Diagnosis FROM Examination WHERE `Examination Date` BETWEEN '1985-01-01' AND '1995-12-31' GROUP BY Diagnosis ORDER BY COUNT(Diagnosis) DESC LIMIT 1
SELECT CAST(SUM(strftime('%Y', T1.Birthday)) - strftime('%Y', T1.Date)) AS REAL) / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE strftime('%Y', T1.Birthday) = '1999' AND strftime('%m', T1.Birthday) = '10'
SELECT T1.year(`Examination Date`) - T1.Birthday, T2.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID ORDER BY T1.HGB DESC LIMIT 1
SELECT T1.ANA FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.ID = 3605340 AND T1.`Examination Date` = '1996-12-02'
SELECT CASE WHEN T2.T-CHO < 250 THEN 'YES' ELSE 'NO' END AS result FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 2927464 AND T2.Date = '1995-09-04'
SELECT T1.SEX FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'AORTITIS'
SELECT CASE WHEN T2.aCL IgM IS NULL THEN 'NO' ELSE 'YES' END status FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Description = '1994-02-19' AND T1.Diagnosis = 'SLE' AND T2.EXAMINATION DATE = '1993-11-12'
SELECT CASE WHEN T2.GPT = 9 AND T2.Date = '1992-06-12' THEN 'Male' ELSE 'Female' END FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = ( SELECT CASE WHEN T3.SEX = 'M' THEN 1 ELSE 0 END FROM Patient AS T3 INNER JOIN Laboratory AS T4 ON T3.ID = T4.ID WHERE T4.Date = '1992-06-12' ) AND T2.GPT = 9
{"sql": "SELECT 365 * (STRFTIME('%Y', T2.Date) - STRFTIME('%Y', T1.Birthday)) + 30 * (STRFTIME('%m', T2.Date) - STRFTIME('%m', T1.Description)) + 30 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Birthday)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description)) + 1 * (STRFTIME('%d', T2.Date) - STRFTIME('%d', T1.Description))
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.`First Date` = '1991-06-13' AND T1.Diagnosis = 'SJS' AND T2.Date LIKE '1995%'
SELECT T1.First Date, T1.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`Examination Date` = '1997-01-27' AND T2.Diagnosis = 'SLE'
SELECT DISTINCT T1.Symptoms FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday = '1959-03-01' AND T1.Examination Date = '1993-09-27'
SELECT SUM(CASE WHEN T2.DATE LIKE '1981-11%' THEN T1.`T-CHO` ELSE 0 END) - SUM(CASE WHEN T2.DATE LIKE '1981-12%' THEN T1.`T-CHO` ELSE 0 END) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = '1959-02-18'
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'Behcet''s disease' AND T2.Examination Date LIKE '197%' OR T2.Examination Date LIKE '1997%' OR T2.Examination Date LIKE '1998%'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT > 30 AND T2.ALB < 4 AND T2.Date BETWEEN '1987-07-06' AND '1996-01-31'
SELECT COUNT(ID) FROM Patient WHERE STRFTIME('%Y', Birthday) = '1964' AND SEX = 'F' AND Admission = '+'
SELECT COUNT(T1.ID) FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Thrombosis = 2 AND T1.ANA = 'S' AND T2.IGM = 20 + ( SELECT AVG(IGM) FROM Examination )
SELECT CAST(SUM(CASE WHEN T1.UA <= 6.5 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UA <= 6.5 AND T2.U-PRO > 0 AND T2.U-PRO < 30
SELECT CAST(SUM(CASE WHEN T2.DIAGNOSIS = 'BEHCET' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.DIAGNOSIS) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.Patient ID WHERE STRFTIME('%Y', T1.First Date) = '1981' AND T1.SEX = 'M'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date LIKE '1991-10%' AND T1.Admission = '-' AND T2.T-BIL < 2.0
SELECT COUNT(T1.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1."ANA Pattern" != 'P' AND T2.SEX = 'F' AND T2.BIRTHDAY BETWEEN 1980 AND 1989
SELECT T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T3.Diagnosis = 'PSS' AND T2.CRP > 2 AND T2.CRE = 1 AND T2.LDH = 123
SELECT AVG(T2.ALB) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.PLT > 400 AND T2.Diagnosis = 'SLE'
SELECT Symptoms FROM Examination WHERE Diagnosis = 'SLE' GROUP BY Symptoms ORDER BY COUNT(Symptoms) DESC LIMIT 1
SELECT T1.First Date, T1.Description FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 48473 AND T1.Description IS NOT NULL
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.Diagnosis = 'APS'
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date LIKE '1997%' AND T2.TP < 6 AND T2.TP > 8.5
SELECT CAST(SUM(CASE WHEN Diagnosis LIKE '%ITP%' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(DIAGNOSIS) FROM Examination
SELECT CAST(SUM(CASE WHEN T1.SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.SEX) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE strftime('%Y', T1.Birthday) = '1980' AND T2.Diagnosis = 'RA'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'Behcet' AND T1.Admission = '-' AND T1.SEX = 'M' AND strftime('%Y', T2.`Examination Date`) BETWEEN '1995' AND '1997'
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.WBC < 3.5
SELECT 365 * (T1.Date - T2.First Date) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 821298
SELECT CASE WHEN CAST(REPLACE(SUBSTR(T2.UA, 4), ',', '') AS REAL) > 8.0 THEN 'UA > 8.0' ELSE 'UA <= 8.0' END IS_NORMAL FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 57266 AND T1.SEX = 'M' OR (T1.SEX = 'F' AND T2.UA > 6.5)
SELECT T1.`Examination Date` FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 48473 AND T1.GOT >= 60
SELECT T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE strftime('%Y', T2.Date) = '1994' AND T2.GOT < 60
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.GPT >= 60
SELECT DISTINCT T1.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.GPT > 60 ORDER BY T1.Birthday
SELECT AVG(LDH) FROM Patient WHERE LDH < 500
SELECT T1.ID, T1.First Date - T1.Birthday AS age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH > 600 AND T2.LDH < 800
SELECT CASE WHEN T1.Admission = '+' THEN 'inpatient' ELSE 'outpatient' END FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALP < 300
SELECT T1.ID, T2.ALP FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = '1982-04-01' AND T2.ALP < 300
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TP < 6.0
SELECT T1.ID - 8.5 AS Deviation FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.TP > 8.5
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.ALB <= 3.5 OR T2.ALB >= 5.5 ORDER BY T1.Birthday DESC
SELECT CASE WHEN T1.ALB > 5.5 OR T1.ALB < 3.5 THEN 'Normal' ELSE 'Not normal' END FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.Patient WHERE T2.Birthday = '1982'
SELECT CAST(SUM(CASE WHEN T2.UA > 6.5 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) AS per FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F'
SELECT CAST(SUM(T2.UA) AS REAL) / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' OR (T1.SEX = 'F' AND T2.UA < 6.5) AND T2.UA < 8.0
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UN = 29
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'RA' AND T2.UN < 30
SELECT COUNT(ID) FROM Patient WHERE CRE >= 1.5 AND SEX = 'M'
SELECT CASE WHEN SUM(CASE WHEN T1.SEX = 'M' THEN 1 ELSE 0 END) - SUM(CASE WHEN T1.SEX = 'F' THEN 1 ELSE 0 END) > 0 THEN 'true' ELSE 'false' END FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE > 1.5
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID ORDER BY T2.T-BIL DESC LIMIT 1
SELECT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL > 2.0 GROUP BY T1.ID, T1.SEX
SELECT T1.ID, T1.T-CHO FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID ORDER BY T1.T-CHO DESC LIMIT 1
SELECT SUM((strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', T2.Birthday)) / COUNT(T1.ID)) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO >= 250 AND T1.SEX = 'M'
SELECT T1.ID, T1.Description, T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.TG > 100 AND T2.TG > 300
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG > 200 AND STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday) > 50
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '- ' AND T2.CPK < 250
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.CPK > 250 AND strftime('%Y', T1.Birthday) BETWEEN '1936' AND '1956'
SELECT T1.ID, T1.SEX, T1.age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU > 180 AND T2.T-CHO < 250
SELECT T1.ID, T2.GLU FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE STRFTIME('%Y', T1.Description) = '1991' AND T2.GLU < 180
SELECT DISTINCT T1.ID, T1.SEX, T1.Birthday, T2.SEX, T2.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.WBC > 9 OR T2.WBC <= 3.5 ORDER BY T2.SEX, T1.Birthday
SELECT T1.Diagnosis, T2.ID, T2.DATE - STRFTIME('%Y', T2.DATE) AS age FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.RBC < 3.5
SELECT CASE WHEN T2.RBC <= 3.5 THEN '+' ELSE '-' END AS ADJUSTMENT , CASE WHEN T2.RBC <= 3.5 THEN 'YES' ELSE 'NO' END AS ADJUSTMENT FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T1.Admission = 'YES' AND T1.Birthday LIKE '1950%'
SELECT DISTINCT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '- ' AND T2.HGB < 10
SELECT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' AND T2.HGB BETWEEN 10 AND 17 ORDER BY T1.Birthday DESC LIMIT 1
SELECT T2.ID, T2.HCT FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.HCT > 52 GROUP BY T2.ID HAVING COUNT(T2.ID) > 2
SELECT AVG(IIF(HCT < 29, 1, 0)) FROM Laboratory WHERE strftime('%Y', Date) = '1991'
SELECT SUM(CASE WHEN T1.PLT < 100 THEN 1 ELSE 0 END) - SUM(CASE WHEN T1.PLT > 400 THEN 1 ELSE 0 END) AS num FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.Patient WHERE T2.SEX = 'F' AND T2.SEX = 'M' AND T1.PLT IS NOT NULL
SELECT DISTINCT T1.First FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE STRFTIME('%Y', T2.Date) = '1984' AND T1.SEX = 'F' AND T2.PLT BETWEEN 100 AND 400 AND STRFTIME('%Y', T1.Birthday) - STRFTIME('%Y', T2.Date) < 50
SELECT CAST(SUM(CASE WHEN T2.SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday + strftime('%Y', date(T1.Admission) - date(T1.Birthday)) - strftime('%Y', date(T1.Admission)) > 55 AND T2.PT > 14
SELECT DISTINCT T1.First Date FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.First Date > 1992 AND T2.PT < 14
SELECT COUNT(T2.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` > '1997-01-01' AND T2.APTT > 45
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Thrombosis = 0 AND T2.APTT > 45
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.WBC > 3.5 AND T2.WBC < 9 AND T2.FG <= 150 OR T2.FG >= 450
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday > '1980-01-01' AND T2.FG < 150 AND T2.FG > 450
SELECT DISTINCT T1.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.UA > 10 AND T1.U-PRO > 30
SELECT T2.ID FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SLE' AND T2.U-PRO > 0 AND T2.U-PRO < 30
SELECT COUNT(ID) FROM Patient WHERE IGG > 2000
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.IGG > 900 AND T2.IGG < 2000 AND T2.Symptoms IS NOT NULL
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.IGA BETWEEN 80 AND 500 ORDER BY T1.IGA DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.IGA BETWEEN 80 AND 500 AND STRFTIME('%Y', T1.First Date) >= '1990'
SELECT T2.Diagnosis FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.IGM >= 400 OR T2.IGM <= 40 GROUP BY T2.Diagnosis ORDER BY COUNT(T2.Diagnosis) DESC LIMIT 1
SELECT COUNT(ID) FROM Patient WHERE Description IS NULL AND CRP > 0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE > 1.5 AND SUBSTR(T1.Birthday, 1, 4) - SUBSTR(CURDATE(), 1, 4) < 70
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RA IN ('-', '+') AND T2.KCT = '+'
SELECT DISTINCT T1.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.SEX = 'F' AND T2.Birthday LIKE '1985%' AND T1.RA BETWEEN '-0.1' AND '+0.1'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RF < 20 AND (STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday)) > 60
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RF < 20 AND T2.Thrombosis = '0'
SELECT COUNT(T2.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.C3 > 35 AND T1.ANA Pattern = 'P'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.aCL IgA = ( SELECT MAX(T2.aCL IgA) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.aCL IgA IS NOT NULL ) AND T2.aCL IgA > 29 AND T2.aCL IgA < 52
SELECT COUNT(DISTINCT T2.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.C4 > 10 AND T2.Diagnosis = 'Blood Clots in veins'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RNP = '-' OR T2.RNP = '+-' AND T1.Admission = '+'
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RNP NOT IN ('-', '+') ORDER BY T1.Birthday DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'Negative' AND T1.SM = 'negative' AND T2.Thrombosis = '0'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SM NOT IN ('negative', '0') ORDER BY T1.Birthday DESC LIMIT 3
SELECT T1.ID FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`Examination Date` > '1997-01-01' AND T1.SC170 IN ('negative', '0')
{"sql": "SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SC170 IN ('negative', '0') AND T1.SEX = 'F' AND T2.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F' AND T1.SEX = 'F' AND T2.SEX = 'F'
SELECT COUNT(DISTINCT T1.First Date) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SSA IN ('+', '-') AND STRFTIME('%Y', T1.First Date) < '2000'
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SSA != 'negative' AND T2.SSA != '0' ORDER BY T1.First Date LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'SLE' AND T1.SSB = '0' AND T2.`aCL IgG` IS NOT NULL AND T1.SSB = '0'
SELECT COUNT(DISTINCT CASE WHEN T1.SSB IN ('negative', '0') THEN T2.ID ELSE NULL END) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Symptoms IS NOT NULL
SELECT COUNT(ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CENTROMEA IN (-1, 0, 1) AND T2.SSB IN (-1, 0, 1) AND T1.SEX = 'M'
SELECT DISTINCT T1.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.DNA >= 8
SELECT COUNT(ID) FROM Patient WHERE Description IS NULL AND DNA < 8
SELECT COUNT(T2.Admission) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.IGG BETWEEN 900 AND 2000 AND T2.Admission LIKE '+';
SELECT CAST(COUNT(CASE WHEN T2.GOT >= 60 AND T1.Diagnosis = 'SLE' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T2.GOT) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT < 60 AND T1.SEX = 'M'
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT >= 60 ORDER BY T1.Birthday LIMIT 1
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU = 60 ORDER BY T2.GLU DESC LIMIT 3
SELECT COUNT(ID) FROM Patient WHERE SEX = 'M' AND GOT < 60
SELECT T1.First Date FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH < 500 ORDER BY T2.LDH DESC LIMIT 1
SELECT T1.First Date FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH >= 500 ORDER BY T1.First Date DESC LIMIT 1
SELECT COUNT(ID) FROM Patient WHERE Admission = '+' AND ALP >= 300
SELECT COUNT(ID) FROM Patient WHERE Admission = '- AND ALP < 300'
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.TP < 6.0 GROUP BY T2.Diagnosis
SELECT COUNT(T2.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 'SJS' AND T2.TP BETWEEN 6.0 AND 8.5
SELECT T2.Examination Date FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T3.ALB > 3.5 AND T3.ALB < 5.5 ORDER BY T2.Examination Date DESC LIMIT 1
SELECT COUNT(ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALB BETWEEN 3.5 AND 5.5 AND T2.TP BETWEEN 6.0 AND 8.5 AND T1.SEX = 'M'
SELECT T2.aCL IgG FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T1.UA > 6.50 ORDER BY T1.UA DESC LIMIT 1
SELECT T1.ANA FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.CRE < 1.5 ORDER BY T1.ANA DESC LIMIT 1
SELECT T1.ID FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.aCL IgA = ( SELECT MAX(aCL IgA) FROM Examination ) AND T1.CRE < 1.5
SELECT COUNT(T2.ID) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL >= 2.0 AND T2.T-BIL IS NOT NULL AND T2.ANA Pattern LIKE 'P%'
SELECT T2.ANA FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.T-BIL < 2.0 ORDER BY T1.T-BIL DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.T-CHO > 250 AND T2.KCT = '-'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.T-CHO < 250 AND T2.ANA Pattern = 'P'
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG < 200 AND T1.Symptoms IS NOT NULL
SELECT T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG < 200 ORDER BY T2.TG DESC LIMIT 1
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T2.ID = T3.ID WHERE T3.Thrombosis = 0 AND T2.CPK < 250
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.KCT = '+' OR T2.RVVT = '+' OR T2.LAC = '+' AND T1.CPK < 250
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU > 180 ORDER BY T1.Birthday LIMIT 1
{"sql": "SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'Normal blood glucose' AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC = 150 AND T1.HGB = 120 AND T1.HCT = 30 AND T1.PT = 45 AND T1.WBC =
SELECT COUNT(ID) FROM Patient WHERE Admission = '+' AND WBC BETWEEN 3.5 AND 9.0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'SLE' AND T1.WBC BETWEEN 3.5 AND 9.0
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RBC > 6 OR T2.RBC < 3.5 AND T1.Admission = '-'
SELECT COUNT(T2.ID) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.PLT BETWEEN 100 AND 400 AND T1.Diagnosis IS NOT NULL
SELECT T1.ID FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'MCTD' AND T1.PLT BETWEEN 100 AND 400
SELECT CAST(SUM(T2.PT) AS REAL) / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.PT < 14
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T2.ID = T3.ID WHERE T3.Diagnosis = 'Severe thrombosis' AND T2.PT < 14
SELECT T1.major_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = 'ANGELA' AND T2.last_name = 'SANDS'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T2.department = 'College of Engineering'
SELECT T3.first_name, T3.last_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.zip INNER JOIN attendance AS T3 ON T2.member_id = T3.link_to_member WHERE T1.department = 'Art and Design'
SELECT COUNT(T1.member_id) FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Women''s Soccer'
SELECT T1.phone FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Women''s Soccer'
SELECT COUNT(T2.member_id) FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T2.t_shirt_size = 'Medium' AND T3.event_name = 'Women''s Soccer'
SELECT T2.event_name FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T2.event_name ORDER BY COUNT(T2.event_name) DESC LIMIT 1
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.position = 'Vice President'
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = 'Maya' AND T3.last_name = 'Mclean'
SELECT COUNT(T1.event_id) FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Sacha' AND T2.last_name = 'Harrison' AND STRFTIME('%Y', T1.event_date) = '2019'
SELECT COUNT(T1.event_id) FROM ( SELECT T2.event_id FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.type = 'Meeting' GROUP BY T2.link_to_event HAVING COUNT(T2.member_id) > 10 ) T1
SELECT T2.event_name FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE '2019%' AND T1.link_to_member IS NOT NULL AND T1.link_to_event <> '' AND T1.link_to_member <> '' AND T1.link_to_event <> 'none' AND T1.link_to_member <> 'none'
SELECT CAST(COUNT(event_id) AS REAL) / COUNT(DISTINCT event_name) FROM event WHERE STRFTIME('%Y', event_date) = '2020' AND type = 'Meeting'
SELECT T2.expense_description FROM budget AS T1 INNER JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Club' ORDER BY T1.spent DESC LIMIT 1
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T2.major_name = 'Environmental Engineering'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.event_name = 'Laugh Out Loud'
SELECT T2.last_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Law and Constitutional Studies'
SELECT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Sherri' AND T1.last_name = 'Ramsey'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.first_name = 'Tyler' AND T1.last_name = 'Hewitt'
SELECT T1.amount FROM budget AS T1 INNER JOIN member AS T2 ON T1.link_to_event = T2.member_id WHERE T2.position = 'Vice President'
SELECT T1.amount FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'September Meeting' AND T1.category = 'Food'
SELECT T1.city, T1.state FROM zip_code AS T1 INNER JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.position = 'President' AND T2.first_name = 'John' AND T2.last_name = 'Clinton'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'IL'
SELECT T2.amount FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Meeting' AND T2.category = 'Advertisement'
SELECT T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.first_name = 'Pierce' AND T1.last_name = 'Guidi'
SELECT SUM(T2.amount) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Speaker'
SELECT T1.approved FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id WHERE T2.event_date LIKE '2019-10-08%' AND T2.event_name = 'October Meeting'
SELECT SUM(T2.cost) / COUNT(T2.cost) FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Elijah' AND T1.last_name = 'Allen' AND T2.expense_date LIKE '9%' OR T2.expense_date LIKE '10%'
SELECT SUM(CASE WHEN STRFTIME('%Y', T2.event_date) = '2019' THEN T2.spent ELSE 0 END) - SUM(CASE WHEN STRFTIME('%Y', T2.event_date) = '2020' THEN T2.spent ELSE 0 END) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT location FROM event WHERE event_name = 'Spring Budget Review'
SELECT T2.cost FROM event AS T1 INNER JOIN expense AS T2 ON T2.link_to_event = T1.event_id WHERE T1.event_date LIKE '2019-09-04' AND T1.type LIKE 'Poster'
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT notes FROM income WHERE date_received = '2019-09-14' AND source = 'Fundraising'
SELECT COUNT(major_id) FROM major WHERE department = 'College of Humanities and Social Sciences'
SELECT phone FROM member WHERE first_name = 'Carlo' AND last_name = 'Jacobs'
SELECT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Adela' AND T1.last_name = 'O''Gallagher'
SELECT SUM(CASE WHEN T1.remaining > 0 THEN 1 ELSE 0 END) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'November Meeting'
SELECT SUM(T2.amount) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Speaker'
SELECT T2.event_status FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Post Cards, Posters' AND T1.expense_date = '2019-08-20'
SELECT T1.major_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = 'Brent' AND T2.last_name = 'Thomason'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T2.major_name = 'Business' AND T1.t_shirt_size = 'Medium'
SELECT T2.zip_code FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Christof' AND T1.last_name = 'Neilson'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.position = 'Vice President'
SELECT T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.position = 'President'
SELECT T2.date_received FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'CONNOR' AND T1.last_name = 'HILTON' AND T2.source = 'Dues'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.source = 'Dues' ORDER BY T2.date_received LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.event_name = 'Yearly Kickoff' THEN T2.amount ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.event_name = 'October Meeting' THEN T2.amount ELSE 0 END) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event
SELECT CAST(SUM(T2.amount) AS REAL) * 100 / SUM(T2.amount + T2.remaining) FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'November Speaker' AND T2.category = 'Parking'
SELECT SUM(cost) FROM expense WHERE expense_description = 'Pizza'
SELECT COUNT(city) FROM zip_code WHERE county = 'Orange County' AND state = 'Virginia'
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT T2.city, T2.county, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'amy' AND T1.last_name = 'firth'
SELECT T2.expense_description FROM budget AS T1 INNER JOIN expense AS T2 ON T2.link_to_budget = T1.budget_id WHERE T1.remaining = ( SELECT MIN(remaining) FROM budget )
SELECT T2.first_name, T2.last_name FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'October Meeting'
SELECT T.college FROM ( SELECT T2.college, COUNT(T1.member_id) AS num FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id GROUP BY T2.college ) AS T ORDER BY T.num DESC LIMIT 1
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.phone = '809-555-3360'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id ORDER BY T1.amount DESC LIMIT 1
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.position = 'Vice President'
SELECT COUNT(T2.member_id) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Women''s Soccer'
SELECT T2.date_received FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Casey' AND T1.last_name = 'Mason'
SELECT COUNT(T1.zip) FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Maryland'
SELECT COUNT(T2.link_to_event) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T1.phone = '954-555-6240'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T2.department = 'School of Applied Sciences, Technology and Education'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'Closed' ORDER BY T2.spent / T2.amount DESC LIMIT 1
SELECT COUNT(position) FROM member WHERE position = 'President'
SELECT MAX(spent) FROM budget
SELECT COUNT(event_id) FROM event WHERE STRFTIME('%Y', event_date) = '2020' AND type = 'Meeting'
SELECT SUM(spent) FROM budget WHERE category = 'Food'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.first_name, T1.last_name HAVING COUNT(T2.link_to_event) > 7
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id INNER JOIN major AS T4 ON T4.major_id = T1.zip WHERE T3.event_name = 'Community Theater' AND T4.major_name = 'Interior Design'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.city = 'Georgetown' AND T2.state = 'SC'
SELECT T2.amount FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Grant' AND T1.last_name = 'Gilmour'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT SUM(T2.cost) FROM event AS T1 INNER JOIN expense AS T2 ON T2.link_to_member = T1.event_id WHERE T1.event_name = 'Yearly Kickoff'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Yearly Kickoff'
SELECT T1.first_name, T1.last_name, T2.source FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.amount DESC LIMIT 1
SELECT T2.event_name FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id ORDER BY T1.cost LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.event_name = 'Yearly Kickoff' THEN T1.cost ELSE 0 END) AS REAL) * 100 / SUM(T1.cost) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id
SELECT CAST(SUM(CASE WHEN T2.major_name = 'Finance' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T2.major_name = 'Physics' THEN 1 ELSE 0 END) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id
SELECT source FROM income WHERE date_received LIKE '2019-09%' ORDER BY amount DESC LIMIT 1
SELECT first_name, last_name, email FROM member WHERE position = 'Secretary'
SELECT COUNT(T1.member_id) FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN major AS T3 ON T2.zip = T3.major_id WHERE T3.major_name = 'Physics Teaching'
SELECT COUNT(T2.member_id) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Community Theater' AND STRFTIME('%Y', T1.event_date) = '2019'
SELECT COUNT(T2.event_name) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id INNER JOIN major AS T4 ON T1.zip = T4.major_id WHERE T1.first_name = 'Luisa' AND T1.last_name = 'Guidi'
SELECT AVG(CAST(REPLACE(SUBSTR(spent, 4), 4, 2) AS REAL)) FROM budget WHERE event_status = 'Closed' AND category = 'Food'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T2.event_id = T1.link_to_event WHERE T1.category = 'Advertisement' ORDER BY T1.spent DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T1.first_name = 'Maya' AND T1.last_name = 'Mclean' AND T3.event_name = 'Women''s Soccer'
SELECT CAST(SUM(CASE WHEN type = 'Community Service' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(event_id) FROM event WHERE STRFTIME('%Y', event_date) = '2019'
SELECT T2.cost FROM event AS T1 INNER JOIN expense AS T2 ON T2.link_to_member = T1.event_id WHERE T1.event_name = 'September Speaker' AND T2.expense_description = 'Posters'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY COUNT(t_shirt_size) DESC LIMIT 1
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T2.event_id = T1.link_to_event WHERE T2.status = 'Closed' AND T1.remaining < 0 ORDER BY T1.remaining LIMIT 1
SELECT SUM(T1.cost), T2.type FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id WHERE T2.event_name = 'October Meeting'
SELECT SUM(T1.amount), T2.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'April Speaker' ORDER BY T1.amount
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT SUM(cost) FROM expense WHERE expense_description = 'Parking'
SELECT SUM(cost) FROM expense WHERE expense_date = '2019-08-20'
SELECT T1.first_name, T1.last_name, T2.amount FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.member_id = 'rec4BLdZHS2Blfp4v'
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.t_shirt_size = 'X-Large'
SELECT T1.zip_code FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost < 50
SELECT T1.major_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = 'Phillip' AND T2.last_name = 'Cullen'
SELECT T1.position FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Business'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.t_shirt_size = 'Medium' AND T2.department = 'Business'
SELECT DISTINCT T1.type FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T2.event_id = T1.link_to_event WHERE T2.location = 'MU 215'
SELECT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T2.event_id = T1.link_to_event WHERE T2.event_date LIKE '2020-03-24%'
SELECT T1.major_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'Vice President'
SELECT CAST(SUM(IIF(T2.major_name = 'Business', 1, 0)) AS REAL) * 100 / COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id
SELECT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = 'MU 215'
SELECT COUNT(amount) FROM income WHERE amount = 50
SELECT COUNT(member_id) FROM member WHERE t_shirt_size = 'X-Large' AND position = 'Member'
SELECT COUNT(department) FROM major WHERE college = 'College of Agriculture and Applied Sciences' AND department = 'School of Applied Sciences, Technology and Education'
SELECT T2.last_name, T1.department, T1.college FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Environmental Engineering'
SELECT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T2.event_id = T1.link_to_event WHERE T2.location = 'MU 215' AND T2.type = 'Guest Speaker' AND T1.spent = 0
SELECT T2.city, T2.state FROM major AS T1 INNER JOIN zip_code AS T2 ON T1.major_id = T2.zip_code WHERE T1.department = 'Electrical and Computer Engineering' AND T2.zip = ( SELECT zip_code FROM member WHERE position = 'Member' GROUP BY zip ORDER BY COUNT(position) DESC LIMIT 1 )
SELECT T1.event_name FROM event AS T1 INNER JOIN member AS T2 ON T1.event_id = T2.link_to_member WHERE T2.position = 'Vice President' AND T1.location = '900 E. Washington St.'
SELECT T2.last_name, T2.position FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_description = 'Pizza' AND T1.expense_date = '2019-09-10'
SELECT T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.event_name = 'Women''s Soccer' AND T1.position = 'Member'
SELECT CAST(SUM(CASE WHEN T2.amount = 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.amount) FROM income AS T1 INNER JOIN budget AS T2 ON T1.link_to_member = T2.link_to_event INNER JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.t_shirt_size = 'Medium' AND T3.position = 'Member'
SELECT DISTINCT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.type = 'PO Box'
SELECT DISTINCT zip_code FROM zip_code WHERE state = 'Puerto Rico' AND county = 'San Juan' AND type = 'PO Box'
SELECT event_name FROM event WHERE type = 'Game' AND status = 'Closed' AND event_date BETWEEN '2019-03-15' AND '2020-03-20'
SELECT T2.link_to_event FROM expense AS T1 INNER JOIN attendance AS T2 ON T1.link_to_member = T2.link_to_member WHERE T1.cost > 50
SELECT T1.first_name, T1.last_name, T2.link_to_event FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN expense AS T3 ON T3.link_to_member = T1.member_id WHERE T3.approved = 'true' AND T3.expense_date BETWEEN '2019-01-10' AND '2019-11-19'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Katy' AND T2.major_name = 'rec1N0upiVLy5esTO'
SELECT T2.phone FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'College of Agriculture and Applied Sciences' AND T1.major_name = 'Business'
SELECT T1.email FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost > 20 AND T2.expense_date BETWEEN '2019-09-10' AND '2019-11-19'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.department = 'College of Education & Human Services' AND T2.major_name = 'Education'
SELECT CAST(SUM(CASE WHEN remaining < 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(event_id) FROM budget
SELECT event_id, location, status FROM event WHERE event_date BETWEEN '2019-11-01' AND '2020-03-31'
SELECT T2.expense_description FROM budget AS T1 INNER JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T1.spent > 50
SELECT first_name, last_name FROM member WHERE t_shirt_size = 'XL'
SELECT CAST(SUM(IIF(type = 'PO Box', 1, 0)) AS REAL) * 100 / COUNT(zip_code) FROM zip_code
SELECT T2.event_name, T1.location FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 0
SELECT T1.event_name, T1.event_date FROM event AS T1 INNER JOIN expense AS T2 ON T2.link_to_member = T1.event_id WHERE T2.cost BETWEEN 50 AND 100 AND T2.expense_description = 'Pizza'
SELECT T1.first_name, T1.last_name, T3.major_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member INNER JOIN major AS T3 ON T1.zip = T3.major_id WHERE T2.cost > 100
SELECT T1.city, T2.country FROM zip_code AS T1 INNER JOIN member AS T2 ON T2.zip = T1.zip_code INNER JOIN event AS T3 ON T3.event_id = T2.link_to_event INNER JOIN income AS T4 ON T4.link_to_member = T2.member_id WHERE T4.amount > 40
SELECT T.first_name, T.last_name FROM ( SELECT T2.first_name, T2.last_name, SUM(T1.cost) FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.first_name, T2.last_name HAVING COUNT(T2.member_id) > 1 ) AS T ORDER BY T.amount DESC LIMIT 1
SELECT AVG(T3.cost) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN expense AS T3 ON T2.link_to_event = T3.link_to_event WHERE T1.position != 'Member'
SELECT T1.event_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Parking' AND T2.cost * 100 > ( SELECT SUM(cost) / COUNT(event_id) FROM budget WHERE category = 'Parking' )
SELECT CAST(SUM(T1.cost) AS REAL) * 100 / COUNT(T1.link_to_member) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id WHERE T2.type = 'Meeting'
SELECT T2.cost FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Water, chips, cookies' ORDER BY T1.cost DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.cost DESC LIMIT 5
SELECT T1.first_name, T1.last_name, T1.phone FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost > ( SELECT AVG(cost) FROM expense )
SELECT CAST(SUM(IIF(T1.state = 'New Jersey', 1, 0)) AS REAL) * 100 / COUNT(T2.member_id), CAST(SUM(IIF(T1.state = 'Vermont', 1, 0)) AS REAL) * 100 / COUNT(T2.member_id) FROM zip_code AS T1 INNER JOIN member AS T2 ON T1.zip_code = T2.zip
SELECT T2.major_name, T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Gerke'
SELECT T2.first_name, T2.last_name, T1.cost FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_description = 'Water, Veggie tray, supplies'
SELECT T2.last_name, T2.phone FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Elementary Education'
SELECT T1.category, T1.amount FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Food'
SELECT T1.first_name, T1.last_name, T2.amount FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.date_received = '9/9/2019'
SELECT T1.category FROM budget AS T1 INNER JOIN expense AS T2 ON T2.link_to_budget = T1.budget_id WHERE T2.expense_description = 'Posters'
SELECT T1.first_name, T1.last_name, T3.college FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id INNER JOIN attendance AS T3 ON T1.member_id = T3.link_to_member WHERE T1.position = 'Secretary'
SELECT SUM(T1.spent), T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Speaker Gifts'
SELECT T2.city FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Gerke'
SELECT T1.first_name, T1.last_name, T1.position FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.city = 'Lincolnton' AND T2.state = 'North Carolina' AND T2.zip_code = 28092
SELECT COUNT(T1.GasStationID) FROM gasstations AS T1 INNER JOIN products AS T2 ON T1.ChainID = T2.ProductID WHERE T1.Country = 'CZE' AND T2.Description = 'Premium gas'
SELECT CAST(SUM(CASE WHEN Currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN Currency = 'CZK' THEN 1 ELSE 0 END) FROM customers
SELECT T1.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE STRFTIME('%Y', T1.Date) >= '2012' AND STRFTIME('%m', T1.Date) <= '12' ORDER BY T1.Consumption ASC LIMIT 1
SELECT AVG(T1.Consumption) / 12 AS average FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND STRFTIME('%Y', T1.Date) BETWEEN '2013' AND '2013'
SELECT T2.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN gasstations AS T3 ON T3.GasStationID = T1.GasStationID WHERE T3.Country = 'CZK' AND T1.Date BETWEEN '2011-01' AND '2011-12' GROUP BY T2.CustomerID ORDER BY SUM(T1.Consumption) DESC LIMIT 1
SELECT COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date BETWEEN '2012-01' AND '2012-12' AND T2.Segment = 'KAM' AND T1.Consumption < 30000
SELECT SUM(IIF(T1.Currency = 'CZK', T2.Consumption, 0)) - SUM(IIF(T1.Currency = 'EUR', T2.Consumption, 0)) AS diff FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Country = 'CZK' AND T1.Currency = 'EUR' AND T2.Date BETWEEN '2012-01' AND '2012-12'
SELECT `year` FROM ( SELECT `year`, COUNT(DISTINCT T1.TransactionID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = 'EUR' GROUP BY `year` ) GROUP BY `year` ORDER BY COUNT(`year`) DESC LIMIT 1
SELECT Segment FROM customers GROUP BY Segment ORDER BY SUM(Consumption) ASC LIMIT 1
SELECT strftime('%Y', `Date`) FROM yearmonth GROUP BY strftime('%Y', `Date`) ORDER BY COUNT(`Date`) DESC LIMIT 1
SELECT T1.Date, T2.month FROM yearmonth AS T1 INNER JOIN ( SELECT `Date`, SUBSTR(`Date`, 5, 2) AS month FROM yearmonth WHERE `Date` LIKE '2013%' ) AS T2 ON T1.Date LIKE '2013%' AND SUBSTR(T1.Date, 5, 2) BETWEEN '01' AND '12' WHERE T1.CustomerID IN ( SELECT CustomerID FROM customers WHERE Segment = 'SME' ) ORDER BY T1.Date DESC LIMIT 1
SELECT ( SELECT SUM(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND T2.Currency = 'CZK' AND STRFTIME('%Y', T1.Date) = '2013' ) / ( SELECT COUNT(CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND T2.Currency = 'CZK' AND STRFTIME('%Y', T1.Date) = '2013' ) - ( SELECT SUM(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'LAM' AND T2.Currency = 'CZK' AND STRFTIME('%Y', T1.Date) = '2013' ) / ( SELECT COUNT(CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'LAM' AND T2.Currency = 'CZK' AND STRFTIME('%Y', T1.Date) = '2013' ) + ( SELECT SUM(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'KAM' AND T2.Currency = 'CZK' AND STRFTIME('%Y', T1.Date) = '2013' ) / ( SELECT COUNT(CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'KAM' AND T2.Currency = 'CZK' AND STRFTIME('%Y', T1.Date) = '2013' )
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'EUR' AND STRFTIME('%Y-%m', T2.Date) BETWEEN '2012' AND '2013' ORDER BY T2.Consumption LIMIT 1
SELECT SUM(T2.Amount) FROM yearmonth AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date BETWEEN '2013-08' AND '2013-11' AND T1.CustomerID = 6
SELECT SUM(CASE WHEN T1.Country = 'CZECH REPUBLICS' THEN 1 ELSE 0 END) - SUM(CASE WHEN T1.Country = 'SVK' THEN 1 ELSE 0 END) AS diff FROM gasstations AS T1 INNER JOIN gasstations AS T2 ON T1.ChainID = T2.ChainID WHERE T1.Segment = 'Gas' AND T1.Country = 'CZECH REPUBLICS'
SELECT (SUM(CASE WHEN `Date` = '201304' THEN Consumption ELSE 0 END) - SUM(CASE WHEN `Date` = '201305' THEN Consumption ELSE 0 END)) AS diff FROM yearmonth WHERE CustomerID = 7
SELECT (SUM(CASE WHEN T2.Currency = 'CZK' THEN 1 ELSE 0 END) - SUM(CASE WHEN T2.Currency = 'EUR' THEN 1 ELSE 0 END)) * 100000 AS dif FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID
SELECT T1.CustomerID FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2013-10' AND T1.Currency = 'Euro' ORDER BY T2.Consumption DESC LIMIT 1
SELECT T2.CustomerID, MAX(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.CustomerID = 'KAM' GROUP BY T2.CustomerID
SELECT SUM(T1.Consumption) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2013-05' AND T2.CustomerID = 101
SELECT CAST(SUM(CASE WHEN T2.Consumption > 46.73 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID
SELECT T2.Country, SUM(T1.Price * T1.Amount / T1.Date) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date < '2024-01-01' GROUP BY T2.Country ORDER BY SUM(T1.Price * T1.Amount / T1.Date) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.Currency = 'Euro' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID
SELECT CAST(SUM(CASE WHEN `Consumption` > 528.3 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(`Date`) FROM yearmonth WHERE `Date` LIKE '201202%'
SELECT CAST(SUM(CASE WHEN T1.Country = 'Slovakia' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.GasStationID) FROM gasstations AS T1 INNER JOIN ( SELECT GasStationID FROM gasstations WHERE Country = 'Slovakia' GROUP BY GasStationID ) AS T2 ON T1.GasStationID = T2.GasStationID
SELECT CustomerID FROM yearmonth WHERE `Date` = '201309' GROUP BY CustomerID ORDER BY SUM(Consumption) DESC LIMIT 1
SELECT T2.Segment FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2013-09' GROUP BY T2.Segment ORDER BY SUM(T1.Consumption) ASC LIMIT 1
SELECT T1.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '201206' AND T2.Segment = 'SM' ORDER BY T1.Consumption ASC LIMIT 1
SELECT MAX(Consumption) FROM yearmonth WHERE `Date` LIKE '2012%'
SELECT SUM(T1.Consumption) / 12 FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = 'Euro'
SELECT DISTINCT T1.Description FROM products AS T1 INNER JOIN yearmonth AS T2 ON T1.ProductID = T2.TransactionID WHERE T2.Date = '2013-09'
SELECT DISTINCT T2.Country FROM yearmonth AS T1 INNER JOIN gasstations AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE '2013-06%'
SELECT T2.ChainID FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T2.GasStationID = T1.GasStationID WHERE T2.Amount = 1000000 AND T2.Currency = 'Euro'
SELECT DISTINCT T1.Description FROM products AS T1 INNER JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID INNER JOIN customers AS T3 ON T2.CustomerID = T3.CustomerID WHERE T3.Currency = 'Euro'
SELECT SUM(T2.Amount) / COUNT(T2.TransactionID) FROM yearmonth AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE '2012-01%'
SELECT COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = 'EUR' AND T1.Consumption > 1000
SELECT DISTINCT T3.Description FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN products AS T3 ON T2.ProductID = T3.ProductID WHERE T1.Country = 'CZE'
SELECT T1.`Time` FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ChainID = 11
SELECT COUNT(T1.TransactionID) FROM `transactions_1k` AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = 'CZE' AND T1.Price > 1000
SELECT COUNT(T2.TransactionID) FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = 'CZE' AND T2.Date >= '2012-01-01'
SELECT AVG(T1.Amount * T1.Price) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = 'CZE'
SELECT AVG(T1.Amount * T1.Price) FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.Date = T2.Date INNER JOIN customers AS T3 ON T2.CustomerID = T3.CustomerID WHERE T3.Currency = 'Euro'
SELECT T1.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-25'
SELECT T1.Country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = '2012-08-25' GROUP BY T1.Country ORDER BY COUNT(T2.CustomerID) DESC LIMIT 1
SELECT T1.Currency FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-24' AND T2.Time = '16:25:00'
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-23' AND T2.Time = '21:20'
SELECT COUNT(T1.TransactionID) FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.Date = T2.Date INNER JOIN customers AS T3 ON T2.CustomerID = T3.CustomerID WHERE T1.Date = '2012-08-26' AND T1.Amount > 0 AND T3.Currency = 'CZK' AND T1.Time < '13:00:00'
SELECT Segment FROM customers WHERE CustomerID = ( SELECT MIN(CustomerID) FROM customers )
SELECT DISTINCT T1.Country FROM gasstations AS T1 INNER JOIN yearmonth AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = '2012-08-24' AND T2.Time = '12:42:00'
SELECT DISTINCT ProductID FROM transactions_1k WHERE `Date` LIKE '2012-08-23%' AND Time = '21:20:00'
SELECT T1.Date, T1.Consumption FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.CustomerID = 124.05 AND T1.Date LIKE '2012-01%'
SELECT COUNT(T1.GasStationID) FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = '2012-08-26' AND T2.Time BETWEEN '08:00:00' AND '09:00:00' AND T1.Country = 'CZE'
{"sql": "SELECT T2.Currency FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE '201306%' AND T1.Date NOT LIKE '201305%' AND T1.Date NOT LIKE '201304%' AND T1.Date NOT LIKE '201303%' AND T1.Date NOT LIKE '201302%' AND T1.Date NOT LIKE '201301%' AND T1.Date NOT LIKE '201307%' AND T1.Date NOT LIKE '201308%' AND T1.Date NOT LIKE '201309%' AND T1.Date NOT LIKE '201310%' AND T1.Date NOT LIKE '201311%' AND T1.Date NOT LIKE '201312%' AND T1.Date NOT LIKE '201313%' AND T1.Date NOT LIKE '201314%' AND T1.Date NOT LIKE '201315%' AND T1.Date NOT LIKE '201316%' AND T1.Date NOT LIKE '201317%' AND T1.Date NOT LIKE '201318%' AND T1.Date NOT LIKE '201319%' AND T1.Date NOT LIKE '201320%' AND T1.Date NOT LIKE '201321%' AND T1.Date NOT LIKE '201322%' AND T1.Date NOT LIKE '201323%' AND T1.Date NOT LIKE '201324%' AND T1.Date NOT LIKE '201325%' AND T1.Date NOT LIKE '201326%' AND T1.Date NOT LIKE '201327%' AND T1.Date NOT LIKE '201328%' AND T1.Date NOT LIKE '201329%' AND T1.Date NOT LIKE '201330%' AND T1.Date NOT LIKE '201331%' AND T1.Date NOT LIKE '201306%' AND T1.Date NOT LIKE '201305%' AND T1.Date NOT LIKE '201304%' AND T1.Date NOT LIKE '201303%' AND T1.Date NOT LIKE '201302%' AND T1.Date NOT LIKE '201301%' AND T1.Date NOT LIKE '201307%' AND T1.Date NOT LIKE '201308%' AND T1.Date NOT LIKE '201309%' AND T1.Date NOT LIKE '201310%' AND T1.Date NOT LIKE '201311%' AND T1.Date NOT LIKE '201312%' AND T1.Date NOT LIKE '201313%' AND T1.Date NOT LIKE '201314%' AND T1.Date NOT LIKE '201315%' AND T1.Date NOT LIKE '201316%' AND T1.Date NOT LIKE '201317%' AND T1.Date NOT LIKE '201318%' AND T1.Date NOT LIKE '201319%' AND T1.Date NOT LIKE '201320%' AND T1.Date NOT LIKE '201321%' AND T1.Date NOT LIKE '201322%' AND T1.Date NOT LIKE '201323%' AND T1.Date NOT LIKE '201324%' AND T1.Date NOT LIKE '201325%' AND T1.Date NOT LIKE '201326%' AND T1.Date NOT LIKE '201327%' AND T1.Date NOT LIKE '201328%' AND T1.Date NOT LIKE '201329%' AND T1.Date NOT LIKE '201330%' AND T1.Date NOT LIKE '201331%' AND T1.Date NOT LIKE '201306%' AND T1.Date NOT LIKE '201305%' AND T1.Date NOT LIKE '201304%' AND T1.Date NOT LIKE '201303%' AND T1.Date NOT LIKE '201302%' AND T1.Date NOT LIKE '201301%' AND T1.Date NOT LIKE '201307%' AND T1.Date NOT LIKE '201308%' AND T1.Date NOT LIKE '201309%' AND
SELECT DISTINCT T2.Country FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.CardID = 667467
SELECT T2.Country FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-24' AND T1.Amount = 548.4
SELECT CAST(SUM(CASE WHEN T1.Currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-25'
SELECT (SUM(CASE WHEN `Date` = '2012-08-25' THEN Consumption ELSE 0 END) - SUM(CASE WHEN `Date` = '2013-08-25' THEN Consumption ELSE 0 END)) / SUM(CASE WHEN `Date` = '2012-08-25' THEN Consumption ELSE 0 END) FROM yearmonth WHERE `Date` = '2012-08-25'
SELECT T2.GasStationID FROM yearmonth AS T1 INNER JOIN gasstations AS T2 ON T1.Date IS NOT NULL AND T2.GasStationID = T1.GasStationID INNER JOIN gasstations AS T3 ON T3.GasStationID = T1.GasStationID WHERE T2.Segment = 1 ORDER BY T1.Amount * T3.Price DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.Segment = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Segment) FROM gasstations AS T1 INNER JOIN customers AS T2 ON T1.Country = T2.Country WHERE T1.Country = 'SVK'
SELECT SUM(T2.Amount) FROM yearmonth AS T1 INNER JOIN transactions_1k AS T2 ON T1.TransactionID = T2.TransactionID WHERE T1.Date = '201201' AND T1.CustomerID = 38508
SELECT ProductID, Description FROM products WHERE Description LIKE '%best selling%' ORDER BY COUNT(ProductID) DESC LIMIT 5
SELECT T1.CustomerID, SUM(T2.Price * T2.Amount), T1.Currency FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.CustomerID ORDER BY SUM(T2.Price * T2.Amount) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ProductID = 2 ORDER BY T2.Price DESC LIMIT 1
SELECT T1.Consumption FROM yearmonth AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.ProductID = 5 AND T1.Date = '201208' AND T2.Amount * T2.Price > 29.00
