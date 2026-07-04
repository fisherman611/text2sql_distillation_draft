SELECT `Free Meal Count (K-12)` / `Enrollment (K-12)` FROM frpm WHERE County = 'Alameda County' AND `K-12` = 10
SELECT `Free Meal Count (Ages 5-17)` / `Enrollment (Ages 5-17)` FROM frpm ORDER BY `Enrollment (Ages 5-17)` ASC LIMIT 3
SELECT DISTINCT T2.Zip FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.`Charter School (Y/N)` = 1 AND T1.County = 'Fresno County Office of Education'
SELECT T1.MailStreet FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.FRPM COUNT (K-12) DESC LIMIT 1
SELECT DISTINCT T2.Phone FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`Charter School (Y/N)` = 1 AND T2.OpenDate > '2000-01-01'
SELECT COUNT(T2.SchoolCode) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.Virtual = 'F' AND T1.AvgScrMath > 400
SELECT T1.school FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Magnet = 1 AND T2.numtsttakr > 500
SELECT T2.Phone FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode GROUP BY T2.Phone ORDER BY COUNT(T1.cds) DESC LIMIT 1
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.FRPM COUNT (K-12) = ( SELECT MAX(FRPM COUNT (K-12)) FROM frpm )
SELECT COUNT(T2.CDSCode) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.AvgScrMath > 560 AND T2.Charter funding type = 'direct'
SELECT COUNT(T1.CDSCode) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T2.CDSCode = T3.CDS WHERE T1.Ages 5-17 AND T3.Rtype = 'Reading' GROUP BY T2.CDSCode ORDER BY SUM(T3.ScrRead) / SUM(T3.ScrMath) DESC LIMIT 1
SELECT `School` FROM ( SELECT `School`, SUM(`Enrollment (K-12)`) + `Enrollment (Ages 5-17)`) AS T FROM schools GROUP BY `School` ) HAVING SUM(`Enrollment (K-12)`) + SUM(`Enrollment (Ages 5-17)`) > 500
SELECT SUM(CASE WHEN T1.`Free Meal Count (Ages 5-17)` > 0.3 THEN 1 ELSE 0 END) / SUM(CASE WHEN T1.`Free Meal Count (Ages 5-17)` > 0.3 THEN 1 ELSE 0 END) FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode
SELECT T2.Phone FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode ORDER BY T1.NumGE1500 / T1.NumTstTakr DESC LIMIT 3
SELECT NCESchool FROM schools WHERE Enrollment (Ages 5-17) = ( SELECT MAX(Enrollment (Ages 5-17)) FROM schools ) LIMIT 5
SELECT T1.dname FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.districtType = 'Reading' GROUP BY T1.dname ORDER BY SUM(T2.ScrRead) / COUNT(T2.ScrRead) DESC LIMIT 1
SELECT COUNT(*) FROM schools WHERE Alameda District = 'Alameda' AND NumTstTakr < 100
SELECT DISTINCT T1.CharterNum FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDS WHERE T2.AvgScrWrite > 499
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDS WHERE T1.City = 'Fresno' AND T1.FundingType = 'Directly funded' AND T2.NumTstTakr <= 250
SELECT T2.Phone FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.AvgScrMath = ( SELECT MAX(AvgScrMath) FROM satscores )
SELECT COUNT(*) FROM schools WHERE Amador = 'Amador' AND Low Grade = 9 AND High Grade = 12
SELECT COUNT(*) FROM ( SELECT COUNT(Schools) FROM frpm WHERE Free Meal Count (K-12) > 500 AND Free Meal Count (Ages 5-17) < 700 )
SELECT T1.State FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.County = 'contra costa' ORDER BY T2.numtsttakr DESC LIMIT 1
SELECT T2.school, T2.street FROM ( SELECT school, address FROM frpm WHERE `K-12` - `Ages 5-17` > 30 ) AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode
SELECT T2.schoolname FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode INNER JOIN frpm AS T3 ON T2.CDSCode = T3.CDSCode WHERE T3."Free Meal Count (K-12)" / T3.Enrollment (K-12) > 0.1 AND T1.scr >= 1500
SELECT T2.schools, T1.fundingtype FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDS WHERE T1.City = 'Rivers' GROUP BY T2.sname HAVING SUM(T2.AverageMath) / COUNT(T1.schools) > 400
SELECT T2.School Name, T1.Street, T1.City, T1.Zip FROM schools AS T1 INNER JOIN ( SELECT T2.School Name FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.StatusType = 'Monterey' AND T1.FRPM Count (K-12) > 800 GROUP BY T2.School Name ) AS T2 ON T1.CDSCode = T2.CDSCode
SELECT AVG(T1.Scr, T2.school, T2.Phone) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE (T2.ClosedDate < 2000 OR T2.OpenDate > 1991) GROUP BY T2.school, T2.Phone
SELECT DISTINCT T1.school, T1 DOCType FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.FRPM (K-12) - T2.FRPM (Ages 5-17) > 0
SELECT MIN(T2.OpenDate) FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.K-12 = 'First-through-twelfth-grade' ORDER BY T2.Enrollment DESC LIMIT 1
SELECT City FROM schools ORDER BY Enrollment (K-12) ASC LIMIT 5
SELECT SUM(CASE WHEN StatusType = 'K-12' THEN 1 ELSE 0 END), CAST(SUM(CASE WHEN StatusType = 'K-12' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN StatusType = 'K-12' THEN Enrollment (K-12) ELSE 0 END) FROM schools WHERE StatusType = 'K-12' ORDER BY Enrollment (K-12) DESC LIMIT 10, 11
SELECT `FRPM Count (K-12)` / `Enrollment (K-12)` FROM frpm WHERE ownershipcode = 66 ORDER BY `Free Meal Count (K-12)` DESC LIMIT 5
SELECT T1.Website, T2.`School Name` FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.`Free Meal Count (K-12)` = 1900 AND T2.`Free Meal Count (Ages 5-17)` = 2000
SELECT T2.`Free Meal Count (Ages 5-17)` / T2.`Enrollment (Ages 5-17)` FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`School Name` = 'Kacey Gibson'
SELECT T2.Email FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`Charter School (Y/N)` = 1 AND T1.Enrollment (K-12) = ( SELECT MIN(Enrollment (K-12)) FROM frpm )
SELECT T1.First, T1.Last FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDS WHERE T2.NumGE1500 = ( SELECT MAX(T2.NumGE1500) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDS )
SELECT T1.Street, T1.City, T1.Zip, T1.State FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY T2.Rate ASC LIMIT 1
SELECT T1.Website FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDS WHERE T1.County = 'Los Angeles County' AND T2.NumTstTakr BETWEEN 2000 AND 3000
SELECT AVG(T1.NumTstTakr) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.City = 'Fresno' AND T2.OpenDate BETWEEN '1980-01-01' AND '1980-12-31'
SELECT T2.Phone FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.District = 'Fresno Unif' ORDER BY T1.AvgScrRead DESC LIMIT 1
SELECT DISTINCT T2.School FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDS WHERE T1.Virtual = 'F' GROUP BY T2.School ORDER BY SUM(T2.AvgScrRead) / COUNT(T2.School) LIMIT 5
SELECT DISTINCT T2.edopsname FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.AvgScrMath = ( SELECT MAX(AvgScrMath) FROM satscores )
SELECT AVG(T1.AvgScrMath + T1.AvgScrRead + T1.AvgScrWrite), T2.County FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode GROUP BY T2.County ORDER BY COUNT(T1.AvgScrMath + T1.AvgScrRead + T1.AvgScrWrite) LIMIT 1
SELECT AVG(T1.AverageScrWrite), T2.City FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode GROUP BY T2.City ORDER BY COUNT(T1.cds) DESC LIMIT 1
SELECT AVG(T2.AvgScrWrite), T1.school, T1.AvgScrWrite FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDS WHERE T2.Ricci Ulrich
SELECT T2.State FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.DOC = 31 AND T2.Ages >= 1 AND T2.Ages <= 12
SELECT CAST(SUM(CASE WHEN T1.DOC = 52 THEN 1 ELSE 0 END) AS REAL) / 12 FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = 'Alameda County' AND STRFTIME('%Y', T2.OpenDate) = '1980'
SELECT 100.0 * (SUM(CASE WHEN DOC = 54 THEN 1 ELSE 0 END) - SUM(CASE WHEN DOC = 52 THEN 1 ELSE 0 END)) / SUM(CASE WHEN DOC = 52 THEN 1 ELSE 0 END) FROM schools
SELECT DISTINCT T1.County, T1.school, T1.ClosedDate FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN schools AS T3 ON T2.CDSCode = T3.CDSCode WHERE T1.StatusType = 'Closed' GROUP BY T1.County, T1.school, T1.ClosedDate ORDER BY COUNT(T1.school) DESC LIMIT 1
SELECT T2.PostalAddress, T1.`School Name` FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.Average DESC LIMIT 6, 1
SELECT T2.MailStreet, T1.`School Name` FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T1.CDSCode = T3.CDSCode WHERE T2.MailStreet = ( SELECT MailStreet FROM schools ORDER BY Avg(ScrRead) ASC LIMIT 1 )
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.MailingCity = 'Lakeport' AND T2.AvgScrRead + T2.AvgScrMath + T2.AvgScrWrite >= 1500
SELECT COUNT(T1.NumTstTakr) FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.MailCity = 'Fresno'
SELECT T2.school, T2.MailZip FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = 'Avetik' AND T1.AdmLName1 = 'Atoian'
SELECT CAST(SUM(CASE WHEN T2.County = 'Colusa' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T2.County = 'Humboldt' THEN 1 ELSE 0 END) FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailState = 'California'
SELECT COUNT(CDSCode) FROM schools WHERE State = 'California' AND MailCity = 'San Joaquin' AND MailState = 'Active'
SELECT T2.Phone, T2.Ext FROM satscores AS T1 INNER JOIN schools AS T2 ON T1.cds = T2.CDSCode ORDER BY T1.AvgScrWrite DESC LIMIT 333, 1
SELECT T2.Phone, T2.Ext, T1.`School Name` FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Zip = 95203-3704
SELECT Website FROM schools WHERE AdmFName1 = 'Mike' AND AdmLName1 = 'Larson' AND AdmFName2 = 'Dante' AND AdmLName2 = 'Alvez'
SELECT DISTINCT Website FROM schools WHERE Virtual = 'P' AND Chartered = 1 AND School = 'San Joaquin'
SELECT COUNT(CDSCode) FROM schools WHERE Chartered = 1 AND Document = 52
SELECT COUNT(*) FROM schools WHERE County = 'Los Angeles' AND K-12 = 'grades 1 through 12' AND `Free Meal Count (K-12)` * 100 / `Enrollment (K-12)` < 0.18
SELECT T1.First, T1.Last, T2.City, T2.District FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Chartered = '1'
SELECT COUNT(*) FROM schools WHERE MailCity = 'Hickman' AND Charter = '00D4'
SELECT CAST(SUM(CASE WHEN T2.FundingType = 'Santa Clara County Schools' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.FundingType) FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode
SELECT COUNT(*) FROM schools WHERE County = 'Stanislaus' AND FundingType = 'Directly Funded' AND STRFTIME('%Y', OpenDate) BETWEEN '2000' AND '2005'
SELECT SUM(T1.Closure) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.City = 'San Francisco' AND T2.FRPM = 1989
SELECT COUNT(*) FROM schools WHERE SOC = 11 AND BETWEEN 1980 AND 1989 AND EILName = 'Youth Authority Facilities (CEA)'
SELECT NCESDist FROM schools WHERE SOC = 31
SELECT COUNT(CDSCode) FROM schools WHERE County = 'Alpine' AND StatusType = 'Active and closed'
SELECT T1.DistrictCode FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.City = 'Fresno' AND T2.Magnet = 0
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.StatusType = 'B' AND T1.County = 'Fremont' AND T1.EdOpsCode = 'SSS' AND T2.`Academic Year` = 2014 AND 2015 AND T2.School = 'State Special School'
SELECT COUNT(*) FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailingStreet = 'PO Box 1040' AND T2.Ages 5 TO 17 AND T1.Status = 'Youth Authority School'
SELECT T1.`Low Grade` FROM frpm AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.EdOpsCode = 'SPECON' AND T1.CDSCode = 0613360
SELECT T2.EdopsName, T1.`School` FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 37 AND T2.FRPM = '2'
SELECT T2.City FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Merced' AND T2.Lunch Provision = '2' AND T1.EILCode = 'HS' AND T2.`Low Grade` = 9 AND T2.`High Grade` = 12
SELECT T1.`School`, CAST(T2.`Enrollment (Ages 5-17)` AS REAL) * 100 / T2.`Enrollment (K-12)` FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'Los Angeles' AND T2.FRPM Count (Ages 5-17) > 0 AND T2.FRPM Count (Ages 5-17) < 10
SELECT T2.rtype FROM schools AS T1 INNER JOIN satscores AS T2 ON T1.CDSCode = T2.CDS WHERE T1.City = 'Adelanto' GROUP BY T2.rtype ORDER BY COUNT(T2.rtype) DESC LIMIT 1
SELECT COUNTy, num FROM schools WHEREVirtual = 'F' AND COUNTy IN ('san Diego', 'Santa Barbara') GROUP BY COUNTy ORDER BY COUNTy DESC LIMIT 1
SELECT T2.`School Type`, T2.`School Name`, T1.Latitude FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.Latitude DESC LIMIT 1
SELECT T2.City, T2.lowGrade, T2.schoolName FROM schools AS T1 INNER JOIN ( SELECT * FROM schools ORDER BY Latitude ASC LIMIT 1 ) AS T2 ON T1.City = T2.City WHERE T1.State = 'CA'
SELECT T1.GSoffered FROM schools AS T1 INNER JOIN ( SELECT T2.GSoffered FROM T1 AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.Longitude DESC LIMIT 1 ) AS T2 ON T1.CDSCode = T2.CDSCode
SELECT COUNT(T1.CDSCode) FROM schools AS T1 INNER JOIN ( SELECT T1.CDSCode FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Magnet = 1 AND T2.Magnet = 1 AND T1.KindergartenTo8 ) AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.`NSLP Provision Status` = 'Multiple Provision Types'
SELECT T1.FName1, T2.District FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.FName1 ORDER BY COUNT(T1.FName1) DESC LIMIT 2
SELECT T2.District Code FROM schools AS T1 INNER JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = 'Alusine' AND T2.`Free Meal Count (K-12)` / T1.Enrollment (K-12) * 100 = 100 AND T2.`Enrollment (K-12)` IS NOT NULL GROUP BY T2.District Code
SELECT T2.LastName1, T2.District, T2.County, T2.school FROM schools AS T1 INNER JOIN ( SELECT * FROM schools WHERE CharNumber = 40 ORDER BY FundingType DESC LIMIT 1 ) AS T2 ON T1.CDSCode = T2.CDSCode
SELECT T2.Email FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.SOC = 62 AND T1.DOC = 54 AND T1.County = 'san Bernardino county' AND T1.City = 'san Bernardino city' AND T1.DocumentType = 'Public Intermediary Schools' AND T1.ModifiedDate BETWEEN '2009-01-01' AND '2010-12-31'
SELECT T2.Email, T1.school FROM schools AS T1 INNER JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode INNER JOIN satscores AS T3 ON T2.CDSCode = T3.CDS WHERE T3.numtakers >= 1500 ORDER BY T3.numtakers DESC LIMIT 1
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN region AS T3 ON T2.region_id = T3.district_id WHERE T3.district_id = 3 AND T2.A3 = 'POPLATEK PO OBRATU' AND T3.district_id = 4
SELECT COUNT(DISTINCT T1.account_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 LIKE '%práce%'
SELECT CASE WHEN SUM(CASE WHEN A13 = 1996 THEN 1 ELSE 0 END) > SUM(CASE WHEN A13 = 1995 THEN 1 ELSE 0 END) THEN '1996' ELSE '1995' END FROM district AS A12 INNER JOIN client AS A13 ON A12.district_id = A13.district_id
SELECT COUNT(T2.district_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T2.A11 > 6000 AND T2.A11 < 10000
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 > 8000 AND T1.gender = 'M' AND T2.A1 = 'North Bohemia'
SELECT T1.account_id, T1.A11 - T2.Average FROM district AS T1 INNER JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' GROUP BY T1.A11 ORDER BY SUM(T2.Average) ASC LIMIT 1
SELECT T1.account_id FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A11 = ( SELECT MAX(average_salary) FROM client ) AND T1.birth_date < T2.birth_date
SELECT COUNT(owner) FROM customer WHERE issue_rate = 'POPLATEK TYDNE'
SELECT T2.client_id FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.issued = 'POPLATEK PO OBRATU'
SELECT DISTINCT T1.account_id, T2.amount, T2.date FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE '1997%' AND T2.status = 'approved' ORDER BY T2.amount ASC LIMIT 1
SELECT T1.account_id, T1.amount, T1.date FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND T2.date LIKE '1993%' ORDER BY T1.amount DESC LIMIT 1
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND STRFTIME('%Y', T1.birth_date) < '1950' AND T2.district_id = ( SELECT district_id FROM district WHERE A2 = 'Sokolov' )
SELECT DISTINCT T1.account_id FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date < '1995-01-01'
SELECT DISTINCT T1.account_id FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T2.date) < '1997' AND T2.amount > 3000
SELECT T1.client_id FROM client AS T1 INNER JOIN card AS T2 ON T1.client_id = T2.issued WHERE T2.issue_date = '1994-03-03'
SELECT T1.first, T1.last FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1998-10-14' AND T2.type = 'USD'
SELECT T1.district_id FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1994-08-25'
SELECT T1.amount FROM trans AS T1 INNER JOIN card AS T2 ON T1.account_id = T2.disp_id WHERE STRFTIME('%Y-%m-%d', T2.issued) = '1996-10-21' ORDER BY T1.amount DESC LIMIT 1
SELECT T1.gender FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A11 = ( SELECT AVG(A11) FROM district ) ORDER BY T1.birth_date ASC LIMIT 1
SELECT T1.amount FROM loan AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'opened' ORDER BY T1.amount DESC LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Jesenik' AND T1.gender = 'F'
SELECT T2.disp_id FROM trans AS T1 INNER JOIN card AS T2 ON T1.k_symbol = T2.k_symbol WHERE T1.amount = 5100 AND STRFTIME('%Y-%m-%d', T1.`date`) = '1998-09-02'
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Litomerice' AND STRFTIME('%Y', T1.`date`) = '1996'
SELECT T2.district_id FROM client AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T1.birth_date = '1976-01-29'
SELECT T1.birth_date FROM client AS T1 INNER JOIN order AS T2 ON T1.client_id = T2.client_id INNER JOIN loan AS T3 ON T3.account_id = T2.account_id WHERE T3.amount = '98832' AND T3.date = '1996-01-03'
SELECT T1.account_id FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Prague'
SELECT CAST(SUM(CASE WHEN T1.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = ( SELECT MAX(A3) FROM district ) AND T2.A4 = ( SELECT MAX(A4) FROM district )
SELECT (T1.amount - T2.amount) * 100 / T2.amount FROM loan AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'approved' AND T1.`date` = '1993-07-05' AND T2.`date` = '1998-12-27'
SELECT CAST(SUM(CASE WHEN status = 'A' THEN amount ELSE 0 END) AS REAL) * 100 / SUM(amount) FROM loan
SELECT CAST(SUM(CASE WHEN T1.status = 'C' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.amount) FROM loan AS T1 WHERE T1.amount < 100000
SELECT T1.account_id, T2.A2, T2.A3 FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN trans AS T3 ON T1.account_id = T3.account_id WHERE T3.date LIKE '1993%' AND T3.type = 'Account' AND T3.issued_after = 'transaction'
SELECT T1.account_id, T1.frequency FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.district_id = 1995 AND 2000 AND T2.A3 = 'East Bohemia'
SELECT T2.account_id, T2.date FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = 'Prachatice'
SELECT T1.A2, T1.A3 FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.loan_id = 4990
SELECT T1.account_id, T2.district_id, T3.region_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.amount > 3000000
SELECT T1.loan_id, T2.district_id, T2.A11 FROM loan AS T1 INNER JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.duration = 60
SELECT T4.district_id, T4.unemployment rate 2016 - T4.unemployment rate 2015 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN loan AS T3 ON T1.client_id = T3.client_id INNER JOIN district AS T4 ON T2.district_id = T4.district_id WHERE T3.status = 'D'
SELECT 100.0 * SUM(CASE WHEN T1.district_id = 1993 THEN 1 ELSE 0 END) / COUNT(T1.district_id) AS per FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Account opened in 1993'
SELECT account_id FROM card WHERE issued = 'POPLATEK MESICNE'
SELECT T1.district_id FROM account AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.district_id WHERE T2.gender = 'F' GROUP BY T1.district_id ORDER BY COUNT(T1.district_id) DESC LIMIT 9
SELECT T4.A2 FROM card AS T1 INNER JOIN trans AS T2 ON T1.disp_id = T2.account_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id INNER JOIN district AS T4 ON T3.district_id = T4.district_id WHERE T1.type = 'VYDAJ' AND T2.date LIKE '1996-01%' ORDER BY T2.amount DESC LIMIT 10
SELECT COUNT(T2.A3) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'South Bohemia' AND T2.A2 = 0
SELECT T3.A3 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN ( SELECT T1.district_id, COUNT(T1.client_id) AS num FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN loan AS T3 ON T1.client_id = T3.account_id WHERE T3.status = 'C' GROUP BY T1.district_id ) AS T3 ON T2.district_id = T3.district_id
SELECT AVG(T1.amount) FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.account_id WHERE T2.gender = 'M'
SELECT T1.A2, T1.A3, T1.A4, T1.A5, T1.A6, T1.A7, T1.A8, T1.A9 FROM district AS T1 INNER JOIN card AS T2 ON T1.district_id = T2.disp_id INNER JOIN disp AS T3 ON T3.client_id = T2.disp_id INNER JOIN account AS T4 ON T4.district_id = T1.district_id WHERE T1.A13 = ( SELECT MAX(A13) FROM district WHERE STRFTIME('%Y', A13) = '1996' ) LIMIT 1
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 1996 ORDER BY T2.A16 DESC LIMIT 1
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.balance < 0 AND T2.operation = 'VYBER KARTOU' AND T1.frequency = 'POPLATEK MESICNE'
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 'POPLATEK MESICNE' AND T2.amount >= 250000 AND STRFTIME('%Y', T2.date) BETWEEN '1995' AND '1997' AND T1.date >= '1995-01-01' AND T1.date <= '1997-12-31'
SELECT COUNT(T1.runningcontract) FROM runningcontract AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.district_id = 1 AND T1.status = 'C'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 1995 AND T1.gender = 'M' ORDER BY T2.A2 DESC LIMIT 1
SELECT COUNT(T1.Card_id) FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'Owner' AND T1.type = 'High-level credit card'
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Pisek'
SELECT T1.district_id FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE STRFTIME('%Y', T3.`date`) = '1997' AND T3.amount > 10000
SELECT T1.account_id FROM order AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.k_symbol = 'SIPO' AND T2.district_id = 4
SELECT T1.account_id FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'gold'
SELECT AVG(T1.amount) FROM order AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE STRFTIME('%Y', T2.`date`) = '2021' AND T2.operation = 'VYBER KARTOU'
SELECT DISTINCT T2.account_id FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < ( SELECT AVG(amount) FROM trans WHERE STRFTIME('%Y', date) = '1998' ) AND T1.`operation` = 'VYBER KARTOU'
SELECT T1.first_name, T1.last_name FROM client AS T1 INNER JOIN loan AS T2 ON T1.client_id = T2.account_id INNER JOIN card AS T3 ON T3.disp_id = T2.disp_id WHERE T1.gender = 'F'
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'South Bohemia' AND T1.gender = 'F'
SELECT T1.account_id FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN loan AS T3 ON T3.account_id = T1.account_id WHERE T2.A2 = 'Tabor' AND T3.status = 'eligible' AND T1.district_id = 1
SELECT DISTINCT T1.account_type, T3.Average_income FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.Average_income BETWEEN 8000 AND 9000 AND T1.account_type = 'OWNER'
SELECT COUNT(T1.account_id) FROM order AS T1 INNER JOIN trans AS T2 ON T1.account_id = T2.account_id INNER JOIN account AS T3 ON T3 account_id = T1 account_id WHERE T2.bank = 'AB' AND T3.district_id = ( SELECT district_id FROM district WHERE A3 LIKE '%North Bohemia%' )
SELECT T1.A2 FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id INNER JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T3.type = 'VYDAJ'
SELECT AVG(T1.Card_id) FROM card AS T1 INNER JOIN district AS T2 ON T1.disp_id = T2.district_id INNER JOIN account AS T3 ON T2.district_id = T3.district_id WHERE T3.district_id > 4000 AND STRFTIME('%Y', T3.`date`) < 1997
SELECT COUNT(T1.Card_id) FROM card AS T1 INNER JOIN loan AS T2 ON T1.Card_id = T2.Card_id WHERE T1.type = 'Classic'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Hl.m. Praha' AND T1.gender = 'M'
SELECT CAST(SUM(CASE WHEN T1.type = 'Gold' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.card_id) FROM card AS T1 INNER JOIN cardissue AS T2 ON T1.card_id = T2.card_id WHERE T2.issued < 1998
SELECT T1.owner FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id INNER JOIN account AS T3 ON T2.account_id = T3.account_id INNER JOIN loan AS T4 ON T3.account_id = T4.account_id ORDER BY T4.amount DESC LIMIT 1
SELECT T1.A15 FROM district AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id = 532 AND STRFTIME('%Y', T1.A15) = '1995'
SELECT T2.district_id FROM order AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.order_id = 33333
SELECT T1.amount FROM trans AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.district_id WHERE T2.client_id = 3356 AND T1.type = 'VYBER'
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 'POPLATEK TYDNE' AND T2.amount < 200000
SELECT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 13539
SELECT T2.A3 FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 3541
SELECT T2.district_id FROM loan AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'A' GROUP BY T2.district_id ORDER BY COUNT(T1.status) DESC LIMIT 1
SELECT T1.client_id FROM client AS T1 INNER JOIN order AS T2 ON T1.client_id = T2.account_id WHERE T2.order_id = 32423
SELECT T1.type, T1.amount, T1.date FROM trans AS T1 INNER JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT COUNT(*) FROM account WHERE district_id = ( SELECT district_id FROM district WHERE A2 = 'Jesenik' )
SELECT T1.client_id FROM client AS T1 INNER JOIN card AS T2 ON T1.client_id = T2.disp_id WHERE STRFTIME('%Y', T2.date) >= '1997'
SELECT CAST(SUM(CASE WHEN T1.gender = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A11 > 10000
SELECT SUM(CASE WHEN T1.gender = 'M' THEN T3.amount ELSE 0 END) * 100.0 / SUM(CASE WHEN T1.gender = 'M' THEN T3.amount ELSE 0 END) AS rate FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T1.birth_date BETWEEN 1996 AND 1997
SELECT COUNT(*) FROM trans WHERE STRFTIME('%Y', `date`) < '1995' AND operation = 'VYBER KARTOU'
SELECT SUM(CASE WHEN T1.A3 = 1996 THEN 1 ELSE 0 END) - SUM(CASE WHEN T1.A3 = 1996 THEN 1 ELSE 0 END) AS DIFFERENCE FROM district AS T1 INNER JOIN card AS T2 ON T1.district_id = T2.district_id INNER JOIN disp AS T3 ON T2.disp_id = T3.disp_id WHERE T1.A16 = 1996
SELECT COUNT(DISTINCT T2.owner_id), COUNT(DISTINCT T2.disponent_id) FROM account AS T1 INNER JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.account_id BETWEEN 1 AND 10
SELECT T1.frequency, SUM(T3.amount) FROM account AS T1 INNER JOIN order AS T2 ON T1.account_id = T2.account_id INNER JOIN trans AS T3 ON T2.order_id = T3.order_id WHERE T2.account_id = 3 AND T3.amount = 3539 GROUP BY T1.frequency
SELECT STRFTIME('%Y', T1.birth_date) FROM client AS T1 INNER JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.account_id = 130
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN card AS T2 ON T1.district_id = T2.disp_id WHERE T1.frequency = 'POPLATEK PO OBRATU' AND T2.type = 'transaction'
SELECT T1.amount, T1.payments FROM loan AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.district_id WHERE T2.client_id = 992
SELECT SUM(T1.amount), T2.gender FROM trans AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.district_id WHERE T1.account_id = 851 AND T2.client_id = 4 GROUP BY T1.amount, T2.gender
SELECT T1.type FROM card AS T1 INNER JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 9
SELECT SUM(T1.amount) FROM trans AS T1 INNER JOIN client AS T2 ON T1.account_id = T2.district_id WHERE T2.client_id = 617 AND STRFTIME('%Y', T1.`date`) = '1998'
SELECT T1.client_id, T1.birth_date FROM client AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id IN (1983, 1984, 1985) AND T2.type = 'East Bohemia'
SELECT client_id FROM client WHERE gender = 'F' ORDER BY amount DESC LIMIT 3
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN order AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'M' AND STRFTIME('%Y', T1.birth_date) BETWEEN '1974' AND '1976' AND T2.amount > 4000
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Beroun' AND STRFTIME('%Y', T1.date) > '1996'
SELECT COUNT(T1.gender) FROM client AS T1 INNER JOIN card AS T2 ON T1.client_id = T2.disp_id WHERE T1.gender = 'F' AND T2.type = 'J'
SELECT 100.0 * SUM(CASE WHEN T1.gender = 'F' THEN 1 ELSE 0 END) / COUNT(T1.client_id) AS per FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Prague'
SELECT CAST(SUM(CASE WHEN T1.gender = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.client_id) FROM client AS T1 INNER JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'POPLATEK TYDNE'
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.frequency = 'POPLATEK TYDNE' AND T2.owner = 'true'
SELECT DISTINCT T1.account_id FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id < 1997 AND T2.status = 'approved' ORDER BY T2.amount LIMIT 1
SELECT T1.account_id FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' ORDER BY T2.A11 LIMIT 1
SELECT COUNT(T1.client_id) FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date LIKE '1920%' AND T2.A3 = 'East Bohemia'
SELECT COUNT(T1.account_id) FROM account AS T1 INNER JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration = 24 AND T1.frequency = 'POPLATEK TYDNE'
SELECT AVG(T1.amount) FROM loan AS T1 INNER JOIN card AS T2 ON T1.account_id = T2.disp_id WHERE T1.status = 'C' AND T2.issued = 'POPLATEK PO OBRATU'
SELECT T2.client_id, T2.district_id FROM client AS T1 INNER JOIN district AS T2 ON T1.district_id = T2.district_id INNER JOIN card AS T3 ON T2.district_id = T3.disp_id WHERE T1.gender = 'M' OR T1.gender = 'F'
SELECT T1.client_id, T1.age FROM client AS T1 INNER JOIN card AS T2 ON T1.client_id = T2.disp_id WHERE T2.type = 'gold' AND T2.disp_type = 'OWNER'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY COUNT(bond_type) DESC LIMIT 1
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '-' AND T2.element = 'cl'
SELECT AVG(T2.element) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-' AND T2.element = 'o'
SELECT CAST(SUM(CASE WHEN T2.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT COUNT(T2.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'na' AND T1.label = '-'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.bond_type = 'carinogen'
SELECT CAST(SUM(CASE WHEN T1.element = 'c' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = 'double-bond'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '#'
SELECT COUNT(atom_id) FROM atom WHERE element != 'br'
SELECT COUNT(molecule_id) FROM molecule WHERE label = 'carinogenic' AND molecule_id BETWEEN 'TR000' AND 'TR099'
SELECT T2.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'c'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_id = 'TR004_8_9'
SELECT DISTINCT T1.element FROM atom AS T1 INNER JOIN bonded AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double'
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'h' GROUP BY T2.label ORDER BY COUNT(T2.label) DESC LIMIT 1
SELECT DISTINCT T1.bond_type FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'cl'
SELECT DISTINCT T2.atom_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = '-'
SELECT T1.atom_id FROM connected AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-'
SELECT T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '-' GROUP BY T2.element ORDER BY COUNT(T2.element) ASC LIMIT 1
SELECT T1.bond_type FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = 'TR004_8' OR T2.atom_id = 'TR004_20'
SELECT DISTINCT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element != 'sn' AND T1.label IN ('+', '-')
SELECT COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '-' AND T1.element IN ('s', 'i')
SELECT T1.atom_id2 FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = '#'
SELECT T2.atom_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T3.atom_id = T2.atom_id WHERE T1.molecule_id = 'TR181'
SELECT CAST(SUM(IIF(T1.label = 'Carinogenic', 1, 0)) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'f'
SELECT CAST(SUM(CASE WHEN T2.label = '+carinogenic' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'TRiple'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR000' ORDER BY T1.label ASC LIMIT 3
SELECT T2.atom_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.molecule_id = 'TR001' AND T1.bond_id = 'TR001_2_6'
SELECT SUM(CASE WHEN label = '+' THEN 1 ELSE 0 END) - SUM(CASE WHEN label = '-' THEN 1 ELSE 0 END) FROM molecule
SELECT T1.atom_id FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_id = 'TR000_2_5'
SELECT DISTINCT bond_id FROM connected WHERE atom_id2 = 'TR000_2'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = ' = ' ORDER BY T1.label ASC LIMIT 5
SELECT CAST(SUM(CASE WHEN bond_type = 'double' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(bond_id) FROM bond WHERE molecule_id = 'TR008'
SELECT CAST(SUM(CASE WHEN label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(molecule_id) FROM molecule
SELECT CAST(SUM(CASE WHEN T1.element = 'h' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR206'
SELECT DISTINCT bond_type FROM bond WHERE molecule_id = 'TR000'
SELECT T1.element, T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR060'
SELECT T2.bond_type, T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR010' GROUP BY T2.bond_type ORDER BY COUNT(T2.bond_type) DESC LIMIT 1
SELECT T2.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label != '-' AND T1.bond_type = '-' ORDER BY T2.molecule_id LIMIT 3
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR006' ORDER BY T1.bond_id ASC LIMIT 2
SELECT COUNT(T1.bond_id) FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.molecule_id = 'TR009' AND T2.atom_id = 'TR009_12' OR T2.atom_id = 'TR009_12'
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T2.element = 'br'
SELECT T1.bond_type, T3.atom_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T3.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_6_9'
SELECT T1.label, T2.carinogenic FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_10'
SELECT COUNT(molecule_id) FROM bond WHERE bond_type = '#'
SELECT COUNT(bond_id) FROM connected WHERE atom_id LIKE 'TR%_19'
SELECT T1 element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR004'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '-'
SELECT T2.molecule_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' AND T1.atom_id BETWEEN '21' AND '25'
SELECT T2.bond_type FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element IN ('p', 'n')
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = ' = ' AND T1.label = 'Carcinogen' GROUP BY T1.label ORDER BY COUNT(T2.bond_type) DESC LIMIT 1
SELECT CAST(COUNT(T2.bond_id) AS REAL) / COUNT(DISTINCT T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'i'
SELECT T1.bond_type, T1.bond_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = 45
SELECT T1(element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id NOT IN ( SELECT * FROM connected )
SELECT T2.atom_id FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '#' AND T2.molecule_id = 'TR041'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR144_8_19'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'Carinogenic' AND T2.bond_type = ' =+' GROUP BY T1.label ORDER BY COUNT(T2.bond_type) DESC LIMIT 1
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carinogenic' GROUP BY T1.element ORDER BY COUNT(T1.molecule_id) ASC LIMIT 1
SELECT T1.atom_id FROM connected AS T1 INNER JOIN atom AS T2 ON T2.atom_id = T1.atom_id WHERE T2.element = 'pb'
SELECT T2.element FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '#'
SELECT CAST(COUNT(bond_id) AS REAL) * 100 / COUNT(DISTINCT atom_id) FROM connected GROUP BY bond_id ORDER BY COUNT(bond_id) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.label = 'Carinogenic' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.bond_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '-'
SELECT COUNT(T1.atom_id) FROM atom AS T1 WHERE T1.element IN ('c', 'h')
SELECT T2.atom_id2 FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 's'
SELECT DISTINCT T3.bond_type FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 'sn'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 WHERE T1.bond_type = '-'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '#' AND (T1.element = 'p' OR T1.element = 'br')
SELECT T2.bond_id FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+'
SELECT T2.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.bond_type = '-'
SELECT CAST(SUM(IIF(T1.element = 'cl', 1, 0)) AS REAL) * 100 / COUNT(T2atom_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '-'
SELECT label FROM molecule WHERE molecule_id IN ('TR000', 'TR001', 'TR002')
SELECT molecule_id FROM molecule WHERE label = '-'
SELECT COUNT(TR000) + COUNT(TR001) + COUNT(TR002) + COUNT(TR003) FROM molecule WHERE label = '+'
SELECT DISTINCT T1.bond_type FROM bond AS T1 WHERE T1.molecule_id BETWEEN 'TR000' AND 'TR050'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_id = 'TR001_10_11'
SELECT COUNT(T2.bond_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'i'
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'ca'
SELECT IIF(T2.cl, 'yes', 'no') AS YORN , IIF(T2.c, 'yes', 'no') AS YORN FROM connected AS T1 INNER JOIN atom AS T2 ON T2.atom_id = T1.atom_id WHERE T1.bond_id = 'TR001_1_8'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.bond_type = '#' AND T2.molecule_id = ( SELECT T1.molecule_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.bond_type = '#' ) LIMIT 2
SELECT CAST(SUM(CASE WHEN T1.element = 'cl' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+ carcinogenic'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR001'
SELECT molecule_id FROM bond WHERE bond_type = ' = '
SELECT T1.atom_id, T2.atom_id2 FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN bonded AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR000_1_2'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.bond_type = '-'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_10_11'
SELECT T1.bond_id, T2.label FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = '#'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'Carcinogen' AND T1.atom_id LIKE '4%'
SELECT CAST(SUM(CASE WHEN T1.element = 'h' THEN 1 ELSE 0 END) AS REAL) / COUNT(T1.molecule_id), T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR006'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'ca'
SELECT T1.bond_type FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.element = 'c'
SELECT T1.label FROM molecule AS T1 INNER JOIN bonded AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_10_11'
SELECT CAST(SUM(CASE WHEN bond_type = '#' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(bond_type) FROM bond
SELECT CAST(SUM(CASE WHEN T1.bond_type = ' = ' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.bond_type) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = 'TR047'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR001_1'
SELECT label FROM molecule WHERE molecule_id = 'TR151'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR151'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+'
SELECT T1.atom_id FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id BETWEEN 'TR010' AND 'TR050' AND T1.element = 'c'
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carinogenic'
SELECT T1.bond_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = ' =' AND T2.label = 'carinogenic'
SELECT COUNT(T1.atom_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carinogenic' AND T1.element = 'H'
SELECT T1.molecule_id FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id INNER JOIN atom AS T3 ON T3.atom_id = T2.atom_id WHERE T3.molecule_id = 'TR000_1_2' AND T3.atom_id = 'TR000_1'
SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'c' AND T1.label = '-'
SELECT CAST(SUM(CASE WHEN T2.label = 'Carinogenic' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H'
SELECT label FROM molecule WHERE molecule_id = 'TR124'
SELECT element FROM atom WHERE molecule_id = 'TR186'
SELECT DISTINCT bond_type FROM bond WHERE bond_id = 'TR007_4_19'
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_2_4'
SELECT SUM(CASE WHEN T1.label = '+' THEN 1 ELSE 0 END)as isCarinogenic , COUNT(T2.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR006' AND T2.bond_type = ' ='
SELECT T1.molecule_id, T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T2.element IN ('cl', 'c', 'h', 'o')
SELECT T1.molecule_id, T3atom_id FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN connected AS T3 ON T1.bond_id = T3.bond_id WHERE T1.bond_type = '-'
SELECT T1.label, T2.element FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN bond AS T3 ON T3.molecule_id = T1.molecule_id WHERE T3.bond_type = '#' GROUP BY T1.label
SELECT T1.element FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id INNER JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_id = 'TR000_2_3'
SELECT COUNT(T2.bond_id) FROM atom AS T1 INNER JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'cl'
SELECT T1.atom_id, COUNT(T2.bond_type) FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR346' GROUP BY T1.atom_id
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'Carinogenic' AND T1.bond_type = ' = '
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type != ' = ' AND T2.element = 's'
SELECT label FROM molecule WHERE molecule_id = 'TR001_2_4'
SELECT COUNT(*) FROM atom WHERE molecule_id = 'TR001'
SELECT COUNT(bond_id) FROM bond WHERE bond_type = '-'
SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '+' AND T2.element = 'cl'
SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '-' AND T2.element = 'c'
SELECT CAST(SUM(CASE WHEN T1.label = 'Charmogen' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Cl'
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_id = 'TR001_3_4' AND T2.atom_id = ( SELECT atom_id FROM atom WHERE element = 'cl' )
SELECT T1.bond_type FROM bond AS T1 INNER JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id1 = 'TR000_1' AND T2.atom_id2 = 'TR000_2'
SELECT T1.label FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR000_2' OR T2.atom_id = 'TR000_4'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 'TR000_1'
SELECT label FROM molecule WHERE molecule_id = 'TR000'
SELECT CAST(SUM(CASE WHEN T2.bond_type = '-' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.bond_id) FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id
SELECT COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '++' AND T2.element = 'n'
SELECT T1.label FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T3.molecule_id = T1.molecule_id WHERE T3.element = 's' AND T2.bond_type = ' ='
SELECT T1.molecule_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = '-' GROUP BY T1.molecule_id HAVING COUNT(T1.molecule_id) > 5
SELECT DISTINCT T1 element FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = ( SELECT T.molecule_id FROM molecule AS T WHERE T.label = 'TR024' ) AND T2.bond_type = 'double bond'
SELECT T2.label FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '+' GROUP BY T2.molecule_id ORDER BY COUNT(T1.molecule_id) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.label = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.molecule_id) FROM molecule AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id INNER JOIN atom AS T3 ON T3.molecule_id = T2.molecule_id WHERE T3.element = 'H' AND T2.bond_type = '#'
SELECT COUNT(molecule_id) FROM molecule WHERE label = '+'
SELECT COUNT(T molecule_id) FROM bond WHERE TR004 <= TR010 AND bond_type = '-'
SELECT COUNT(T1.carbon_id) FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR008' AND T1.element = 'c'
SELECT T1.element FROM atom AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-TR004_7' AND T1.element != 'cl' AND T1.element != 'c' AND T1.element != 'h' AND T1.element != 'o' AND T1.element != 's' AND T1.element != 'n' AND T1.element != 'p' AND T1.element != 'te'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = ' =' AND T2.element = 'o'
SELECT COUNT(T1.molecule_id) FROM bond AS T1 INNER JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = '-' AND T1.bond_type = '#'
SELECT T1 element, T2 bond_type FROM atom AS T1 INNER JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 'TR002'
SELECT T1.atom_id FROM connected AS T1 INNER JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.molecule_id = ( SELECT molecule_id FROM molecule WHERE label = 'TR012' ) AND T2.bond_type = ' = ' AND T1.atom_id2 IS NOT NULL
SELECT T2.atom_id FROM molecule AS T1 INNER JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carinogenic' AND T2.element = 'o'
SELECT cardKingdomFoilId, cardKingdomId FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT id FROM cards WHERE cardKingdomFoilId IS NULL AND cardKingdomId IS NOT NULL
SELECT cardName FROM cards ORDER BY faceConvertedManaCost DESC LIMIT 1
SELECT name FROM cards WHERE frameVersion = 2015 AND edhrecRank < 100
SELECT T1.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' AND T1.rarity = 'Mythic' AND T2.format = 'Gladiator'
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = 'Artifact' AND (T2.side IS NULL OR T2.side = 1) AND T1.format = 'vintage'
SELECT T1.id, T1.artist FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal' AND T2.format = 'commander' AND T1.power = '*'
SELECT T1.id, T2.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Stephen Daniele' AND T1.hasContentWarning = 1
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Sublime Epiphany' AND T2.number = '74s'
SELECT T1.id, T1.artist, T1.isPromo FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T1.id, T1.artist, T1.isPromo ORDER BY COUNT(T2.uuid) DESC LIMIT 1
SELECT T1.language FROM set_translations AS T1 INNER JOIN cards AS T2 ON T1.id = T2.uuid WHERE T2.name = 'annul' AND T2.number = 29
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.code WHERE T2.language = 'Japanese' AND T1.hasAlternativeDeckLimit
SELECT CAST(SUM(CASE WHEN T2.language = 'Chinese Simplified' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.id
SELECT T1.name, T1.totalSetSize FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Italian'
SELECT COUNT(type) FROM cards WHERE artist LIKE 'Aaron Boyd%'
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT COUNT(id) FROM cards WHERE power = '*'
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name LIKE 'Ancestor%s Chosen'
SELECT originaltype FROM cards WHERE name = 'Ancestor''s Chosen'
SELECT T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.name = 'Angel of Mercy'
SELECT COUNT(T1.id) FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = 'Restricted' AND T2.isTextless = 0
SELECT text FROM rulings WHERE uuid = ( SELECT uuid FROM cards WHERE name = 'Condemn' )
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.isStarter = 1 AND T2.status = 'Restricted'
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Cloudchaser Eagle'
SELECT type FROM cards WHERE name = 'Benalish Knight'
SELECT T1.format FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Benalish Knight'
SELECT T1.artist FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'Phyrexian'
SELECT CAST(SUM(CASE WHEN borderColor = 'borderless' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'German' AND T1.isReprint = 1
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.code WHERE T2.language = 'Russian' AND T1.borderColor = 'borderless'
SELECT CAST(SUM(CASE WHEN T2.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.isStorySpotlight = 1
SELECT COUNT(id) FROM cards WHERE toughness = 99
SELECT cardKingdomId FROM cards WHERE artist LIKE 'Aaron Boyd%'
SELECT COUNT(*) FROM cards WHERE availability = 'mtgo' AND borderColor = 'black'
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT DISTINCT cardKingdomId FROM cards WHERE keywords = 'flying'
SELECT COUNT(id) FROM cards WHERE originalType = 'Summon - Angel' AND subtypes != 'Angel'
SELECT cardKingdomFoilId, cardKingdomId FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT id FROM cards WHERE duelDeck = 'a'
SELECT edhrecRank FROM cards WHERE frameVersion = 2015
SELECT T1.artist FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.uuid WHERE T2.language = 'Chinese Simplified'
SELECT T1.id FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.ability = 'paper' AND T2.language = 'Japanese'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Banned' AND T1.borderColor = 'white'
SELECT T1.uuid, T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.format = 'legacy'
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Beacon of Immortality'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = 'future' AND T2.status = 'legal'
SELECT cardKingdomFoilId, cardKingdomId FROM cards WHERE setCode = 'OGW'
SELECT T1.id, T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.code WHERE T2.setCode = '10E' AND T1.convertedManaCost = 5 AND T2.translation = 'true'
SELECT T1.name, T2.date FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = 'Creature - Elf'
SELECT T1 colors, T2 format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.id BETWEEN 1 AND 20
SELECT T1.id FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = 'Artifact' AND T1.colors = 'B' AND T2.language IN ( SELECT T.language FROM set_translations AS T )
SELECT T1.name FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'uncommon' ORDER BY T2.date
SELECT COUNT(id) FROM cards WHERE artist LIKE 'John Avon' AND cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT COUNT(id) FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL AND borderColor = 'white'
SELECT COUNT(*) FROM cards WHERE artist LIKE 'UDON' AND hand = -1 AND availability = 'mtgo'
SELECT COUNT(*) FROM cards WHERE hasContentWarning = 1 AND frameVersion = '1993' AND availability = 'paper'
SELECT SUM(manaCost) FROM cards WHERE frameVersion = 2003 AND borderColor = 'black' AND availability = 'mtgo,paper' AND layout = 'Normal'
SELECT SUM(manaCost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT subtypes, supertypes FROM cards WHERE availability = 'arena'
SELECT DISTINCT T1.setCode FROM set_translations AS T1 INNER JOIN foreign_data AS T2 ON T1.id = T2.uuid WHERE T2.language = 'Spanish'
SELECT CAST(SUM(CASE WHEN isOnlineOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards WHERE frameEffects = 'legendary'
SELECT CAST(SUM(CASE WHEN isStorylight = 1 AND isTextless = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT CAST(SUM(CASE WHEN T2.language = 'Spanish' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid
SELECT T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.baseSetSize = 309
SELECT COUNT(T1.block) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Commander' AND T2.language = 'Portuguese (Brasil)'
SELECT T1.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.type = 'Creature' AND T2.status = 'legal'
SELECT DISTINCT type FROM cards WHERE subtypes IS NOT NULL AND supertypes IS NOT NULL
SELECT COUNT(*) FROM cards WHERE text LIKE '%triggered ability%' OR text LIKE '%power%' OR text LIKE '%unknown%'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = 'This is a triggered mana ability.' AND T1.side IS NULL AND T2.format = 'premodern'
SELECT T1.id FROM cards AS T1 INNER JOIN ( SELECT artist, cardKingdomId FROM cards WHERE artist = 'Erica Yang' AND availability = 'pauper' ) AS T2 ON T1.id = T2.id WHERE T1.availability = 'paper'
SELECT artist FROM cards WHERE text = 'Das perfekte Gegenmittel zu einer dichten Formation.'
SELECT T1.name FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = 'Creature' AND T2.layout = 'Normal' AND T2.borderColor = 'Black' AND T2.artist = 'Matthew D. Wilson' AND T1.language = 'French'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'Rare' AND T2.date = '2007-01-02'
SELECT T2.language FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Ravnica' AND T1.baseSetSize = 180
SELECT CAST(SUM(CASE WHEN T1.hasContentWarning = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'legal' AND T2.format = 'commander'
SELECT CAST(SUM(CASE WHEN T1.language = 'French' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.language) FROM set_translations AS T1 INNER JOIN cards AS T2 ON T1.id = T2.uuid WHERE T2.power IS NULL OR T2.power = '*'
SELECT CAST(SUM(CASE WHEN T1.language = 'Japanese' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.language) FROM set_translations AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.type = 'expansion'
SELECT DISTINCT availability FROM cards WHERE artist = 'Daren Bader'
SELECT COUNT(id) FROM cards WHERE edhrecRank > 12000 AND borderColor = 'borderless'
SELECT COUNT(id) FROM cards WHERE isOversized = 1 AND isReprint = 1 AND isPromo = 1
SELECT name FROM cards WHERE power = '*' OR power = '' ORDER BY promoTypes = 'arenaleague' LIMIT 3
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.multiverseId = 149934
SELECT cardKingdomFoilId, cardKingdomId FROM cards WHERE cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL ORDER BY cardKingdomFoilId
SELECT CAST(SUM(CASE WHEN isTextless = 1 AND layout = 'Normal' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM cards
SELECT cardNumber FROM cards WHERE subtypes = 'Angel' AND subtypes = 'Wizard' AND side = 'card' GROUP BY cardNumber HAVING COUNT(subtypes) = 1
SELECT name FROM sets WHERE mtgoCode IS NULL OR mtgoCode = '' ORDER BY name ASC LIMIT 3
SELECT T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.code INNER JOIN sets AS T3 ON T2.setCode = T3.code WHERE T3.mcmName = 'Archenemy' AND T2.setCode = 'ARC'
SELECT T1.name, T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 5
SELECT T1.language, T1.type FROM set_translations AS T1 INNER JOIN cards AS T2 ON T1.code = T2.uuid WHERE T2.number = 206
SELECT T1.name, T1.id FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.code WHERE T2.block = 'Shadowmoor' AND T1.language = 'Italian' ORDER BY T1.id LIMIT 2
SELECT T1.id FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.code INNER JOIN foreign_data AS T3 ON T3.uuid = T1.uuid WHERE T3.language = 'Japanese' AND T1.isFoilOnly = 1 AND T1.isForeignOnly = 1
SELECT T1.name FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Russian' ORDER BY T1.baseSetSize DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.isOnlineOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.isOnlineOnly) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'Chinese Simplified'
SELECT COUNT(T1.id) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Japanese' AND (T1.mtgoCode IS NULL OR T1.mtgoCode = '')
SELECT COUNT(id) FROM cards WHERE borderColor = 'black'
SELECT COUNT(id) FROM cards WHERE frameEffects = 'extendedart'
SELECT T1.id FROM cards AS T1 INNER JOIN cards AS T2 ON T1.id = T2.blackCardId WHERE T1.isFullArt = 1 AND T1.borderColor = 'black'
SELECT T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.uuid = 174
SELECT name FROM sets WHERE code = 'ALL'
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'A Pedra Fellwar'
SELECT T1.code FROM sets AS T1 INNER JOIN cards AS T2 ON T1.code = T2.id WHERE T1.releaseDate = '07/13/2007'
SELECT T1.baseSetSize, T1.code FROM sets AS T1 INNER JOIN block AS T2 ON T1.block = T2.block WHERE T2.name = 'Masques' OR T2.name = 'Mirage'
SELECT DISTINCT T1.code FROM sets AS T1 INNER JOIN ( SELECT * FROM codes WHERE type = 'expansion' ) AS T2 ON T1.code = T2.code
SELECT T2.name, T2.type FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'boros'
SELECT T1.language, T1.flavorText, T2.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.colorIndicator = 0
SELECT CAST(SUM(CASE WHEN T1.convertedManaCost = 10 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.convertedManaCost) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Abyssal Horror'
SELECT DISTINCT setCode FROM sets WHERE type = 'have expansion commander'
SELECT T1.name, T1.type FROM foreign_data AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'abzan'
SELECT DISTINCT T1.language, T2.type FROM set_translations AS T1 INNER JOIN cards AS T2 ON T1.code = T2.uuid WHERE T2.watermark = 'azorius'
SELECT COUNT(id) FROM cards WHERE artist LIKE 'Aaron Miller%' AND cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL
SELECT COUNT(id) FROM cards WHERE hand = '3' AND availability LIKE '%paper%'
SELECT name FROM cards WHERE isTextless = 0
SELECT CAST(SUM(T1.manaCost) AS REAL) / COUNT(T1.id) FROM cards AS T1 INNER JOIN ( SELECT * FROM cards WHERE name = 'Ancestor`s Chosen' ) AS T2 ON T1.id = T2.cardKingdomId
SELECT COUNT(id) FROM cards WHERE power = '*' OR power IS NULL AND colorIndicator = 1
SELECT name FROM cards WHERE isPromo = 1 AND side IS NOT NULL GROUP BY name
SELECT subtypes, supertypes FROM cards WHERE name = 'Molimo, Maro-Sorcerer'
SELECT purchaseUrls FROM cards WHERE promoTypes = 'bundle'
SELECT COUNT(DISTINCT artist) FROM cards WHERE borderColor = 'black' AND printings = '%arena,mtgo%'
SELECT cardKingdomId FROM cards WHERE name = 'Serra Angel' OR name = 'Shrine Keeper' ORDER BY convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE flavorName = 'Battra, Dark Destroyer'
SELECT name FROM cards WHERE frameVersion = '2003' ORDER BY convertedManaCost DESC LIMIT 3
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'Italian' AND T1.name LIKE 'Ancestor%s Chosen'
SELECT COUNT(T2.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.name = 'Angel of Mercy'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.id WHERE T2.translation = 'Hauptset Zehnte Edition'
SELECT CASE WHEN T1.language = 'Korean' THEN 'Yes' ELSE 'No' END AS result FROM set_translations AS T1 INNER JOIN cards AS T2 ON T1.id = T2.uuid WHERE T2.name LIKE 'Ancestor%s Chosen'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.code INNER JOIN cards AS T3 ON T3.id = T2.code WHERE T2.id = ( SELECT id FROM cards WHERE artist = 'Adam Rex' AND setCode = 'Hauptset Zehnte Edition' )
SELECT T1.baseSetSize FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2setCode WHERE T2.translation = 'Hauptset Zehnte Edition'
SELECT T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2setCode WHERE T1.name = 'Eighth Edition' AND T2.language = 'Chinese Simplified'
SELECT CASE WHEN name = 'Angel of Mercy' THEN 'Yes' ELSE 'No' END AS isOnlineOnly FROM cards WHERE mtgoCode IS NOT NULL AND vice versa
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN cards AS T2 ON T1.id = T2.setCode WHERE T2.name = 'Ancestor''s Chosen'
SELECT T1.type FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Hauptset Zehnte Edition'
SELECT COUNT(T1.id) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = 'Ice Age' AND T2.language = 'Italian' AND T2.translation IS NOT NULL
SELECT T1.isForeignOnly FROM sets AS T1 INNER JOIN cards AS T2 ON T1.id = T2.setCode WHERE T2.name = 'Adarkar Valkyrie'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.code INNER JOIN sets AS T3 ON T2.setCode = T3.code WHERE T3.baseSetSize < 100 AND T2.language = 'Italian'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap' AND T1.borderColor = 'black'
SELECT cardKingdomFoilId FROM cards WHERE name = 'Coldsnap' ORDER BY convertedManaCost DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 INNER JOIN ( SELECT artist, name FROM cards WHERE name IN ('Jeremy Jarvis', 'Aaron Miller', 'Chippy') AND setCode = 'Coldsnap' ) AS T2 ON T1.artist = T2.artist
SELECT name FROM cards WHERE number = 4 AND name = 'Coldsnap'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.uuid = T2.code WHERE T2.name = 'Coldsnap' AND T1.convertedManaCost > 5 AND (T1.power IS NULL OR T1.power = 0)
SELECT T1.flavorText FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name LIKE 'Ancestor%s Chosen' AND T2.language = 'Italian'
SELECT T2.language FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name LIKE 'Ancestor%s Chosen' AND T1.flavorText IS NOT NULL
SELECT DISTINCT CASE WHEN type = 'Ancestor''s Chosen' THEN 'German' END FROM cards WHERE name LIKE 'Ancestor%s Chosen'
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid INNER JOIN set_translations AS T3 ON T2.uuid = T3.uuid WHERE T2.name = 'Coldsnap' AND T3.language = 'Italian'
SELECT T1.id FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.id WHERE T2.language = 'Italian' AND T1.name = 'Coldsnap' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.date FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Reminisce'
SELECT CAST(SUM(CASE WHEN T1.convertedManaCost = 7 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Coldsnap'
SELECT CAST(SUM(CASE WHEN cardKingdomFoilId IS NOT NULL AND cardKingdomId IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM cards WHERE name = 'Coldsnap'
SELECT DISTINCT code FROM sets WHERE releaseDate = '2017-07-14'
SELECT keyruneCode FROM sets WHERE code = 'PKHC'
SELECT T1.mcmId FROM cards AS T1 INNER JOIN sets AS T2 ON T1.id = T2.code WHERE T2.code = 'SS2'
SELECT T1.mcmName FROM sets AS T1 INNER JOIN cards AS T2 ON T1.id = T2.mcmId WHERE T1.releaseDate = '2017-06-09'
SELECT T1.type FROM cards AS T1 INNER JOIN sets AS T2 ON T1.uuid = T2.code WHERE T2.name LIKE '%From the Vault: Lore%'
SELECT DISTINCT parentCode FROM sets WHERE name = 'Commander 2014 Oversized'
SELECT T1.text FROM cards AS T1 INNER JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Jim Pavelec' AND T1.hasContentWarning = 1
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN cards AS T2 ON T1.id = T2.setCode WHERE T2.name = 'Evacuation'
SELECT T1.baseSetSize FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.code WHERE T2.translation = 'Rinascita di Alara'
SELECT DISTINCT T1.type FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = 'Huitième édition'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T2.language = 'French' AND T1.name = 'Tendo Ice Bridge'
SELECT COUNT(T2.id) FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Tenth Edition' AND T2.language = 'other'
SELECT T1.name FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.name = 'Fellwar Stone' AND T2.language = 'Japanese'
SELECT T1.id FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Journey into Nyx Hero''s Path' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.releaseDate FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2setCode WHERE T2.language = 'Ola de frío'
SELECT DISTINCT T1.type FROM cards AS T1 INNER JOIN sets AS T2 ON T1.uuid = T2.code WHERE T1.name = 'Samite Pilgrim'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'World Championship Decks 2004' AND T1.convertedManaCost = 3
SELECT T2.translation FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = 'Mirrodin' AND T2.language = 'Chinese Simplified'
SELECT CAST(SUM(CASE WHEN T1.isNonFoilOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.code) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.code WHERE T2.language = 'Japanese'
SELECT CAST(SUM(CASE WHEN T1.isOnlineOnly = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.id = T2.code WHERE T2.language = 'Portuguese (Brazil)'
SELECT DISTINCT T1.printings FROM cards AS T1 INNER JOIN ( SELECT T1.id, T1.ability FROM cards AS T1 INNER JOIN isTextless AS T2 ON T1.id = T2.id WHERE T1.artist = 'Aleksi Briclot' ) AS T2 ON T1.id = T2.id WHERE T2.isTextless = 1
SELECT id FROM cards ORDER BY baseSetSize DESC LIMIT 1
SELECT artist FROM cards WHERE side IS NULL ORDER BY convertedManaCost DESC LIMIT 1
SELECT T2.frameEffects FROM cards AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId AND T1.cardKingdomId <> '' ORDER BY T2.frameEffects DESC LIMIT 1
SELECT COUNT(id) FROM cards WHERE hasFoil = 0 AND duelDeck = 'a' AND power IS NULL OR power = '*'
SELECT id FROM cards WHERE type = 'commander' AND isPromo = 1 AND isReprint = 1 ORDER BY totalSetSize DESC LIMIT 1
SELECT T1.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'duel' ORDER BY T1.manaCost DESC LIMIT 10
SELECT MIN(T1.originalReleaseDate), T2.status, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'mythic' AND T2.status = 'legal'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Volkan BaÇµa' AND T2.language = 'French'
SELECT COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Abundance' AND T1.type = 'Enchantment' AND T1.rarity = 'rare' AND T2.status = 'Legal'
SELECT T1 format, T2 names FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = 'Banned' GROUP BY T1.format, T2.name ORDER BY COUNT(T1.status) DESC LIMIT 1
SELECT T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.name = 'Battlebond'
SELECT T1.artist, T3.format FROM cards AS T1 INNER JOIN ( SELECT T1.id, COUNT(T1.id) FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid GROUP BY T1.id ORDER BY COUNT(T1.id) ASC LIMIT 1 ) AS T2 ON T1.id = T2.id INNER JOIN legalities AS T3 ON T1.uuid = T3.uuid
SELECT T1.status FROM legalities AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.hasContentWarning = 1 AND T2.artist = 'D. Alexander Gregory' AND T2.frameVersion = '1997' AND T1.format = 'Legacy'
SELECT T1.name, T3.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid INNER JOIN cards AS T3 ON T3.uuid = T2.uuid WHERE T1.edhrecRank = 1 AND T2.status = 'Banned'
SELECT AVG(T1.id), T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN cards AS T3 ON T2.id = T3.uuid WHERE T1.releaseDate BETWEEN '2012-01-01' AND '2015-12-31' UNION SELECT T2.language FROM cards AS T1 INNER JOIN set_translations AS T2 ON T1.uuid = T2.setCode INNER JOIN cards AS T3 ON T2.id = T3.uuid WHERE T1.releaseDate BETWEEN '2012-01-01' AND '2015-12-31' GROUP BY T2.language ORDER BY COUNT(T2.language) DESC LIMIT 1
SELECT artist FROM cards WHERE BorderColor = 'black' AND availability = 'arena'
SELECT uuid FROM legalities WHERE format = 'oldschool' AND status IN ('banned', 'restricted')
SELECT COUNT(id) FROM cards WHERE artist = 'Matthew D. Wilson' AND availability = 'paper'
SELECT T1.text FROM rulings AS T1 INNER JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Kev Walker' ORDER BY T1.date DESC
SELECT T1.name, T2.format FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid INNER JOIN sets AS T3 ON T1.setCode = T3.code WHERE T3.name = 'Hour of Devastation' AND T2.status = 'Legal'
SELECT T1.name FROM sets AS T1 INNER JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = 'Korean' AND T2.language NOT LIKE '%Japanese%'
SELECT T1.frameVersion, T1.id FROM cards AS T1 INNER JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Allen Williams' AND T2.status = 'Banned'
SELECT Name FROM users WHERE DisplayName IN ('Harlan', 'Jarrod Dixon') ORDER BY Reputation DESC LIMIT 1
SELECT DISTINCT DisplayName FROM users WHERE STRFTIME('%Y', CreationDate) = '2011'
SELECT COUNT(Id) FROM users WHERE LastAccessDate > '2014-09-01'
SELECT T1.UserID, T1.DisplayName FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserID ORDER BY T1.Views DESC LIMIT 1
SELECT COUNT(UserId) FROM users WHERE Upvotes > 100 AND Downvotes > 1
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserID WHERE T1.VIEWS > 10 AND STRFTIME('%Y', T1.CreationDate) > '2013'
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Disname = 'csgillespie'
SELECT T2.Title FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'csgillespie'
SELECT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Eliciting priors FROM experts'
SELECT T2.Title FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Disname = 'csgillespie' ORDER BY T2.ViewCount DESC LIMIT 1
SELECT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.FavoriteCount DESC LIMIT 1
SELECT SUM(T2.CommentCount) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T1.Disname = 'csgillespie'
SELECT MAX(T2.AnswerCount) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1 DisplayName = 'csgillespie'
SELECT T2.UserDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.Title = 'Examples for teaching: Correlation does not mean causation'
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Disname = 'csgillespie' AND T2.ParenId IS NULL
SELECT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.ClosedDate IS NOT NULL
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Age > 65 AND T2.Score >= 20
SELECT T2.Location FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Eliciting priors FROM experts'
SELECT T2.Body FROM tags AS T1 INNER JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.Tags = 'bayesian'
SELECT T1.Body FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId ORDER BY T2.Count DESC LIMIT 1
SELECT COUNT(T2.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1.DisplayName = 'csgillespie'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1.Disname = 'csgillespie'
SELECT COUNT(T1.Id) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserID = T2.Id WHERE T2.DisplayName = 'csgillespie' AND STRFTIME('%Y', T1.Date) = '2011'
SELECT T1.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID GROUP BY T2.UserID ORDER BY COUNT(T2.Id) DESC LIMIT 1
SELECT AVG(T2.Score) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T1.DisplayName = 'csgillespie'
SELECT CAST(SUM(T1.Id) AS REAL) / COUNT(DISTINCT T3.Name) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID INNER JOIN badges AS T3 ON T2.UserID = T3.UserID WHERE T1.Vies > 200
SELECT CAST(SUM(CASE WHEN T2.Age > 65 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Score > 5
SELECT COUNT(T2.VoteId) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.Id = 58 AND T2.CreationDate = '2010-07-19'
SELECT T1_creationdate FROM votes AS T1 INNER JOIN ( SELECT COUNT(Id) AS num FROM votes GROUP BY Id ) AS T2 ON T1.Id = T2.Id ORDER BY T2.num DESC LIMIT 1
SELECT COUNT(Id) FROM badges WHERE Name = 'Revival'
SELECT T1.Title FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId ORDER BY T2.Score DESC LIMIT 1
SELECT COUNT(T2.Comment) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ViewCount = 1910
SELECT T2.FavoriteCount FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 3025 AND T1.ConreationDate = '2014-04-23 20:29:39.0'
SELECT T1.Text FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ParentId = 107829 AND T1.CommentCount = 1
SELECT CASE WHEN T2.ClosedDate IS NULL THEN 'ClosedDate' ELSE 'FINISHED' END FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserID = 23853 AND T2.CreationDate = '2013-07-12 09:08:18.0'
SELECT T1.Repoints FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Id = 65041
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'Tiago Pasqualini'
SELECT T1 DisplayName FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserID WHERE T2.Id = 6347
SELECT COUNT(T2.VoteId) FROM votes AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title LIKE '%data visualization%'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1.DisplayName = 'DatEpicCoderGuyWhoPrograms'
SELECT CAST(SUM(CASE WHEN T1.OwnerUserId = 24 THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.OwnerUserId = 24 THEN 1 ELSE 0 END) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId
SELECT T2.ViewCount FROM comments AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.CommentId WHERE T1.PostId = ( SELECT Id FROM posts WHERE Title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer' )
SELECT Text FROM comments WHERE Score = 17
SELECT DisplayName FROM users WHERE WebsiteUrl = 'http://stackoverflow.com'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1 DisplayName = 'SilentGhost'
SELECT T2 DisplayName FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Text = 'thank you user93!'
SELECT T2.Text FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T1.Disname = 'A Lion'
SELECT T2.userDisplayName, T2.Reputation FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Understanding what Dassault iSight is doing?'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'How does gentle boosting differ FROM AdaBoost?'
SELECT T2 DisplayName FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = 'Necromancer' LIMIT 10
SELECT T2.LastEditorDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Open source tools for visualizing multi-dimensional data'
SELECT T2.Title FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.LastEditorUserId WHERE T1 DisplayName = 'Vebjorn Ljosa'
SELECT SUM(T2.Score) + T1.WebsiteUrl FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T1.LastEditor DisplayName = 'Yevgeny'
SELECT T2.Comment FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Why square the difference instead of taking the absolute value in standard deviation?'
SELECT SUM(T2.BountyAmount) FROM posts AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.Title LIKE '%data%'
SELECT T2.FirstName, T2.LastName FROM votes AS T1 INNER JOIN users AS T2 ON T1.UserID = T2.Id INNER JOIN posts AS T3 ON T1.PostId = T3.Id WHERE T3.Title LIKE '%variance%' AND T1.BountyAmount = 50
SELECT AVG(T2.ViewCount), T2.Title, T2.Comment FROM tags AS T1 INNER JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.tag = 'humor'
SELECT SUM(CASE WHEN UserId = 13 THEN 1 ELSE 0 END) FROM comments
SELECT Id FROM users ORDER BY Reputation DESC LIMIT 1
SELECT Id FROM users ORDER BY Views LIMIT 1
SELECT COUNT(DISTINCT T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Supporter' AND STRFTIME('%Y', T1.LastAccessDate) = '2011'
SELECT COUNT(Title) FROM tags WHERE Count(Title) > 5
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T2.Name IN ('Supportor', 'Teacher') AND T1.Location = 'New York City'
SELECT T2.UserID, T1.Reputation FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserID WHERE T2.PostId = 1
SELECT T1.Id FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T1.Vies >= 1000 GROUP BY T1.Id
SELECT T2.Name FROM comments AS T1 INNER JOIN badges AS T2 ON T1.UserId = T2.UserId GROUP BY T2.Name ORDER BY COUNT(T1.Id) DESC LIMIT 1
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1.Location = 'India' AND T2.Name = 'Teacher'
SELECT CAST(SUM(CASE WHEN T1.Year(Date) = 2010 THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T1.Year(Date) = 2011 THEN 1 ELSE 0 END) FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserID = T2.Id WHERE T1.Name = 'Student'
SELECT T1.PostHistoryTypeId, COUNT(DISTINCT T2.userid) FROM postHistory AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.PostId = 3720 GROUP BY T1.PostHistoryTypeID
SELECT T1.PostId, T2.Popularity FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.PostId = 61217
SELECT T2.Score, T2.LinkTypeID FROM postLinks AS T1 INNER JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.PostId = 395
SELECT DISTINCT T2.PostId, T1.Id FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T2.Score > 60
SELECT SUM(T1.FavoriteCount) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Id = 686 AND T1.CreationDate LIKE '2011%'
SELECT CAST(SUM(T1.Upvotes) AS REAL) / COUNT(T2.PostId), CAST(SUM(T2.Age) AS REAL) / COUNT(T2.UserID) FROM users AS T1 INNER JOIN ( SELECT T2.UserID, T2.Age FROM users AS T1 INNER JOIN users AS T2 ON T1.Id = T2.UserID GROUP BY T2.UserID, T2.Age HAVING COUNT(T2.UserID) > 10 ) AS T2 ON T1.Id = T2.UserID
SELECT COUNT( UserId) FROM badges WHERE Name = 'Announcer'
SELECT Name FROM badges WHERE Date = '2010-07-19 19:39:08.0'
SELECT COUNT(Id) FROM comments WHERE Score > 60
SELECT Text FROM comments WHERE CreationDate = '2010-07-19 19:16:14.0'
SELECT COUNT(Id) FROM posts WHERE Score = 10
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID ORDER BY T1.Reputation DESC LIMIT 1
SELECT T1.Reputation FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T2.Date = '2010-07-19 19:39:08.0'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1.DisplayName = 'Pierre'
SELECT T2.Date FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1.Location = 'Rochester, NY'
SELECT CAST(SUM(CASE WHEN T2.Name = 'Teacher' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID
SELECT CAST(SUM(CASE WHEN T1.age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T2.Name = 'Organizer'
SELECT T2.Score FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.CreationDate = '2010-07-19 19:19:56.0'
SELECT T1.Text FROM comments AS T1 INNER JOIN postHistory AS T2 ON T1.PostId = T2.Id WHERE T1.CreationDate = '2010-07-19 19:37:33.0'
SELECT T1.Age FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1.Location = 'Vienna, Austria'
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T2.Name = 'Starter' AND T1.Age >= 19 AND T1.Age <= 65
SELECT T1.VIEWS FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T2.Date = '2010-07-19 19:39:08.0'
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID ORDER BY T1.Reputation LIMIT 1
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1.DisplayName = 'Sharpie'
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T2.Name = 'Supporter' AND T1.age > 65
SELECT DisplayName FROM users WHERE Id = 30
SELECT COUNT(Location) FROM users WHERE Location = 'New York City'
SELECT COUNT(Id) FROM votes WHERE STRFTIME('%Y', CreationDate) = '2010'
SELECT COUNT(Id) FROM users WHERE Age >= 19 AND Age <= 65
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN STRFTIME('%Y', T2.CreationDate) = '2010' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN STRFTIME('%Y', T2.CreationDate) = '2011' THEN 1 ELSE 0 END) FROM tags AS T1 INNER JOIN votes AS T2 ON T2.Tags = T1.ExcerptPostId
SELECT T2.TagName FROM users AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Disname = 'John Salvatier'
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.UserID WHERE T1.Disname = 'Daniel Vassallo'
SELECT COUNT(T2.Vote_Id) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserID WHERE T1.Disname = 'Harlan'
SELECT T2.PostId FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Disname = 'slashnick' ORDER BY T2.AnswerCount DESC LIMIT 1
SELECT T2.PostId FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE (T1.Disname = 'Harvey Motulsky' OR T1.Disname = 'Noah Snyder') ORDER BY T2.ViewCount DESC LIMIT 1
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserID WHERE T1 DisplayName = 'Matt Parker' AND T2.PostId > 4
SELECT COUNT(T2.CommentCount) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T1.Disname = 'Neil McGuigan' AND T2.Score < 60
SELECT T2.Tags FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = 'Mark Meckes' AND T2.CommentCount = 0
SELECT T1.DisplayName FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T2.Name = 'Organizer'
SELECT CAST(SUM(CASE WHEN T2.Tags = 'r' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.PostId) FROM posts AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T1.communityOwnedDate = '2013-07-31'
SELECT SUM(CASE WHEN T2.OwnerDisplayName = 'Mornington' THEN T1.ViewCount ELSE 0 END) - SUM(CASE WHEN T2.OwnerDisplayName = 'Amos' THEN T1.ViewCount ELSE 0 END) AS diff FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id
SELECT COUNT(Commenter) FROM badges WHERE Name = 'Commentator' AND Date LIKE '2014%'
SELECT COUNT(PostId) FROM postHistory WHERE CreationDate LIKE '2010-07-21%'
SELECT DisplayName, Age FROM users WHERE Views = ( SELECT MAX(Views) FROM users )
SELECT LastEditDate, LastEditorUserId FROM posts WHERE Title = 'Detecting a given face in a database of facial images'
SELECT COUNT(Score) FROM comments WHERE UserID = 13 AND Score < 60
SELECT DISTINCT T1.Title, T2.UserID FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Score > 60
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = 'North Pole' AND STRFTIME('%Y', T2.Date) = '2011'
SELECT T2.Disname, T2.WatchURL FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.FavoriteCount > 150
SELECT COUNT(*) FROM ( SELECT T2.PostHistoryTypeId, T2.LastEditDate FROM posts AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'What is the best introductory Bayesian statistics textbook' GROUP BY T2.PostHistoryTypeID, T2.LastEditDate )
SELECT T1.LastAccessDate, T1.Location FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T2.Name = 'Outliers'
SELECT T2.Title FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.RelatedPostId = ( SELECT Id FROM postHistory WHERE Value > 0 AND timeeries = 'Mon' )
SELECT T2.PostId, T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.UserID = 1 AND STRFTIME('%Y', T1.CreationDate) = '2013' AND T1.UserID = 1
SELECT T2.OwnerDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.ViewCount DESC LIMIT 1
SELECT T2.Name, T2.Location FROM tags AS T1 INNER JOIN users AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.Tags = 'hypothesis-testing'
SELECT T2.RelatedPostId, T2.LinkTypeID FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'What are principal component scores?'
SELECT T1.Name FROM badges AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score = ( SELECT MAX(Score) FROM comments )
SELECT T1.UserID, T1.WebsiteUrl FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserID WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT Title FROM posts ORDER BY ViewCount DESC LIMIT 5
SELECT COUNT(T2.Tags) FROM postHistory AS T1 INNER JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T1.Count BETWEEN 5000 AND 7000
SELECT DISTINCT OwnerUserId FROM posts WHERE FavoriteCount = ( SELECT MAX(FavoriteCount) FROM posts )
SELECT MAX(Age) FROM users WHERE Reputation = ( SELECT MAX(Reputation) FROM users )
SELECT COUNT(T2.PostId) FROM votes AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE STRFTIME('%Y', T2.CreationDate) = '2011' AND T1.BountyAmount = 50
SELECT Id FROM users WHERE Age = ( SELECT MIN(Age) FROM users )
SELECT SUM(Score) FROM posts WHERE LasActivityDate LIKE '2010-07-19%'
SELECT CAST(SUM(CASE WHEN T1.AnswerCount <= 2 THEN 1 ELSE 0 END) AS REAL) / 12 FROM posts AS T1 INNER JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE STRFTIME('%Y', T2.CreationDate) = '2010'
SELECT T2.PostId FROM votes AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserID = 1465 ORDER BY T2.FavoriteCount DESC LIMIT 1
SELECT T2.Title FROM postLinks AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id ORDER BY T1.CreationDate LIMIT 1
SELECT T1.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID GROUP BY T2.UserID ORDER BY COUNT(T2.Name) DESC LIMIT 1
SELECT T2.CreationDate FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserID WHERE T1.Disname = 'chl' ORDER BY T2.CreationDate LIMIT 1
SELECT MIN(T2.CreaionDate) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Age = ( SELECT MIN(Age) FROM users )
SELECT T2.UserID FROM badges AS T1 INNER JOIN users AS T2 ON T1.UserID = T2.Id WHERE T1.Name = 'Autobiographer' ORDER BY T1.Date LIMIT 1
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Location = 'United Kingdom' AND T2.FavoriteCount >= 4
SELECT CAST(SUM(T2.PostId) AS REAL) / COUNT(T1.Id) FROM users AS T1 INNER JOIN votes AS T2 ON T1.Id = T2.UserID GROUP BY T1.Max(Age)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT COUNT(Id) FROM users WHERE Reputation > 2000 AND Views > 1000
SELECT DISTINCT T1.Name FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T1.age BETWEEN 19 AND 65
SELECT COUNT(T2.PostId) FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Disname = 'Jay Stevens' AND STRFTIME('%Y', T2.CreationDate) = '2010'
SELECT T2.PostId, T2.Title FROM users AS T1 INNER JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.Disname = 'Harvey Motulsky' ORDER BY T2.ViewCount DESC LIMIT 1
SELECT Id, Title FROM posts WHERE Score = ( SELECT MAX(Score) FROM posts )
SELECT AVG(T2.Score) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T1.Disname = 'Stephen Turner'
SELECT T2.UserID, T2 DisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.ViewCount > 20000 AND STRFTIME('%Y', T1.CreationDate) = '2011'
SELECT Id, OwnerDisplayName FROM posts WHERE strftime('%Y', CreationDate) = '2010' ORDER BY FavoriteCount DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.Reputation > 1000 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE STRFTIME('%Y', T1.CreationDate) = '2011'
SELECT CAST(SUM(CASE WHEN Age BETWEEN 13 AND 18 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(Id) FROM users
SELECT T1.ViewCount, T2.LastEditorDisplayName FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Text = 'Computer Game Datasets' ORDER BY T1.LastEditorDate DESC LIMIT 1
SELECT COUNT(Id) FROM posts WHERE ViewCount > ( SELECT AVG(ViewCount) FROM posts )
SELECT COUNT(T2.Comment) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Score = ( SELECT MAX(Score) FROM posts )
SELECT COUNT(PostId) FROM posts WHERE ViewCount > 35000 AND CommentCount = 0
SELECT T1.UserID, T1.Location FROM users AS T1 INNER JOIN postHistory AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.Id = 183 ORDER BY T2.LastEditDate DESC LIMIT 1
SELECT T2.Name FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Disname = 'Emmett' ORDER BY T2.Date DESC LIMIT 1
SELECT COUNT(CASE WHEN Upvotes > 5000 AND Age >= 19 AND Age <= 65 THEN 1 ELSE NULL END) FROM users
SELECT T2.Date - T1_creationdate AS takenDays FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserID WHERE T1.DisplyName = 'Zolomon'
SELECT COUNT(T2.PostId), T2.Comment FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId ORDER BY T2.CreationDate DESC LIMIT 1
SELECT T2.Text, T1.LastDisplayName FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID INNER JOIN posts AS T3 ON T2.PostId = T3.Id WHERE T3.Title = 'Analysing wind data with R' ORDER BY T2.CreationDate DESC LIMIT 10
SELECT COUNT(DISTINCT T1.Id) FROM users AS T1 INNER JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Citizen Patrol'
SELECT COUNT(T1.Id) FROM tags AS T1 INNER JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.Tags = 'careers'
SELECT T1.Reputation, T1.ViewCount FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T2.UserDisplayName = 'Jarrod Dixon'
SELECT COUNT(T2.Comment) + COUNT(T2.Answer) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Clustering 1D data'
SELECT T1.AccountId FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T1.LastName = 'IrishStat'
SELECT COUNT(PostId) FROM votes WHERE BountyAmount > 30
SELECT CAST(SUM(CASE WHEN T1.Score > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM posts AS T1 INNER JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Reputation = ( SELECT MAX(Reputation) FROM users )
SELECT COUNT(PostId) FROM comments WHERE Score < 20
SELECT COUNT(Id) FROM tags WHERE Id < 15 AND Count <= 20
SELECT ExcerptPostId, WikiPostId FROM tags WHERE TagName = 'sample'
SELECT T1.Reputation, T1.Upvotes FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T2.Text = 'fine, you win :)'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title LIKE '%linear regression%'
SELECT T2.Text FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.ViewCount BETWEEN 100 AND 150 ORDER BY T2.Score DESC LIMIT 1
SELECT T1CreationDate, T1.Age FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T2.Value LIKE '%http://%'
SELECT COUNT(DISTINCT T1.Id) FROM comments AS T1 INNER JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ViewCount < 5 AND T1.Score = 0
SELECT COUNT(T2.Score) FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.CommentCount = 1 AND T2.Score = 0
SELECT COUNT(T1.Id) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T2.Score = 0 AND T1.Age = 40
SELECT T2.PostId, T2.Comment FROM posts AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Group differences on a five point Likert item'
SELECT T1.Upvotes FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserID WHERE T2.Text = 'R is also lazy evaluated.'
SELECT T1.Text FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserID = T2.Id WHERE T2.DisplayName = 'Harvey Motulsky'
SELECT DISTINCT T2.UserDisplayName FROM comments AS T1 INNER JOIN users AS T2 ON T1.UserID = T2.Id WHERE T1.Score BETWEEN 1 AND 5 AND T2.Downvotes = 0
SELECT CAST(SUM(CASE WHEN T1.Upvotes = 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.Id) FROM users AS T1 INNER JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Score BETWEEN 5 AND 10
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T1.hero_id = ( SELECT hero_id FROM superhero WHERE superhero_name = '3-D Man' )
SELECT COUNT(T2.hero_id) FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T1.power_name = 'Super Strength'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T3.power_name = 'Super Strength' AND T1.height_cm > 200
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id GROUP BY T1.full_name HAVING COUNT(T1.full_name) > 15
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Blue' AND T1.eye_colour_id = 1
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.hero_id = ( SELECT hero_id FROM superhero WHERE superhero_name = 'Apocalypse' )
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id INNER JOIN colour AS T4 ON T4.id = T1.eye_colour_id WHERE T3.power_name = 'Agility' AND T4.colour = 'Blue' AND T1.eye_colour_id = 1
SELECT T1.hero_id FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id INNER JOIN colour AS T4 ON T1.eye_colour_id = T4.id WHERE T3.power_name = 'Agility' AND T4.colour = 'Blue' AND T4.hair_colour = 'Blond'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T2.hero_name FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'Marvel Comics' ORDER BY T2.height_cm DESC
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.hero_name = 'Sauron'
SELECT T3.eye_colour_id FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN colour AS T3 ON T3.id = T2.eye_colour_id WHERE T1.publisher_name = 'Marvel Comics' GROUP BY T3.id ORDER BY COUNT(T3.id) DESC LIMIT 1
SELECT AVG(T1.height_cm) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T1.hero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id INNER JOIN publisher AS T4 ON T1.publisher_id = T4.id WHERE T4.publisher_name = 'Marvel Comics' AND T3.power_name = 'Super Strength'
SELECT COUNT(T2.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'DC Comics'
SELECT T3.publisher_name FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id INNER JOIN publisher AS T3 ON T3.id = T2.publisher_id WHERE T1.attribute_name = 'Speed' ORDER BY T2.attribute_value LIMIT 1
SELECT COUNT(T3.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN colour AS T3 ON T3.id = T2.eye_colour_id WHERE T1.publisher_name = 'Marvel Comics' AND T3.colour = 'Gold' AND T2.eye_colour_id = 1
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.hero_name = 'Blue Beetle II'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = 'Blond' AND T1.hair_colour_id = 1
SELECT T1.hero_id FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T3.id = T2.attribute_id WHERE T3.attribute_name = 'Intelligence' ORDER BY T2.attribute_value LIMIT 1
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.hero_name = 'Copycat'
SELECT T2.hero_name FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T1.attribute_name = 'Durability' AND T2.attribute_value < 50
SELECT T1.hero_super_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T3.power_name = 'Death Touch'
SELECT COUNT(T2.hero_id) FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id INNER JOIN superhero AS T3 ON T3.id = T2.hero_id INNER JOIN gender AS T4 ON T4.id = T3.gender_id WHERE T4.gender = 'Female' AND T1.attribute_name = 'Strength' AND T2.attribute_value = 100
SELECT T1.hero_id FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id GROUP BY T1.hero_id ORDER BY COUNT(T1.hero_id) DESC LIMIT 1
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Vampire'
SELECT CAST(SUM(CASE WHEN T1.alignment = 'Bad' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id), CAST(SUM(CASE WHEN T1.alignment = 'Bad' THEN 1 ELSE 0 END) AS REAL) / 100 FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT ( SELECT COUNT(T2.publisher_name) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' ), ( SELECT COUNT(T2.publisher_name) FROM superhero AS T3 INNER JOIN publisher AS T4 ON T3.publisher_id = T4.id WHERE T4.publisher_name = 'DC Comics' ) AS DIFFERENCE FROM these
SELECT id FROM publisher WHERE publisher_name = 'Star Trek'
SELECT AVG(attribute_value) FROM hero_attribute
SELECT COUNT(id) FROM superhero WHERE full_name = ''
SELECT T2.col FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.id = 75
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T1.hero_name = 'Deathlok'
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 'Female'
SELECT T4.power_name FROM ( SELECT T3.hero_id, T4.power_name FROM superhero AS T3 INNER JOIN gender AS T4 ON T3.gender_id = T4.id WHERE T4.gender = 'Male' GROUP BY T3.hero_id, T4.power_name LIMIT 5 ) t
SELECT T1.hero_super_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien'
SELECT T1.hero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.height_cm BETWEEN 170 AND 190 AND T2.colour = 'No Colour'
SELECT T1.power_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T2.hero_id = 56
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Demi-God' LIMIT 5
SELECT COUNT(Bad) FROM superhero WHERE alignment_id = 'Bad'
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 169
SELECT T3.colour FROM race AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.race_id INNER JOIN colour AS T3 ON T3.id = T2.hair_colour_id WHERE T1.race = 'human' AND T2.height_cm = 185
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id ORDER BY T1.weight_kg DESC LIMIT 1
SELECT CAST(COUNT(CASE WHEN T1.publisher_name = 'Marvel Comics' THEN T2.id ELSE NULL END) AS REAL) * 100 / COUNT(T2.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.height_cm BETWEEN 150 AND 180
SELECT T1.hero_id FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender = 'Male' AND T1.weight_kg > ( SELECT AVG(weight_kg) * 0.79 FROM superhero )
SELECT T1.power_name FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id GROUP BY T1.power_name ORDER BY COUNT(T1.id) DESC LIMIT 1
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.hero_id = 1 AND T1.hero_name = 'Abomination'
SELECT T2.power_name FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 1
SELECT COUNT(T1.hero_id) FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'stealth'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T3.id = T2.attribute_id WHERE T3.attribute_name = 'strength' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT CAST(COUNT(T1.id) AS REAL) / COUNT(DISTINCT T2.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T2.colour = 'ID1'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Dark Horse Comics'
SELECT T1.hero_id FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN hero_attribute AS T3 ON T3.hero_id = T1.id INNER JOIN attribute AS T4 ON T4.id = T3.attribute_id WHERE T2.publisher_name = 'Dark Horse Comics' AND T4.attribute_name = 'durability' ORDER BY T3.attribute_value DESC LIMIT 1
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.full_name = 'Abraham Sapien'
SELECT T1.hero_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Flight'
SELECT T1.eye_colour_id, T1.haircolour_id, T1.skincolour_id FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id INNER JOIN gender AS T3 ON T3.id = T1.gender_id WHERE T2.publisher_name = 'Dark Horse Comics' AND T3.gender = 'Female'
SELECT T1.hero_id, T1.publisher_name FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.hair_colour_id = T2.eye_colour_id AND T2.skin_colour_id = T2.colour_id
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.hero_super_name = 'A-Bomb'
SELECT CAST(SUM(CASE WHEN T2.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.gender) FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T1.colour = 'Blue'
SELECT T2.hero_name, T1.race FROM race AS T1 INNER JOIN superhero AS T2 ON T2.race_id = T1.id WHERE T2.full_name = 'Charles Chandler'
SELECT T2.gender FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.hero_super_name = 'AGENT 13'
SELECT T1.hero_id FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Adaptation'
SELECT COUNT(T2.id) FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.hero_name = 'Amazo'
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T1.full_name = 'Hunter Zolomon'
SELECT T1.height_cm FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Amber'
SELECT T1.hero_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Black' AND T1.hair_colour_id = T2.id
SELECT T2.eye_colour_id FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T1.colour = 'Gold' AND T2.skin_colour_id = T2.eye_colour_id
SELECT T1.full_name FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Vampire'
SELECT T1.hero_super_name FROM superhero AS T1 INNER JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = 'Neutral'
SELECT COUNT(T1.hero_id) FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = 'Strength' AND T1.attribute_value = ( SELECT MAX(attribute_value) FROM hero_attribute WHERE attribute_id IN ( SELECT id FROM attribute WHERE attribute_name = 'Strength' ) )
SELECT T2.race, T2.alignment FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.hero_name = 'Cameron Hicks'
SELECT CAST(SUM(CASE WHEN T3.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T3.gender) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN gender AS T3 ON T3.id = T2.gender_id WHERE T1.publisher_name = 'Marvel Comics'
SELECT AVG(T1.weight_kg) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'Alien'
SELECT ( SELECT weight_kg FROM superhero WHERE full_name = 'Emil Blonsky' ) - ( SELECT weight_kg FROM superhero WHERE full_name = 'Charles Chandler' ) AS difference
SELECT AVG(height_cm) FROM superhero
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T1.hero_id = 1 AND T1.hero_name = 'Abomination'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id INNER JOIN gender AS T3 ON T1.gender_id = T3.id WHERE T2.id = 21 AND T3.gender = 'Male'
SELECT T1.hero_id FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = 'Speed' ORDER BY T1.attribute_value DESC LIMIT 1
SELECT COUNT(id) FROM superhero WHERE alignment_id = 3
SELECT T2.attribute_name, T1.attribute_value FROM hero_attribute AS T1 INNER JOIN attribute AS T2 ON T1.attribute_id = T2.id INNER JOIN superhero AS T3 ON T3.id = T1.hero_id WHERE T3.hero_name = '3-D Man'
SELECT T1.hero_id FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Brown' AND T2.id = 19
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.hero_super_name IN ('Hawkman', 'Karate Kid', 'Speedy')
SELECT COUNT(id) FROM superhero WHERE publisher_id = 1
SELECT CAST(SUM(CASE WHEN T2.colour = 'Blue' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.eye_colour_id = 7
SELECT CAST(SUM(CASE WHEN T2.gender = 'Male' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T2.gender = 'Female' THEN 1 ELSE 0 END) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT T2.id FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T1.power_name = 'cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = 0 OR weight_kg IS NULL
SELECT T1.colour FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.full_name = 'KAREN BEECHER-DUNCUK'
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T1.full_name = 'Helen Parr'
SELECT T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 108 AND T1.height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T2.race FROM hero_attribute AS T1 INNER JOIN race AS T2 ON T2.id = T1.race_id ORDER BY T1.attribute_value DESC LIMIT 1
SELECT T1.alignment, T4.power_name FROM alignment AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.alignment_id INNER JOIN hero_power AS T3 ON T2.id = T3.hero_id INNER JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T2.hero_name = 'Atom IV'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Blue' AND T1.gender_id = 1 LIMIT 5
SELECT AVG(T2.attribute_value) FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.alignment_id = 3
SELECT T3.colour FROM hero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN colour AS T3 ON T3.id = T1.skin_colour_id WHERE T2.attribute_value = 100
SELECT COUNT(T2.id) FROM gender AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.gender_id INNER JOIN alignment AS T3 ON T2.alignment_id = T3.id WHERE T3.id = 1 AND T1.id = 2
SELECT T1.hero_super_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT T3.race FROM gender AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.gender_id INNER JOIN race AS T3 ON T3.id = T2.race_id INNER JOIN colour AS T4 ON T4.id = T2.hair_colour_id WHERE T1.gender = 'Male' AND T4.colour = 'Blue'
SELECT CAST(SUM(CASE WHEN T2.gender = 2 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.gender) FROM superhero AS T1 INNER JOIN gender AS T2 ON T1.gender_id = T2.id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T3.id = 2
SELECT SUM(CASE WHEN T1.colour = 7 THEN 1 ELSE 0 END) - SUM(CASE WHEN T1.colour = 1 THEN 1 ELSE 0 END) FROM colour AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.weight_kg = 0 OR T2.weight_kg IS NULL
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T3.id = T2.attribute_id WHERE T3.attribute_name = 'Strength' AND T1.hero_name = 'Hulk'
SELECT T3.power_name FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T1.hero_id = 1 AND T1.hero_name = 'Ajax'
SELECT COUNT(T1.id) FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.skin_colour_id = T2.id INNER JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T3.alignment = 'Bad' AND T2.colour = 'Green'
SELECT COUNT(T3.id) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN gender AS T3 ON T3.id = T2.gender_id WHERE T1.publisher_name = 'Marvel Comics' AND T3.gender = 'Female'
SELECT T1.hero_id FROM hero_power AS T1 INNER JOIN superpower AS T2 ON T1.power_id = T2.id INNER JOIN superhero AS T3 ON T3.id = T1.hero_id WHERE T2.power_name = 'Wind Control' ORDER BY T3.hero_id
SELECT T3.gender FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id INNER JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = 'Phoenix Force'
SELECT T2.hero_name FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'DC Comics' ORDER BY T2.weight_kg DESC LIMIT 1
SELECT AVG(T2.height_cm) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN race AS T3 ON T3.id = T2.race_id WHERE T1.publisher_name = 'Dark Horse Comics' AND T3.race != 'Human'
SELECT COUNT(T2.hero_id) FROM attribute AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T1.attribute_name = 'Speed' AND T2.attribute_value = 100
SELECT SUM(CASE WHEN T2.publisher_name = 'DC Comics' THEN 1 ELSE 0 END) - SUM(CASE WHEN T2.publisher_name = 'Marvel Comics' THEN 1 ELSE 0 END) FROM superhero AS T1 INNER JOIN publisher AS T2 ON T1.publisher_id = T2.id
SELECT T3.attribute_name FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id INNER JOIN attribute AS T3 ON T3.id = T2.attribute_id WHERE T1.hero_name = 'Black Panther' ORDER BY T2.attribute_value LIMIT 1
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.hero_id = 1 AND T1.hero_name = 'Abomination'
SELECT T1.hero_name FROM superhero AS T1 INNER JOIN superpower AS T2 ON T1.id = T2.id ORDER BY T1.height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT CAST(SUM(CASE WHEN T3.gender = 'Female' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T3.gender) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN gender AS T3 ON T3.id = T2.gender_id WHERE T1.publisher_name = 'George Lucas'
SELECT CAST(COUNT(CASE WHEN T3.alignment = 'Good' THEN 1 ELSE NULL END) AS REAL) * 100 / COUNT(T3.alignment) FROM publisher AS T1 INNER JOIN superhero AS T2 ON T1.id = T2.publisher_id INNER JOIN alignment AS T3 ON T3.id = T2.alignment_id WHERE T1.publisher_name = 'Marvel Comics'
SELECT COUNT(id) FROM superhero WHERE full_name LIKE 'John%'
SELECT hero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT T1.full_name FROM superhero AS T1 INNER JOIN colour AS T2 ON T2.id = T1.eye_colour_id WHERE T1.weight_kg < 100 AND T1.eye_colour_id = 1
SELECT T2.attribute_value FROM superhero AS T1 INNER JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.hero_name = 'Aquababy'
SELECT T1.weight_kg, T2.race FROM superhero AS T1 INNER JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.id = 40
SELECT AVG(height_cm) FROM superhero
SELECT T2.hero_id FROM superpower AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T1.power_name = 'Intelligence'
SELECT T2.colour FROM superhero AS T1 INNER JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.hero_super_name = 'Blackwulf'
SELECT T3.power_name FROM ( SELECT T1.height_cm, T3.height_cm FROM superhero AS T1 INNER JOIN hero_power AS T2 ON T1.id = T2.hero_id INNER JOIN superpower AS T3 ON T3.id = T2.power_id WHERE T1.height_cm > ( SELECT AVG(height_cm) FROM superhero ) * 0.8 GROUP BY T1.height_cm ) T4
SELECT T2.driverRef FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 20 GROUP BY T2.driverRef ORDER BY T1.q1 DESC LIMIT 5
SELECT T1.surname FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 19 AND T2.lap = ( SELECT MIN(lap) FROM lapTimes WHERE raceId = 19 )
SELECT T2.year FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.location = 'Shanghai'
SELECT T2.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Circuit de Barcelona-Catalunya'
SELECT T2.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.country = 'Germany'
SELECT T2.position FROM circuits AS T1 INNER JOIN constructorStandings AS T2 ON T1.circuitId = T2.circuitId INNER JOIN constructors AS T3 ON T2.constructorId = T3.constructorId WHERE T3.name = 'Renault'
SELECT COUNT(T1.raceId) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2010 AND T2.location != 'Asia' AND T2.location != 'Europe'
SELECT T2.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.country = 'Spain'
SELECT T2.lat, T2.lng FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Australian Grand Prix'
SELECT T2.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Sepang International Circuit'
SELECT T2.time FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Sepang International Circuit'
SELECT T2.lat, T2.longitude FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Abu Dhabi Grand Prix'
SELECT T1.country FROM circuits AS T1 INNER JOIN constructor AS T2 ON T1.circuitId = T2.country INNER JOIN constructorStandings AS T3 ON T2.constructorId = T3.constructorId WHERE T3.raceId = 24 AND T3.points = 1
SELECT T1.resultId FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = 'Bruno' AND T2.surname = 'Senna' AND T1.raceId = 354
SELECT T2.nationality FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 355 AND T1.time = '0:01:40'
SELECT T2.number FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = '903' AND T1.time = '0:01:54' AND T1.q3 = 'M:SS%'
SELECT COUNT(*) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Bahrain Grand Prix' AND T1.year = 2007 AND T2.time IS NOT NULL
SELECT T1.year FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceId = 901
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.date = '2015-11-29'
SELECT T1.dob FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 592 AND T2.time IS NOT NULL ORDER BY T1.dob LIMIT 1
SELECT T1.fname, T1.sname FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 161 AND T2.time LIKE 'M:SS%'
SELECT T2.country FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 933 ORDER BY T1.fastestLapSpeed DESC LIMIT 1
SELECT T2.lat, T2.lng FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Malaysian Grand Prix'
SELECT T2.url FROM constructorResults AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T1.raceId = 9 ORDER BY T1.points DESC LIMIT 1
SELECT T1.resultId FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.number = 'Lucas di Grassi' AND T1.raceId = 345
SELECT T2.country FROM drivers AS T1 INNER JOIN circuits AS T2 ON T1.driverRef = T2.circuitRef INNER JOIN races AS T3 ON T2.circuitId = T3.circuitId WHERE T3.raceId = 347 AND T3.time = '0:01:15' AND T1.number = '1'
SELECT T2.code FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 45 AND T1.q3 = '0:01:33'
SELECT T2.time FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.number = '743' AND T1.driverRef = ( SELECT driverId FROM drivers WHERE forename = 'Bruce' AND surname = 'McHendring' )
SELECT T2.firstname, T2.lastname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.year = 2006 AND T1.position = 2 AND T1.result = 'Finals' AND T1.raceId = 23
SELECT T1.url FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceId = 901
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.year = '2015' AND T1.date = '2011/11/29'
SELECT T2.driverId FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.raceId = 872 ORDER BY T3.dob DESC LIMIT 1
SELECT T1.fname, T1.sname FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 348 ORDER BY T2.time LIMIT 1
SELECT T2.nationality FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.fastestLapSpeed = ( SELECT MAX(fastestLapSpeed) FROM results )
SELECT CAST((SUM(CASE WHEN T2.raceId = 853 THEN T2.fastestLapSpeed ELSE 0 END) - SUM(CASE WHEN T2.raceId = 854 THEN T2.fastestLapSpeed ELSE 0 END)) AS REAL) * 100 / SUM(CASE WHEN T2.raceId = 853 THEN T2.fastestLapSpeed ELSE 0 END) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.fname = 'Paul' AND T1.surname = 'di Resta'
SELECT CAST(SUM(CASE WHEN T1.time != '' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.time) FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.date = '1983-07-16'
SELECT T2.year FROM constructors AS T1 INNER JOIN races AS T2 ON T1.constructorId = T2.raceId WHERE T1.country = 'Singapore' ORDER BY T2.year LIMIT 1
SELECT COUNT(raceId), name FROM races WHERE year = 2005 ORDER BY name DESC
SELECT name FROM races WHERE date = ( SELECT MIN(date) FROM races )
SELECT name, date FROM races WHERE year = 1999 ORDER BY round DESC LIMIT 1
SELECT year FROM races GROUP BY year ORDER BY COUNT(year) DESC LIMIT 1
SELECT name FROM races WHERE year = 2017 AND NOT in ( SELECT year FROM races WHERE raceId = '2000' )
SELECT T2.country, T2.name, T2.location FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = ( SELECT MIN(year) FROM races )
SELECT T1.year FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year AND T1.url = T2.url INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T2.name = 'British Grand Prix' AND T3.forename = 'Brands Hatch' ORDER BY T1.year DESC LIMIT 1
SELECT COUNT(T3.year) FROM ( SELECT T3.year FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId INNER JOIN seasons AS T3 ON T2.year = T3.year WHERE T2.name = 'United Kindom' AND T1.name = 'Silverstone Circuit' GROUP BY T3.year ) T4
SELECT T3.positionText FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN positions AS T3 ON T2.position = T3.positionText WHERE T1.driverId = ( SELECT driverId FROM orders WHERE year = 2010 AND companyName = 'Singapore Grand Prix' )
SELECT T1.firstName, T1.lastName FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId ORDER BY T2.points DESC LIMIT 1
SELECT T3.driverId, T2.points FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.year = 2017 AND T3.name = 'Chinese Grand Prix' ORDER BY T2.points DESC LIMIT 3
SELECT T1.driverId, T1.fname, T1.surname, T3.name FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId ORDER BY T1.lap LIMIT 1
SELECT AVG(T3.milliseconds) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceid = T2.raceid INNER JOIN lapTimes AS T3 ON T2.driverId = T3.driverId INNER JOIN drivers AS T4 ON T3.driverId = T4.driverId WHERE T1.name = 'Malaysian Grand Prix' AND T4.driverRef = ( SELECT driverId FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' )
SELECT CAST(SUM(CASE WHEN T2.position > 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(*) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.surname = 'Hamilton' AND T2.year >= 2010
SELECT T1.driverId, T1.country, T2.points FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId GROUP BY T1.driverId, T1.country, T2.points ORDER BY COUNT(T2.wins) DESC LIMIT 1
SELECT STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.dob), T1.fname, T1.lname FROM drivers AS T1 INNER JOIN constructors AS T2 ON T1.driverRef = T2.driverId WHERE T1.nationality = 'Japanese' ORDER BY STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.dob) DESC LIMIT 1
SELECT T2.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE STRFTIME('%Y', T1.year) BETWEEN '1990' AND '2000' AND T1.name LIKE 'f1' GROUP BY T2.name
SELECT DISTINCT T1.name, T1.location, T2.name FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.year = 2006 AND T1.country = 'USA'
SELECT T2.name, T1.name, T1.location FROM circuits AS T1 INNER JOIN races AS T2 ON T2.circuitId = T1.circuitId WHERE SUBSTR(T2.date, 1, 7) = '2005-09'
SELECT T2.raceId FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId WHERE T1.fname = 'Alex' AND T1.surname = 'Yoong' AND T2.position < 20
SELECT MAX(T2.points) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN circuits AS T3 ON T2.circuitId = T3.circuitId WHERE T1.fname = 'Michael' AND T1.sname = 'Schumacher' AND T3.name = 'Sepang International Circuit'
SELECT T3.name, T3.year FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T2.fname = 'Michael' AND T2.suffix = 'Schumacher' ORDER BY T1.milliseconds ASC LIMIT 1
SELECT CAST(SUM(T2.points) AS REAL) / COUNT(T2.points) FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId WHERE T1.fname = 'Eddie' AND T1.sname = 'Irvine' AND T2.year = 2000
SELECT MIN(T3.year), T2.points FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T1.fname = 'Lewis' AND T1.surname = 'Hamilton'
SELECT DISTINCT T1.name, T2.country FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2017 ORDER BY T1.date
SELECT T2.name, T2.year, T2.location FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T1.laps = ( SELECT MAX(laps) FROM results )
SELECT CAST(SUM(CASE WHEN T2.country = 'Germany' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.raceId) FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'European Grand Prix'
SELECT lat, lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT name FROM circuits WHERE name IN ('Silverstone Circuit', 'Hockenheimring', 'Hungaroring') ORDER BY lat DESC LIMIT 1
SELECT name FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT COUNT(*) FROM drivers WHERE code IS NULL
SELECT T2.country FROM drivers AS T1 INNER JOIN circuits AS T2 ON T1.driverRef = T2.circuitId ORDER BY T1.dob LIMIT 1
SELECT surname FROM drivers WHERE nationality = 'italian'
SELECT T1.url FROM drivers AS T1 INNER JOIN constructors AS T2 ON T1.driverRef = T2.driverRef WHERE T1 forename = 'Anthony' AND T1.surname = 'Davidson'
SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton'
SELECT T2.name FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.year = 2009 AND T1.name = '2009 Spanish Grand Prix'
SELECT DISTINCT T1.year FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Silverstone Circuit' AND T1.name = 'F1'
SELECT T2.url FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T1.name = 'Formula_1' AND T2.name = 'Silverstone Circuit'
SELECT T2.time FROM circuits AS T1 INNER JOIN races AS T2 ON T2.circuitId = T1.circuitId WHERE T2.year = '2010' AND T2.name = 'Abu Dhabi Circuit' AND T2.round = 1
SELECT COUNT(T2.raceId) FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T1.country = 'Italy' AND T2.name = 'Formula_1'
SELECT DISTINCT T1.date FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId WHERE T2.name = 'Formula_1' AND T1.round = 1 AND T2.location = 'Barcelona-Catalunya'
SELECT T1.url FROM circuits AS T1 INNER JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.year = 2009 AND T2.name = 'Spanish Grand Prix'
SELECT MIN(T2.fastestLapTime) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.driverRef = ( SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' )
SELECT T2.fname, T2.sname FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.fastestLapSpeed = ( SELECT MAX(fastestLapSpeed) FROM results )
SELECT T3.driverRef FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'Canadian Grand Prix' AND T1.year = 2007 AND T2.position = 1
SELECT T2.name FROM driverStandings AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T3.forename = 'Lewis' AND T3.surname = 'Hamilton'
SELECT T2.name FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T3.driverId = T1.driverId WHERE T3.fname = 'Lewis' AND T3.surname = 'Hamilton' ORDER BY T1.rank LIMIT 1
SELECT MAX(T2.fastestLapSpeed) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Spanish Grand Prix' AND T2.year = 2009
SELECT T2.year FROM drivers AS T1 INNER JOIN races AS T2 ON T1.driverId = T2.driverId WHERE T1.firstname = 'Lewis' AND T1.lastname = 'Hamilton' AND T2.name = 'Formula_1'
SELECT T2.positionOrder FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T3.raceId = T2.raceId WHERE T3.name = 'Chinese Grand Prix' AND T1.driverId = ( SELECT driverId FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' ) AND T2.year = 2008
SELECT T3.frename, T3.sname FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T2.year = 1989 AND T1.name = 'Australian Grand Prix' AND T1.startsWith '1989' AND T1.circuitId = 4
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2008 AND T1.name = 'Australian Grand Prix' AND T2.time IS NOT NULL
SELECT T1.fastLap FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.fname = 'Lewis' AND T2.suffix = 'Hamilton' AND T1.year = 2008 ORDER BY T1.time ASC LIMIT 1
SELECT T3.time FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN lapTimes AS T3 ON T2.driverId = T3.driverId WHERE T1.name = 'Chinese Grand Prix' AND T2.position = 'Finish' AND T1.year = 2008 AND T2.driverId = ( SELECT driverId FROM drivers WHERE rank = 2 )
SELECT T1 FinishedTime, T2.Url FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.year = 2008 AND T2.position = 'Australian Grand Prix' ORDER BY T1.time DESC LIMIT 1
SELECT COUNT(T2.driverId) FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId WHERE T1.nationality = 'British' AND T2.raceId = 2008 AND T2.points = 5
SELECT COUNT(T1.raceId) FROM raceTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.time has value AND T2.driverId IN ( SELECT driverId FROM driverStandings WHERE raceId = ( SELECT raceId FROM races WHERE year = 2008 AND name = 'Chinese Grand Prix' ) )
SELECT SUM(T2.points) FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId WHERE T1.driverRef = ( SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' )
SELECT AVG(T2.fastestLapTime) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T1.driverRef = ( SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' )
SELECT CAST(SUM(CASE WHEN T1.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.raceId) FROM laps AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.time IS NOT NULL AND T1.lap = 2008
SELECT CAST((T2.time - T1.champion_time) AS REAL) * 100 / T1.last_driver_time FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.name = '2008 Australian Grand Prix' AND T2.time IS NOT NULL
SELECT COUNT(circuitId) FROM circuits WHERE location = 'Melbourne' AND country = 'Australia'
SELECT location FROM circuits WHERE country = 'USA'
SELECT COUNT(*) FROM drivers WHERE nationality = 'British' AND DOB > 1980
SELECT MAX(T2.points) FROM constructors AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId WHERE T1.nationality = 'British'
SELECT T2.name FROM constructorResults AS T1 INNER JOIN constructors AS T2 ON T1.constructororId = T2.constructorId ORDER BY T1.points DESC LIMIT 1
SELECT DISTINCT T2.name FROM constructorResults AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T1.raceID = 291 AND T1.points = 0
SELECT COUNT(DISTINCT T1.nationality) FROM constructors AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId WHERE T1.nationality = 'Japanese' GROUP BY T2.constructorId HAVING COUNT(T2.points) = 0
SELECT T2.name FROM results AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId WHERE T1.rank = 1
SELECT COUNT(T2.name) FROM results AS T1 INNER JOIN constructors AS T2 ON T1.resultsConstructorId = T2.constructorId WHERE T2.nationality = 'France' AND T1.laps > 50
SELECT CAST(SUM(CASE WHEN T2.time IS NOT NULL THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.time) FROM drivers AS T1 INNER JOIN races AS T2 ON T1.driverId = T2.driverId WHERE T1.nationality = 'Japanese' AND T2.year BETWEEN 2007 AND 2009
SELECT AVG(T1.time) FROM races AS T1 INNER JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year < 1975
SELECT T1.forname, T1.surname FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.rank = 2 AND STRFTIME('%Y', T1.dob) > '1975'
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.time IS NULL AND T2.driverId IS NOT NULL
SELECT T1.forename, T1.surname FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId ORDER BY T2.time ASC LIMIT 1
SELECT T1.festLap FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.year = 2009 ORDER BY T1.time DESC LIMIT 1
SELECT AVG(T2.fastestLapSpeed) FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Spanish Grand Prix' AND T1.year = 2009
SELECT T2.name, T2.year FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T1.milliseconds IS NOT NULL ORDER BY T1.milliseconds ASC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.dob < 1985 AND T1.laps > 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.driverId) FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T2.lap > 50 AND T2.time > 40 AND T2.position = 'Lap'
SELECT COUNT(T2.driverId) FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.nationality = 'French' AND T1.time < 120
SELECT code FROM drivers WHERE nationality = 'America'
SELECT DISTINCT raceId FROM races WHERE year = 2009
SELECT COUNT(T2.driverId) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.raceId = 18
SELECT code FROM drivers WHERE nationality IN ('Netherlandic', 'Dutch') ORDER BY dob DESC LIMIT 3
SELECT driverRef FROM drivers WHERE forename = 'Robert' AND surname = 'Kubica'
SELECT COUNT(driverId) FROM drivers WHERE nationality = 'British' AND strftime('%Y', dob) = '1980'
SELECT T2.driverRef, MIN(T1.time) FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.dob BETWEEN '1980-01-01' AND '1990-12-31' AND T2.nationality = 'Germany' ORDER BY T1.time ASC LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = 'Germany' ORDER BY dob ASC LIMIT 1
SELECT T2.driverId, T2.code FROM results AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.dob LIKE '1971%' ORDER BY T1.fastLapTime DESC LIMIT 1
SELECT T2.driverRef, MAX(T1.time) FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.dob < 1982
SELECT T1.year FROM races AS T1 INNER JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T2.fastLapTime = ( SELECT MAX(fastLapTime) FROM results )
SELECT year FROM lapTimes ORDER BY time DESC LIMIT 1
SELECT driverId FROM lapTimes ORDER BY time ASC LIMIT 5
SELECT COUNT(T1.raceId) FROM races AS T1 INNER JOIN status AS T2 ON T1.statusId = T2.statusId WHERE T2.statusId = 2 AND T1.time != '' AND T1.raceId > 50 AND T1.raceId < 100
SELECT location, lat, lng FROM circuits WHERE country = 'Austria'
SELECT raceId FROM races WHERE time IS NOT NULL GROUP BY raceId ORDER BY COUNT(raceId) DESC LIMIT 1
SELECT T2.driverRef, T2.country, T2.dob FROM qualifying AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T1.raceId = 23 AND T1.q2 IS NOT NULL
SELECT T1.year, T1.name, T1.date, T1.time FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId ORDER BY T1.date LIMIT 1
SELECT COUNT(T2.driverId) FROM status AS T1 INNER JOIN results AS T2 ON T1.statusId = T2.statusId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.nationality = 'American' AND T1.status = 'Puncture'
SELECT T1.url FROM constructors AS T1 INNER JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId WHERE T1.nationality = 'Italian' ORDER BY T2.points DESC LIMIT 1
SELECT T1.url FROM constructors AS T1 INNER JOIN constructorStandings AS T2 ON T1.constructorId = T2.constructorId GROUP BY T1.constructorId ORDER BY SUM(T2.wins) DESC LIMIT 1
SELECT T2.driverId FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'French Grand Prix' AND T2.lap = 3 ORDER BY T2.time DESC LIMIT 1
SELECT T2.raceId, T1.time FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId ORDER BY T1.time ASC LIMIT 1
SELECT AVG(T2.fastestLapTime) FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId WHERE T2.year = 2006 AND T2.rank < 11
SELECT T1.driverRef FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId WHERE T1.dob BETWEEN '1980' AND '1985' GROUP BY T1.driverRef ORDER BY AVG(T2.duration) LIMIT 3
SELECT T2.name, T1.time FROM lapTimes AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId INNER JOIN races AS T3 ON T2.driverId = T3.driverId WHERE T3.name = 'Canadian Grand Prix' AND T3.year = 2008 ORDER BY T1.time DESC LIMIT 1
SELECT T4.constructorRef, T1.url FROM seasons AS T1 INNER JOIN races AS T2 ON T1.year = T2.year AND T1.circuitId = T2.circuitId INNER JOIN constructorStandings AS T3 ON T2.raceId = T3.raceId INNER JOIN constructors AS T4 ON T3.constructorId = T4.constructorId WHERE T2.year = 2009 AND T2.name = 'Singapore Grand Prix' ORDER BY T2.time DESC LIMIT 1
SELECT T1.frename, T1.surname, T1.dob FROM drivers AS T1 INNER JOIN ( SELECT * FROM drivers WHERE nationality = 'Austria' AND dob < '1981' ) AS T2 ON T1.driverRef = T2.driverRef WHERE T1.nationality = 'Austria' AND T1.dob >= '1981' AND T1.dob <= '1991'
SELECT forname, surname, url, dob FROM drivers WHERE nationality = 'German' AND year(dob) BETWEEN '1971' AND '1985' ORDER BY dob DESC
SELECT location, country, lat, lng FROM circuits WHERE name = 'Hungaroring'
SELECT T2.name, T2.country, T1.points FROM constructorResults AS T1 INNER JOIN constructors AS T2 ON T1.constructorId = T2.constructorId INNER JOIN races AS T3 ON T1.raceId = T3.raceId WHERE T3.year BETWEEN 1980 AND 2010 GROUP BY T2.name, T2.country, T1.points ORDER BY SUM(T1.points) DESC LIMIT 1
SELECT CAST(SUM(T2.points) AS REAL) / COUNT(T2.points) FROM drivers AS T1 INNER JOIN constructorStandings AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton' AND T2.raceId = 19
SELECT CAST(SUM(CASE WHEN year < 10 THEN 1 ELSE 0 END) AS REAL) / COUNT(raceId) FROM races WHERE year >= 2000 AND year < 2010
SELECT MAX(nationality) FROM drivers
SELECT SUM(T2.wins) FROM results AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId WHERE T1.rank = 91st
SELECT T2.name FROM results AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T1.fastestLapSpeed = ( SELECT MIN(fastestLapSpeed) FROM results )
SELECT T2.location, T2.country FROM races AS T1 INNER JOIN circuits AS T2 ON T1.circuitId = T2.circuitId ORDER BY T1.date DESC LIMIT 1
SELECT T1.fname, T1.surname FROM drivers AS T1 INNER JOIN results AS T2 ON T1.driverId = T2.driverId INNER JOIN qualifying AS T3 ON T3.driverId = T2.driverId INNER JOIN races AS T4 ON T4.raceId = T3.raceId WHERE T2.rank = 1 AND T4.name = 'Marina Bay Street Circuit' AND T4.year = 2008
SELECT T1.firstname, T1.lastname, T2nationality, T3name FROM drivers AS T1 INNER JOIN constructors AS T2 ON T1.driverRef = T2.constructorId INNER JOIN races AS T3 ON T2.raceId = T3.raceId ORDER BY T1.dob DESC LIMIT 1
SELECT COUNT(T2.number) FROM races AS T1 INNER JOIN driverStandings AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Canadian Grand Prix' AND T2.statusId = 3
SELECT SUM(T2.wins), T1.forname, T1.surname FROM drivers AS T1 INNER JOIN driverStandings AS T2 ON T1.driverId = T2.driverId GROUP BY T1.driverId ORDER BY T1.dob LIMIT 1
SELECT MAX(T1.duration) FROM pitStops AS T1 INNER JOIN drivers AS T2 ON T1.driverId = T2.driverId
SELECT T2.time FROM results AS T1 INNER JOIN lapTimes AS T2 ON T1.resultId = T2.resultId ORDER BY T2.lap DESC LIMIT 1
SELECT MAX(T2.duration) FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId WHERE T1.forename = 'Lewis' AND T1.surname = 'Hamilton'
SELECT T2.lap FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId INNER JOIN pitStops AS T3 ON T2.raceId = T3.raceId WHERE T1.fname = 'Lewis' AND T1.lastname = 'Hamilton' AND T3.stop = 'PIT' AND T3.lap = '2011'
SELECT T2.duration FROM races AS T1 INNER JOIN pitStops AS T2 ON T1.raceId = T2.raceId WHERE T1.year = 2011 AND T1.name = 'Australian Grand Prix'
SELECT T2.time FROM drivers AS T1 INNER JOIN lapTimes AS T2 ON T1.driverId = T2.driverId WHERE T1.driverRef = ( SELECT driverRef FROM drivers WHERE forename = 'Lewis' AND surname = 'Hamilton' ) ORDER BY T2.time ASC LIMIT 1
SELECT T3.driverRef, T3.fname, T3.surname FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId ORDER BY T2.time LIMIT 20
SELECT T2.position FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId INNER JOIN drivers AS T3 ON T2.driverId = T3.driverId WHERE T3.fname = 'Lewis' AND T3.lastname = 'Hamilton' ORDER BY T2.time LIMIT 1
SELECT T2.time FROM circuits AS T1 INNER JOIN lapTimes AS T2 ON T1.circuitId = T2.raceId WHERE T1.name = 'Austria Grand Prix Circuit' ORDER BY T2.time ASC LIMIT 1
SELECT T2.time FROM circuits AS T1 INNER JOIN lapTimes AS T2 ON T1.circuitId = T2.raceId WHERE T1.country = 'Italy' ORDER BY T2.time ASC LIMIT 1
SELECT T2.name FROM lapTimes AS T1 INNER JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.circuitId = ( SELECT circuitId FROM circuits WHERE name = 'Austrian Grand Prix' ) ORDER BY T1.time ASC LIMIT 1
SELECT T2.time, T2.duration FROM races AS T1 INNER JOIN lapTimes AS T2 ON T1.raceId = T2.raceId WHERE T1.name = 'Austrian Grand Prix Circuit' AND T2.position = 'pitstop' AND T2.driverId IN ( SELECT driverId FROM drivers WHERE nationality = 'A' ) ORDER BY T2.time DESC LIMIT 1
SELECT T2.lat, T2.lng FROM lapTimes AS T1 INNER JOIN circuits AS T2 ON T1.raceId = T2.circuitId WHERE T1.time = '1:29.488'
SELECT CAST(SUM(T2.milliseconds) AS REAL) / COUNT(T2.raceId) FROM drivers AS T1 INNER JOIN pitStops AS T2 ON T1.driverId = T2.driverId WHERE T1.fname = 'Lewis' AND T1.sname = 'Hamilton'
SELECT AVG(T1.milliseconds) FROM lapTimes AS T1 INNER JOIN circuits AS T2 ON T1.raceId = T2.raceId WHERE T2.country = 'Italy'
SELECT playerapi_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1
SELECT height, player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT preferred_foot FROM Player_Attributes WHERE potential = ( SELECT MIN(potential) FROM Player_Attributes )
SELECT COUNT(id) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND defensive_work_rate = 'low'
SELECT player_id FROM Player_Attributes ORDER BY crossing DESC LIMIT 5
SELECT T1.name FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id WHERE T2.season = '2016' GROUP BY T1.name ORDER BY SUM(T2.home_team_goal + T2.awayteamgoal) DESC LIMIT 1
SELECT SUBSTR(home_team_goal, 1, 4) - SUBSTR(away_team_goal, 1, 4) AS result FROM `Match` WHERE season = '2016' GROUP BY SUBSTR(home_teamGoal, 1, 4) - SUBSTR(awayteamGoal, 1, 4) ORDER BY COUNT(hometeamgoal) LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_name ORDER BY SUM(T2.penalties) DESC LIMIT 10
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.away_team_api_id INNER JOIN League AS T3 ON T3.country_id = T2.country_id WHERE T3.name = 'Scotland Premier League' AND T2.season = 2010 GROUP BY T1.team_long_name ORDER BY SUM(T2.away_team_goal - T2.home_team_goal) DESC LIMIT 1
SELECT MAX(T2.buildUpPlaySpeed) FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id LIMIT 4
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2015-2016' AND T1.home_team_goal = T1.awayteam_goal GROUP BY T2.name ORDER BY COUNT(T1.id) DESC LIMIT 1
SELECT CAST((strftime('%Y', T2.date) - strftime('%Y', T2.birthday)) AS REAL) / 2 FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.sprint_speed >= 97 AND STRFTIME('%Y', T2.date) BETWEEN '2013' AND '2015'
SELECT T1.name, COUNT(T2.id) FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id GROUP BY T1.name ORDER BY COUNT(T2.id) DESC LIMIT 1
SELECT AVG(height) FROM Player WHERE birthday BETWEEN '1990-01-01 00:00:00' AND '1996-01-01 00:00:00'
SELECT player_api_id FROM Player_Attributes WHERE date LIKE '2010%' ORDER BY overall_rating DESC LIMIT 1
SELECT T2.team_fifa_api_id FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.buildUpPlaySpeed > 50 AND T1.buildUpPlaySpeed < 60
SELECT DISTINCT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.date LIKE '2012%' AND T2.buildUpPlayPassing IS NOT NULL
SELECT CAST(SUM(CASE WHEN T1.preferred_foot = 'left' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.player_fifa_api_id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE STRFTIME('%Y', T2.birthday) BETWEEN '1987' AND '1992'
SELECT name FROM League ORDER BY home_team_goal + away_team_goal DESC LIMIT 5
SELECT AVG(T1.long_shots) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Ahmed Samir Farag'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 GROUP BY T1.player_name ORDER BY CAST(SUM(T2.heading_accuracy) AS REAL) / COUNT(T2.player_fifa_api_id) DESC LIMIT 10
SELECT DISTINCT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.date BETWEEN '2014-01-01 00:00:00' AND '2014-01-31 00:00:00' AND T2.chanceCreationPassing < ( SELECT AVG(T2.chanceCreationPassing) FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.teamapi_id WHERE T2.date BETWEEN '2014-01-01 00:00:00' AND '2014-01-31 00:00:00' ) ORDER BY T2.chanceCreationPassing DESC
SELECT DISTINCT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2009-2010' GROUP BY T2.name HAVING SUM(T1.home_team_goal) / COUNT(DISTINCT T1.id) > SUM(T1.awayteamgoal)
SELECT team_short_name FROM Team WHERE team_long_name = 'Queens Park Rangers'
SELECT player_name FROM Player WHERE SUBSTR(birthday, 1, 7) = '1970-10'
SELECT T1.attacing_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = ' Franco Zennaro'
SELECT T2.buildUpPlayPositioningClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'ADO Den Haag' AND T2.buildUpPlayPositioningClass = '1st two thirds'
SELECT DISTINCT heading_accuracy FROM Player_Attributes WHERE date = '2014-09-18' AND player_name = ' Francois Affolter'
SELECT SUM(T1.overall_rating) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Gabriel Tamas' AND T1.date LIKE '2011%'
SELECT COUNT(T2.id) FROM League AS T1 INNER JOIN Match AS T2 ON T1.id = T2.league_id WHERE T2.season = 2015 AND T1.name = 'Scotland Premier League'
SELECT T1.preferred_foot FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.birthday IS NOT NULL ORDER BY T2.birthday DESC LIMIT 1
SELECT player_name FROM Player ORDER BY potential DESC LIMIT 1
SELECT COUNT(T1.id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'left' AND T1.weight < 130
SELECT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationPassingClass = 'Risky'
SELECT T2.defensive_work_rate FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'David Wilson'
SELECT birthday FROM Player WHERE player_fifa_api_id = ( SELECT player_fifa_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1 )
SELECT T1.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Netherlands'
SELECT AVG(T1.home_team_goal) FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.home_team_api_id INNER JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Poland' AND T2.season = '2010-2011'
SELECT player_name FROM Player ORDER BY AVG(T1.fishing) DESC LIMIT 1
SELECT player_name FROM Player WHERE height > 180
SELECT COUNT(id) FROM Player WHERE strftime('%Y', birthday) = '1990'
SELECT COUNT(T1.id) FROM Player AS T1 INNER JOIN Team_Attributes AS T2 ON T1.player_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = 'Fast' AND T1.weight > 170 AND T1.player_name LIKE 'Adam%'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating > 80 AND strftime('%Y', T2.date) BETWEEN '2008' AND '2010'
SELECT potential FROM Player_Attributes WHERE player_name = 'Aaron Doran'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'left'
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = 'Fast'
SELECT T2.buildUpPlayPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_short_name = 'CLB'
SELECT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlayPassing > 70
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_fifa_api_id > 170 AND T2.date BETWEEN '2010-01-01' AND '2015-12-31'
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Italy Serie A'
SELECT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeed = 31 AND T2.buildUpPlayDribbling = 53 AND T2 buildUpPlayPassing = 32
SELECT CAST(SUM(T2.overall_rating) AS REAL) / COUNT(T1.id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.playerapi_id WHERE T1.player_name = 'Aaron Doran'
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Germany 1. Bundesliga' AND (T1.date LIKE '2008-08%' OR T1.date LIKE '2008-09%') AND T1.date LIKE '2008-10%'
SELECT DISTINCT T1.team_short_name FROM Team AS T1 INNER JOIN Match AS T2 ON T1.id = T2.home_team_api_id WHERE T2.home_team_goal = 10
SELECT player_name FROM Player WHERE balance = ( SELECT MAX(balance) FROM Player ) AND potential = 61
SELECT (CAST(SUM(CASE WHEN T1.player_name = 'Abdou Diallo' THEN T2.ball_control ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.player_name = 'Abdou Diallo' THEN 1 ELSE 0 END)) - (CAST(SUM(CASE WHEN T1.player_name = 'Aaron Appindangoye' THEN T2.ball_control ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.player_name = 'Aaron Appindangoye' THEN 1 ELSE 0 END)) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id
SELECT team_long_name FROM Team WHERE team_short_name = 'GEN'
SELECT player_name FROM Player WHERE player_name IN ('Aaron Lennon', 'Abdelaziz Barrada') ORDER BY birthday LIMIT 1
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT COUNT(DISTINCT player_name) FROM Player WHERE preferred_foot = 'left' AND attacking_work_rate = 'low'
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Belgium Jupiler League'
SELECT T1.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany'
SELECT player_name FROM Player ORDER BY overall_rating DESC LIMIT 1
SELECT COUNT(T1.player_name) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.playerapi_id WHERE T2.defensive_work_rate = 'high' AND strftime('%Y', T1.birthday) < '1986'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.playerapi_id WHERE (T1.player_name = 'Alexis' AND T2.crossing = ( SELECT MAX(crossing) FROM Player_Attributes ) OR T1.player_name = 'Arouna' AND T2.crossing = ( SELECT MAX(crossing) FROM Player_Attributes ))
SELECT T1.heading_accuracy FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Ariel Borysiuk'
SELECT COUNT(T1.player_name) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volley > 70 AND T2.dribbling > 70
SELECT COUNT(T1.id) FROM `Match` AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.season IN ('2008', '2009') AND T2.name = 'Belgium'
SELECT T1.long_passing FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.birthday LIMIT 1
SELECT COUNT(T1.id) FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Belgium Jupiler League' AND SUBSTR(T1.`date`, 1, 7) = '2009-04'
SELECT T2.name FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T1.season = '2008-2009' GROUP BY T2.name ORDER BY COUNT(T2.name) DESC LIMIT 1
SELECT CAST(SUM(T2.overall_rating) AS REAL) / COUNT(T1.id) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE strftime('%Y', T1.birthday) < '1986'
SELECT CAST((SUM(CASE WHEN T2.player_name = 'Ariel Borysiuk' THEN T1.overall_rating ELSE 0 END) - SUM(CASE WHEN T2.player_name = 'Paulin Puel' THEN T1.overall_rating ELSE 0 END)) AS REAL) * 100 / SUM(CASE WHEN T2.player_name = 'Paulin Puel' THEN T1.overall_rating ELSE 0 END) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id
SELECT AVG(T2.buildUpPlaySpeed) FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Heart of Midlothian'
SELECT CAST(SUM(T1.overall_rating) AS REAL) / COUNT(T1.id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Pietro Marino'
SELECT SUM(T2.crossing) FROM Player AS T1 INNER JOIN Match AS T2 ON T1.player_api_id = T2.home_player_11 WHERE T1.player_name = 'Aaron Lennox'
SELECT T1.chanceCreationPassing, T1.chanceCreationPassingClass FROM Team_Attributes AS T1 INNER JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = 'Ajax' ORDER BY T1.chanceCreationPassing DESC LIMIT 1
SELECT T1.preferred_foot FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Abdou Diallo'
SELECT T1.overall_rating FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Dorlan Pabon' ORDER BY T1.overall_rating DESC LIMIT 1
SELECT SUM(T2.away_team_goal) / COUNT(T2.away_team_id) FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.away_team_api_id WHERE T1.team_long_name = 'Parma' AND T1.team_api_id = 23
SELECT T2.player_name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.overall_rating = 77 AND T1.date LIKE '2016-06-23%' ORDER BY T2.birthday DESC LIMIT 1
SELECT overall_rating FROM Player_Attributes WHERE player_name = 'Aaron Mooy' AND date LIKE '2016-02-04%'
SELECT T1.potential FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Francesco Parravicini' AND T1.date = '2010-08-30'
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Francesco Migliore' AND T1.date LIKE '2015-05-01%'
SELECT T2.defensive_work_rate FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Kevin Berigaud' AND T2.date = '2013-02-22 00:00:00'
SELECT T2.date FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Kevin Constant' ORDER BY T2.crossing DESC LIMIT 1
SELECT T2.buildUpPlaySpeedClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.date = '2011-02-22' AND T1.team_long_name = 'Willem II'
SELECT T2.class FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.date = '2015-09-10' AND T1.team_short_name = 'LEI' AND T2.buildUpPlayDribblingClass = 'Class'
SELECT T2.buildUpPlayPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'FC Lorient' AND T2.date LIKE '2010-02-22%'
SELECT T2.chanceCreationPassingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.date = '2013-09-20' AND T1.team_long_name = 'PEC Zwolle'
SELECT T2.chanceCreationCrossingClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Hull City' AND T2.date = '2010-02-22 00:00:00'
SELECT T2 defenceAggressionClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Hannover 96' AND T2.date LIKE '2015-09-10%'
SELECT AVG(T2.overall_rating) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Marko Arnautovic' AND T2.date BETWEEN '2007-02-22' AND '2016-04-21'
SELECT CAST((SUM(CASE WHEN T2.player_name = 'Landon Donovan' THEN T1.overall_rating ELSE 0 END) - SUM(CASE WHEN T2.player_name = 'Jordan Bowery' THEN T1.overall_rating ELSE 0 END)) AS REAL) * 100 / SUM(CASE WHEN T2.player_name = 'Landon Donovan' THEN T1.overall_rating ELSE 0 END) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.date = '2013-07-12'
SELECT player_name FROM Player WHERE height > 0 AND height IS NOT NULL ORDER BY height DESC LIMIT 1
SELECT player_api_id FROM Player ORDER BY weight DESC LIMIT 10
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE datetime(CURRENT_TIMESTAMP, 'localtime') - datetime(birthday) > 34
SELECT SUM(CASE WHEN T1.player_name = 'Aaron Lennon' THEN 1 ELSE 0 END) FROM Player AS T1 INNER JOIN Match AS T2 ON T1.player_api_id = T2.home_player_11
SELECT SUM(T3.away_team_goal) FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id INNER JOIN Match AS T3 ON T2.id = T3.away_player_11 OR T2.id = T3.away_player_10 OR T2.id = T3.away_player_9 WHERE T1.player_name IN ('Daan Smith', 'Filipe Ferreira')
SELECT SUM(T2.home_team_goal) FROM Player AS T1 INNER JOIN Match AS T2 ON T1.player_id = T2.home_player_11 WHERE SUBSTR(CURRENT_TIMESTAMP, -4, 4) - SUBSTR(T1.birthday, -4, 4) < 31
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.playerapi_id WHERE T2.attacking_work_rate = 'high'
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.fishing = 1 ORDER BY T1.date - T1.birthday DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN League AS T2 ON T1.id = T2.id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Belgium'
SELECT DISTINCT T2.player_name, T3.name FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id INNER JOIN Country AS T3 ON T2.player_api_id = T3.id WHERE T1.vision > 89
SELECT T1.name FROM Country AS T1 INNER JOIN ( SELECT T2.name, AVG(T1.weight) AS avg FROM Player AS T1 INNER JOIN Country AS T2 ON T1.player_api_id = T2.country_id GROUP BY T2.name ORDER BY T1.weight DESC LIMIT 1 ) AS T2 ON T2.id = T1.id GROUP BY T2.name ORDER BY T2.avg DESC LIMIT 1
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = 'Slow'
SELECT DISTINCT T1.team_short_name FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationPassingClass = 'Safe'
SELECT AVG(T1.height) FROM Player AS T1 INNER JOIN League AS T2 ON T1.player_api_id = T2.country_id INNER JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Italy'
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name ASC
SELECT COUNT(birthday) FROM Player WHERE player_name LIKE 'Aaron%' AND birthday > '1990%'
SELECT SUM(CASE WHEN T2.id = 6 THEN T1.Jumping ELSE 0 END) - SUM(CASE WHEN T2.id = 23 THEN T1.Jumping ELSE 0 END) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id
SELECT player_id FROM Player_Attributes WHERE preferred_foot = 'right' AND potential = ( SELECT MIN(potential) FROM Player_Attributes ) LIMIT 5
SELECT COUNT(id) FROM Player_Attributes WHERE preferred_foot = 'Left' AND potential = ( SELECT MAX(potential) FROM Player_Attributes )
SELECT CAST(SUM(CASE WHEN strength > 80 AND stamina > 80 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(id) FROM Player_Attributes
SELECT T2.name FROM League AS T1 INNER JOIN Country AS T2 ON T1.country_id = T2.id WHERE T1.name = 'Polandeklasa'
SELECT T1.home_team_goal, T1.away_team_goal FROM Match AS T1 INNER JOIN League AS T2 ON T2.country_id = T1.country_id WHERE T2.name = 'Belgium Jupiler League' AND T1.date LIKE '2008-09-24%'
SELECT T1.sprint_speed, T1.acceleration, T1.Agility FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Alexis Blin'
SELECT T2.buildUpPlaySpeedClass FROM Team AS T1 INNER JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'KSV Cercle Brugge'
SELECT SUM(CASE WHEN T1.season = '2015-2016' THEN 1 ELSE 0 END) FROM `Match` AS T1 INNER JOIN League AS T2 ON T1.venue = T2.country_id WHERE T2.name = 'Italian Serie A'
SELECT T1.home_team_goal FROM Match AS T1 INNER JOIN League AS T2 ON T1.league_id = T2.id WHERE T2.country_id = ( SELECT country_id FROM Country WHERE name = 'Netherlands Eredivisie' ) ORDER BY T1.home_team_goal DESC LIMIT 1
SELECT T1.fishing, T1.curve FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.weight DESC LIMIT 1
SELECT T2.name FROM `Match` AS T1 INNER JOIN League AS T2 ON T2.id = T1.league_id WHERE T1.season = '2015-2016' GROUP BY T2.name ORDER BY COUNT(T2.name) DESC LIMIT 4
SELECT T1.team_long_name FROM Team AS T1 INNER JOIN Match AS T2 ON T1.team_api_id = T2.away_team_api_id ORDER BY T2.away_team_goal DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 INNER JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.height < 180 AND T1.overall_rating > 70 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.id) FROM Player_Attributes AS T1 INNER JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id
SELECT CAST(SUM(CASE WHEN T1.Admission = '+' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T1.Admission = '- THEN 1 ELSE 0 END), CAST(SUM(CASE WHEN T1.SEX = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T1.SEX = 'F' THEN 1 ELSE 0 END) FROM Patient AS T1 INNER JOIN ( SELECT DISTINCT ID FROM Patient WHERE SEX = 'M' AND Admission = '+') AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T1.Admission = '-'
SELECT CAST(SUM(CASE WHEN STRFTIME('%Y', Birth) > '1930' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(ID) FROM Patient WHERE SEX = 'F'
SELECT SUM(CASE WHEN Admission = '+' THEN 1 ELSE 0 END) / COUNT(ID) AS per FROM Patient WHERE strftime('%Y', Birthday) BETWEEN '1930-01-01' AND '1940-12-31'
SELECT CAST(SUM(CASE WHEN T1.Admission = '+' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.Admission = '- THEN 1 ELSE 0 END) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'SLE'
SELECT T2.Date, T1.Disagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 30609
SELECT T1.SEX, T1.Birthday, T2.`Examination Date`, T2.Symptoms FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 163109
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH > 500
SELECT T1.ID, strftime('%Y', T1.Birthday) - strftime('%Y', T1.CurrentDate) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.RVVT = '+'
SELECT T1.ID, T1.SEX, T1.DISTINCT T2.Disease FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Thrombosis = 2
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.`T-CHO` >= 250 AND strftime('%Y', T1.Birthday) = '1937'
SELECT T1.ID, T1.SEX, T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALB < 3.5
SELECT CAST(SUM(CASE WHEN T1.TP < 6.0 OR T1.TP > 8.5 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.SEX = 'F'
SELECT AVG(T1.aCL IgG) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Admission = '+' AND STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T2.Birthday) >= 50
SELECT COUNT(ID) FROM Patient WHERE SEX = 'F' AND Admission = '- ' AND strftime('%Y', Description) = '1997'
SELECT DISTINCT TIMESTAMPDIFF(YEAR, First Date, Birth) AS age FROM Patient
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND T2.Thrombosis = '1' AND strftime('%Y', T2.'Examination Date') = '1997'
SELECT MAX(TIMESTAMPDIFF(YEAR, T1.Birthday, T2.Birthday)) - MIN(TIMESTAMPDIFF(YEAR, T1.Birthday, T2.Birthday)) AS age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG >= 200
SELECT DISTINCT T1.Symptoms, T1.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday IS NOT NULL AND T1.Symptoms IS NOT NULL
SELECT CAST(COUNT(T1.ID) AS REAL) / 12 FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.Date = '1998-12-31'
SELECT T2.Date, T1.First Date - T1.Birthday AS age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Disagnosis = 'SJS' ORDER BY T1.First Date - T1.Birthday DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T1.UA <= 8.0 THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN T1.UA <= 6.5 THEN 1 ELSE 0 END) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.SEX = 'M' OR T2.SEX = 'F'
SELECT COUNT(ID) FROM ( SELECT T2.ID FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` - T1.`First Date` >= 1 GROUP BY T2.ID ) T3
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Birthday < 18 AND strftime('%Y', T2.`Examination Date`) BETWEEN '1990' AND '1993'
SELECT COUNT(T1.ID) FROM Male AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL >= 2.0 AND T1.SEX = 'M'
SELECT T2.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` BETWEEN '1985-01-01' AND '1995-12-31 '
SELECT CAST(SUM(1999 - strftime('%Y', T1.Birthday)) AS REAL) / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date BETWEEN '1991-10-01' AND '1991-10-30'
SELECT T1.`Examination Date` - T1.Birthday, T2.`Diagnosis` FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID ORDER BY T1.HGB DESC LIMIT 1
SELECT DISTINCT ANA FROM Examination WHERE ID = 3605340 AND `Examination Date` = '1996-12-02' AND ANA IS NOT NULL
SELECT CASE WHEN T2.N < 250 THEN 'Normal' ELSE 'NotNormal' END AS status FROM Laboratory AS T1 INNER JOIN ( SELECT ID, SUM(CHO) FROM TotalCholesterol WHERE ID = 2927464 AND Date = '1995-09-04' ) AS T2 ON T1.ID = T2.ID
SELECT T1.SEX FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Disagnosis = 'AORTITIS' ORDER BY T1.First Date LIMIT 1
SELECT T1.aCL IgM FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.Description = '1994-02-19' AND T2.Diagnosis = 'SLE' AND T1.Examination Date = '1993-11-12'
SELECT T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT = 9 AND T1.Birthday = '1992-06-12'
SELECT strftime('%Y', T2.`Date`) - strftime('%Y', T1.Birthday) AS age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UA = 8.4 AND T2.Date = '1991-10-21'
SELECT COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.`First Date` = '1991-06-13' AND T1.Disagnosis = 'SJS' AND T2.Date = '1995'
SELECT T2.`Original Diagnosis` FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` = '1997-01-27' AND T2.Diagnosis = 'SLE' AND T2.`First Date` = '1997-01-27'
SELECT T1.Symptoms FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday = '1959-03-01' AND T1.`Date` = '1993-09-27'
SELECT SUM(CASE WHEN T2.Date LIKE '1981-11-%' THEN T2.`T-CHO` ELSE 0 END) - SUM(CASE WHEN T2.Date LIKE '1981-12-%' THEN T2.`T-CHO` ELSE 0 END) AS decrease FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = '1959-02-18'
SELECT T1.ID FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'Behcet' AND T1.GY(Description) BETWEEN '1997-01-01' AND '1998-12-31'
SELECT ID FROM Laboratory WHERE GPT > 30 AND ALB < 4 AND Date BETWEEN '1987-07-06' AND '1996-01-31'
SELECT COUNT(ID) FROM Patient WHERE SEX = 'F' AND Admission = '+' AND strftime('%Y', Birthday) = '1964'
SELECT AVG(T1.aCL IgM) + AVG(T1.aCL IgM) * 0.2 FROM Examination AS T1 INNER JOIN ( SELECT T2.aCL IgM FROM Anti-Cardiolip AS T1 INNER JOIN `Anti-Cardiolip` AS T2 ON T1.aCL IgM = T2.aCL IgM WHERE T1.ANA = 'S' AND T1.Thrombosis = 2 GROUP BY T2.aCL IgM ) AS T2 ON T1.ID = T2.ID
SELECT CAST(SUM(CASE WHEN T1.UA <= 6.5 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.`U-PRO` > 0 AND T1.`U-PRO` < 30
SELECT CAST(SUM(CASE WHEN T2.DIAGNOSIS = 'BEHCET' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.First Date = '1981-01-01' AND T1.SEX = 'M'
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date LIKE '1991-10%' AND T1.Admission = '-' AND T2.T-BIL < 2.0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`ANA Pattern` != 'P' AND T1.SEX = 'F' AND T1.BirthDAY BETWEEN '1980-01-01' AND '1989-12-31'
SELECT T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T3.DISTINCT diagnosis = 'PSS' AND T2.CRP > 2 AND T2.CRE = 1 AND T2.LDH = 123
SELECT AVG(T1.ALB) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.SEX = 'F' AND T1.PLT > 400 AND T2.Disagnosis = 'SLE'
SELECT T2.Symptoms FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.Disagnosis = 'SLE' ORDER BY T2.Symptoms DESC LIMIT 1
SELECT T2.Description, T1.Diagnosis FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 48473
SELECT COUNT(ID) FROM Patient WHERE Diagnosis = 'APS' AND SEX = 'F'
SELECT COUNT(DISTINCT T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.TP BETWEEN 6 AND 8.5 AND STRFTIME('%Y', T1.DATE) = '1997'
SELECT CAST(SUM(CASE WHEN T1.DIAGNOSIS LIKE '%ITP%' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T1.DIAGNOSIS LIKE '%SLE%' THEN 1 ELSE 0 END) FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID
SELECT CAST(SUM(CASE WHEN T1.SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.SEX) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.BirthDAY LIKE '1980%' AND T2.Disagnosis = 'RA'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`Examination Date` BETWEEN '1995' AND '1997' AND T2.Diagnosis = 'Behcet' AND T1.Admission = '-' AND T1.SEX = 'M'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.WBC < 3.5 AND T1.SEX = 'F'
SELECT DISTINCT T2.`Examination Date` - T2.`First Date` FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ID = 821298
SELECT T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 57266 AND T2.UA > 6.5 AND T1.SEX = 'F' OR T2.UA > 8.0 AND T1.SEX = 'M'
SELECT T2.`Examination Date` FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 48473 AND T2.GOT >= 60
SELECT DISTINCT T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT < 60 AND strftime('%Y', T2.`Date`) = '1994'
SELECT T1.ID FROM Male AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT >= 60 AND T1.SEX = 'M'
SELECT DISTINCT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.GPT > 60 ORDER BY T2.Birthday
SELECT AVG(LDH) FROM Laboratory WHERE LDH < 500
SELECT T1.ID, STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH BETWEEN 600 AND 800
SELECT CASE WHEN T1.Admission = '+' THEN 'inpatient' ELSE 'outpatient' END AS result FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALPHATASE < 300
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.BirthDate = '1982-04-01' AND T2.ALPHAFASE < 300
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TP < 6.0
SELECT CASE WHEN T1.TP > 8.5 THEN T1.TP ELSE 0 END deviation FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.SEX = 'F'
SELECT T1.ID FROM Male AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALB <= 3.5 OR T2.ALB >= 5.5
SELECT T2.ALB FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday LIKE '1982%' AND T2.ALB BETWEEN 3.5 AND 5.5
SELECT CAST(SUM(CASE WHEN T1.SEX = 'M' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UA > 8.0
SELECT AVG(T1.UA) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE (T1.UA < 6.5 AND T2.SEX = 'F') OR (T1.UA < 8.0 AND T2.SEX = 'M')
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UN = 29
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.UN < 30 AND T2.Disagnosis = 'RA'
SELECT COUNT(T1.ID) FROM Male AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE > 1.5
SELECT CASE WHEN COUNT(CASE WHEN T1.SEX = 'M' THEN 1 ELSE NULL END) > COUNT(CASE WHEN T1.SEX = 'F' THEN 1 ELSE NULL END) THEN 'true' ELSE 'false' END FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE > 1.5
SELECT T2.ID, T2.SEX, T2.Birthday FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.T-BIL = ( SELECT MAX(T-BIL) FROM Laboratory )
SELECT T1.SEX, T2.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL >= 2.0
SELECT T1.ID, T2.T-CHO FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID ORDER BY T1.Birthday DESC, T2.T-CHO DESC LIMIT 1
SELECT AVG(STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday)) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.`T-CHO` >= 250 AND T1.SEX = 'M'
SELECT T1.ID, T1.Description, T1.Diagnosis FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG > 300
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG >= 200 AND strftime('%Y', current_timestamp) - T1.Birthday > 50
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '-' AND T2.CPK < 250
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.CPK >= 250 AND strftime('%Y', T1.Birthday) BETWEEN '1936' AND '1956'
SELECT DISTINCT T1.ID, T1.SEX, strftime('%Y', T1.Birthday) - strftime('%Y', T1.CurrentDate) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU > 180 AND `T-CHO` < 250
SELECT T1.ID, T2.GLU FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU < 180 AND strftime('%Y', T1.Description) = '1991'
SELECT T1.ID, T1.SEX, T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.WBC <= 3.5 OR T2.WBC >= 9.0 GROUP BY T1.SEX, T1.Birthday ORDER BY T1.Birthday
SELECT T2.Disagnosis, T1.ID, strftime('%Y',now()) - strftime('%Y', T1.Birthday) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.RBC < 3.5
SELECT T1.SEX, T1.Admission FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'F' AND ROUND((strftime('%Y', CURRENT_TIMESTAMP) - strftime('%Y', T1.Birthday)) > 50) AND T2.RBC <= 3.5 OR T2.RBC >= 6.0
SELECT DISTINCT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.HGB < 10 AND T1.Admission = '-'
SELECT T1.ID, T1.SEX FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.HGB BETWEEN 10 AND 17 AND T1.Diagnosis = 'SLE'
SELECT T1.ID, T1.age FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.HCT >= 52 GROUP BY T1.ID, T1.age HAVING COUNT(T1.ID) > 2
SELECT AVG(HCT) FROM Laboratory WHERE Date LIKE '1991%' AND HCT < 29
SELECT ( SELECT COUNT(ID) FROM Laboratory WHERE PLT < 100 ) - ( SELECT COUNT(ID) FROM Laboratory WHERE PLT > 400 ) AS num , CASE WHEN ( SELECT COUNT(ID) FROM Laboratory WHERE PLT < 100 ) - ( SELECT COUNT(ID) FROM Laboratory WHERE PLT > 400 ) > 0 THEN 'higher' ELSE 'lowerer' END FROM Laboratory WHERE PLT >= 400 OR PLT <= 100
SELECT DISTINCT T1.ID FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.DATE LIKE '%1984%' AND T1.PLT BETWEEN 100 AND 400 AND strftime('%Y', T2.Birthday) < 50
SELECT CAST(SUM(CASE WHEN T1.SEX = 'F' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday) > 55 AND T2.PT >= 14
SELECT DISTINCT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.`First Date` > 1992 AND T2.PT < 14
SELECT COUNT(T1.ID) FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.`Examination Date` > '1997-01-01' AND T2.APTT < 45
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.APTT > 45 AND T2.Thrombosis = 0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.WBC BETWEEN 3.5 AND 9 AND (T2.FG <= 150 OR T2.FG >= 450)
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday > '1980-01-01' AND T2.FG BETWEEN 150 AND 450
SELECT DISTINCT T2.Disagnosis FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.U-PRO >= 30
SELECT T1.ID FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = 'SLE' AND T1.U-PRO < 30 AND T1.U-PRO != 0
SELECT COUNT(ID) FROM Laboratory WHERE IGG >= 2000
SELECT COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Symptoms IS NOT NULL AND T1.IGG > 900 AND T1.IGG < 2000
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.IGA BETWEEN 80 AND 500 ORDER BY T1.IGA DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGA BETWEEN 80 AND 500 AND T1.`First Date` LIKE '1990%'
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.IGM <= 40 OR T1.IGM >= 400 GROUP BY T2.Diagnosis ORDER BY COUNT(T2.Diagnosis) DESC LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRP = '+' AND T1.Description IS NULL
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE >= 1.5 AND (STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday)) < 70
SELECT COUNT(DISTINCT T1.ID) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.KCT = '+' AND T1.RA IN ('-', '+')
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.RA IN ('-', '+') AND STRFTIME('%Y', T2.Birthday) > 1985
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RF < 20 AND STRFTIME('%Y', CURRENT_TIMESTAMP) - STRFTIME('%Y', T1.Birthday) > 60
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.RF < 20 AND T2.Thrombosis = 0
SELECT COUNT(DISTINCT T1.ID) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`ANA Pattern` = 'P' AND T1.C3 > 35
SELECT T1.ID FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.aCL IgA > 29 AND T2.aCL IgA < 52 ORDER BY T2.aCL IgA DESC LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Description = 'Have blood clots in veins' AND T2.C4 > 10
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Admission = '+' AND T2.RNP = 'RNP'
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RNP NOT IN ('-', '+') ORDER BY T1.Birthday DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T2.ID = T3.ID WHERE T2.SM IN ('-', '+-') AND T3.Thrombosis = 0
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SM NOT IN ('negative', '0') ORDER BY T1.Birthday DESC LIMIT 3
SELECT T2.ID FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`Examination Date` > '1997-01-01' AND T1.SC170 IN ('negative', '0')
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SC170 IN ('Negative', '0') AND T1.SEX = 'F' AND (T2.Symptoms IS NULL OR T2.Symptoms = '')
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SSA IN ('-', '+') AND STRFTIME('%Y', T1.`First Date`) < 2000
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.SSA NOT IN ('negative', '0') ORDER BY T1.`First Date` LIMIT 1
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.SSB IN ('-', '+-') AND T3.Diagnosis = 'SLE'
SELECT COUNT(DISTINCT T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Symptoms IS NOT NULL AND T1.SSB IN ('negative', '0')
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.CENTROMEA IN ('-', '+') AND T2.SSB IN ('-', '+')
SELECT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.DNA >= 8
SELECT COUNT(DISTINCT T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.DNA < 8 AND T2.Description IS NULL
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG BETWEEN 900 AND 2000 AND T1.Admission = '+'
SELECT CAST(SUM(CASE WHEN T2.Disagnosis = 'SLE' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.GOT >= 60
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT < 60 AND T1.SEX = 'M'
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT >= 60
SELECT T1.Birthday FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GPT < 60 ORDER BY T2.GPT DESC LIMIT 3
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GOT < 60 AND T1.SEX = 'M'
SELECT MIN(T1.First Date) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH < 500
SELECT T2.`Date` FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH >= 500 ORDER BY T1.`First Date` DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALPHABATASE > 300 AND T1.Admission = '+'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.ALPHPHATASE < 300 AND T1.Admission = '-'
SELECT DISTINCT T2.Diagnosis FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.TP < 6.0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Disagnosed = 'SJS' AND T2.TP BETWEEN 6.0 AND 8.5
SELECT T3.`Examination Date` FROM ( SELECT T2.`Examination Date` FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.ALB BETWEEN 3.5 AND 5.5 GROUP BY T2.`Examination Date` ORDER BY COUNT(T1.ALB) DESC LIMIT 1 ) AS T3
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.ALB > 3.5 AND T2.ALB < 5.5 AND T2.TP BETWEEN 6.0 AND 8.5
SELECT T1.aCL IgG, T1.aCL IgM, T1.aCL IgA FROM Examination AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T2.ID = T3.ID WHERE T2.SEX = 'F' AND T3.UA > 6.50 ORDER BY T3.UA DESC LIMIT 1
SELECT T1.ANA FROM Examination AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE < 1.5 ORDER BY T1.ANA DESC LIMIT 1
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.CRE < 1.5 AND T3.aCL IgA = ( SELECT MAX(aCL IgA) FROM Examination )
SELECT COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.`ANA Pattern` LIKE '%P%' AND T1.T-BIL > 2.0
SELECT T2.ANA FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.T-BIL < 2.0 AND T2.ANANA IS NOT NULL ORDER BY T1.T-BIL DESC LIMIT 1
SELECT COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.T-CHO >= 250 AND T2.KCT = '-'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID INNER JOIN Laboratory AS T3 ON T1.ID = T3.ID WHERE T2.`ANA Pattern` = 'P' AND T3.T-CHO < 250
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T1.ID = T3.ID WHERE T2.TG < 200 AND T3.Symptoms IS NOT NULL
SELECT T2.Disagnation FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.TG < 200 AND T1.TG IS NOT NULL ORDER BY T1.TG DESC LIMIT 1
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T2.ID = T3.ID WHERE T3.Thrombosis = 0 AND T2.CPK < 250
SELECT COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T1.CPK < 250 AND (T2.KCT = '+' OR T2.RVVT = '+' OR T2.LAC = '+')
SELECT MIN(T1.Birthday) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU > 180
SELECT COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T2.ID = T3.ID WHERE T1.GLU < 180 AND T3.Thrombosis = 0
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.WBC BETWEEN 3.5 AND 9.0 AND T1.Admission = '+'
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Disagnosis = 'SLE' AND T2.WBC BETWEEN 3.5 AND 9.0
SELECT T1.ID FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.RBC > 3.5 OR T2.RBC < 6.0 AND T1.Admission = '-'
SELECT COUNT(T1.ID) FROM Laboratory AS T1 INNER JOIN Examination AS T2 ON T1.ID = T2.ID WHERE T2.Disagnosis IS NOT NULL AND T1.PLT BETWEEN 100 AND 400
SELECT CASE WHEN T1.PLCT > 100 AND T1.PLCT < 400 THEN 'Normal' ELSE 'NotNormal' END ASYN FROM Laboratory AS T1 INNER JOIN Patient AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T2.ID = T3.ID WHERE T2.Disagnosis = 'MCTD'
SELECT AVG(T2.PT) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T1.SEX = 'M' AND T2.PT < 14
SELECT COUNT(T1.ID) FROM Patient AS T1 INNER JOIN Laboratory AS T2 ON T1.ID = T2.ID INNER JOIN Examination AS T3 ON T2.ID = T3.ID WHERE T2.PT < 14 AND T3.Thrombosis = 2 OR T3.Thrombosis = 1
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Angela' AND T1.last_name = 'Sanders'
SELECT COUNT(*) FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.zip WHERE T1.college = 'Engineering'
SELECT T2.first_name, T2.last_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.zip WHERE T1.department = 'Art and Design'
SELECT COUNT(T1.student_id) FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Women''s Soccer'
SELECT T1.phone FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Women''s Soccer'
SELECT COUNT(T1.t_shirt_size) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.event_id = T3.event_id WHERE T3.event_name = 'Women''s Soccer' AND T1.t_shirt_size = 'Medium'
SELECT T2.event_name FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T2.event_name ORDER BY COUNT(T1.link_to_event) DESC LIMIT 1
SELECT T1.college FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.zip WHERE T2.position = 'Vice President'
SELECT T2.event_name FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id INNER JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = 'Maya' AND T3.last_name = 'Mclean'
SELECT COUNT(T2.event_id) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison' AND STRFTIME('%Y', T2.event_date) = '2019'
SELECT COUNT(T1.event_id) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.event_id WHERE T1.type = 'Meeting' GROUP BY T2.event_id HAVING COUNT(T2.event_id) > 10
SELECT T1.event_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.COUNT(event_id) > 20 AND T1.status != ' fundraiser'
SELECT CAST(COUNT(event_id) AS REAL) / COUNT(DISTINCT event_name) FROM event WHERE type = 'Meeting' AND STRFTIME('%Y', event_date) = '2020'
SELECT T1.item FROM item AS T1 INNER JOIN expense AS T2 ON T1.id = T2.link_to_member WHERE T2.expense_description = 'Club Events' ORDER BY T2.cost DESC LIMIT 1
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Environmental Engineering'
SELECT T3.first_name, T3.last_name FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.event_id INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.event_name = 'Laugh Out Loud'
SELECT T2.last_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = 'Law and Constitutional Studies'
SELECT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Sherri' AND T1.last_name = 'Ramsey'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.department WHERE T1.first_name = 'Tyler' AND T1.last_name = 'Hewitt'
SELECT T1.amount FROM budget AS T1 INNER JOIN member AS T2 ON T1.link_to_event = T2.member_id WHERE T2.position = 'Vice President'
SELECT T1.amount FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'September Meeting' AND T1.category = 'Food' AND T1.event_status = '9'
SELECT T2.city, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'President'
SELECT T2.first_name, T2.last_name FROM zip_code AS T1 INNER JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = 'Illinois'
SELECT T2 spent FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.event_name = 'September Meeting' AND T2.category = 'Advertisement'
SELECT T1.department FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = 'Pierce' AND T2.last_name = 'Guidi'
SELECT SUM(T1.amount) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'October Speaker'
SELECT DISTINCT T2.approved FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_budget WHERE T1.event_name = 'October Meeting' AND T1.event_date = '2019-10-08'
SELECT SUM(T1.cost) / COUNT(T1.expense_id) FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Elijah' AND T2.last_name = 'Allen' AND SUBSTR(T1.expense_date, 1, 7) IN ('2013-09', '2013-10')
SELECT SUM(CASE WHEN STRFTIME('%Y', T2.event_date) = '2019' THEN T1.amount ELSE 0 END) - SUM(CASE WHEN STRFTIME('%Y', T2.event_date) = '2020' THEN T1.amount ELSE 0 END) AS diff FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.status = 'Student_Club'
SELECT location FROM event WHERE event_name = 'Spring Budget Review'
SELECT T2.cost FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Posters' AND T1.event_date = '2019-09-04'
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT T1.notes FROM income AS T1 INNER JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T1.date_received = '2019-09-14' AND T1.source = 'Fundraising'
SELECT COUNT(major_id) FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT phone FROM member WHERE first_name = 'Carlo' AND last_name = 'Jacobs'
SELECT T2.county FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Adela' AND T1.last_name = 'O''Gallagher'
SELECT COUNT(T1.budget_id) FROM budget AS T1 INNER JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.event_name = 'November Meeting' AND T1.remaning < 0
SELECT SUM(T1.amount) FROM budget AS T1 INNER JOIN event AS T2 ON T1.event_status = T2.event_status WHERE T2.event_name = 'September Speaker'
SELECT T1.event_status FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id INNER JOIN expense AS T3 ON T1.budget_id = T3.link_to_budget WHERE T3.expense_description = 'Post Cards, Posters' AND T2.event_date = '2019-08-20'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Brent' AND T1.last_name = 'Thomason'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T2.major_name = 'Business' AND T1.t_shirt_size = 'Medium'
SELECT T2.type FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'CHRISTOF' AND T1.last_name = 'NIELSON'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'Vice President'
SELECT T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT T2.department FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'President'
SELECT T2.date_received FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Connor' AND T1.last_name = 'Hilton' AND T2.source = 'Dues'
SELECT T2.first_name, T2.last_name FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.source = 'Dues' ORDER BY T1.date_received LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.event_name = 'Yearly Kickoff' THEN T1.amount END) AS REAL) / SUM(CASE WHEN T2.event_name = 'October Meeting' THEN T1.amount END) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Advertisement'
SELECT SUM(CASE WHEN T1.category = 'Parking' THEN T1.amount ELSE 0 END) / COUNT(T1.category) AS per FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'November Speaker'
SELECT SUM(T2.cost) FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_member WHERE T2.expense_description = 'Pizza'
SELECT COUNT(*) FROM zip_code WHERE state = 'Virginia' AND county = 'Orange County'
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT T2.city, T2.county, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Amy' AND T1.last_name = 'Firth'
SELECT T2.expense_description FROM budget AS T1 INNER JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget ORDER BY T1.remaining LIMIT 1
SELECT T2.first_name, T2.last_name FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'October Meeting'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.department GROUP BY T2.college ORDER BY COUNT(T1.zip) DESC LIMIT 1
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.department WHERE T1.phone = '809-555-3360'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id ORDER BY T1.amount DESC LIMIT 1
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.position = 'Vice President'
SELECT COUNT(T2.member_id) FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'Women''s Soccer'
SELECT T2.date_received FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Casey' AND T1.last_name = 'Mason'
SELECT COUNT(T1.zip) FROM zip_code AS T1 INNER JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = 'MD'
SELECT COUNT(T2.event_id) FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T1.phone = '954-555-6240'
SELECT T2.first_name, T2.last_name FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.zip WHERE T1.department = 'School of Applied Sciences, Technology and Education'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.status = 'Closed' ORDER BY T1.sped / T1.amount DESC LIMIT 1
SELECT COUNT(*) FROM member WHERE position = 'President'
SELECT MAX(sped) FROM budget
SELECT COUNT(event_id) FROM event WHERE STRFTIME('%Y', event_date) = '2020' AND type = 'Meeting'
SELECT SUM(sped) FROM budget WHERE category = 'Food'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.first_name, T1.last_name HAVING COUNT(T1.first_name) > 7
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id INNER JOIN attendance AS T3 ON T1.member_id = T3.link_to_member INNER JOIN event AS T4 ON T3.event_id = T4.event_id WHERE T2.major_name = 'Interior Design' AND T4.event_name = 'Community Theater'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.city = 'Georgetown' AND T2.state = 'South Carolina'
SELECT SUM(T2.amount) FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = 'Grant' AND T1.last_name = 'Gilmour'
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT SUM(T1.cost) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Yearly Kickoff'
SELECT T3.first_name, T3.last_name FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.event_status INNER JOIN member AS T3 ON T2.link_to_event = T3.member_id WHERE T1.event_name = 'Yearly Kickoff'
SELECT T1.first_name, T1.last_name, T2.source FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.amount DESC LIMIT 1
SELECT T2.event_name FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_member = T2.event_id ORDER BY T1.cost LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.event_name = 'Yearly Kickoff' THEN T1.cost ELSE 0 END) AS REAL) * 100 / SUM(T1.cost) FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT CAST(SUM(CASE WHEN major_name = 'Finance' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN major_name = 'Physics' THEN 1 ELSE 0 END) FROM major
SELECT source, amount FROM income WHERE date_received LIKE '2019-09%' ORDER BY amount DESC LIMIT 1
SELECT first_name, last_name, email FROM member WHERE position = 'Secretary'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T2.major_name = 'Physics Teaching'
SELECT COUNT(T1.member_id) FROM attendance AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Community Theater' AND STRFTIME('%Y', T2.event_date) = '2019'
SELECT COUNT(T1.event_id), T2.major_name FROM attendance AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id INNER JOIN major AS T3 ON T2.zip = T3.department_id WHERE T2.first_name = 'Luisa' AND T2.last_name = 'Guidi'
SELECT AVG(T2.food) FROM budget AS T1 INNER JOIN event AS T2 ON T1.`link_to_event` = T2.event_id WHERE T1.category = 'Food' AND T1.event_status = 'Closed'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.`link_to_event` = T2.event_id WHERE T1.category = 'Advertisement' ORDER BY T1.sped DESC LIMIT 1
SELECT T2.status FROM event AS T1 INNER JOIN attendance AS T2 ON T1.event_id = T2.link_to_event INNER JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = 'Maya' AND T3.last_name = 'Mclean' AND T1.event_name = 'Women''s Soccer'
SELECT CAST(SUM(CASE WHEN T1.type = 'Community Service' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.event_id) FROM event AS T1 INNER JOIN student_club AS T2 ON T2.zip = T1.zip_code WHERE T2.event_date BETWEEN '2019-01-01' AND '2019-12-31'
SELECT T3.cost FROM event AS T1 INNER JOIN budget AS T2 ON T1.event_id = T2.event_id INNER JOIN expense AS T3 ON T3.link_to_budget = T2.budget_id WHERE T1.event_name = 'September Speaker' AND T3.expense_description = 'Posters'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY COUNT(t_shirt_size) DESC LIMIT 1
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.status = 'Closed' AND T1.replacement < 0 ORDER BY T1.replacement LIMIT 1
SELECT T1.type, SUM(T1.cost) FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id INNER JOIN event AS T3 ON T2.event_id = T3.event_id WHERE T3.event_name = 'October Meeting'
SELECT SUM(T1.amount), T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'April Speaker' GROUP BY T1.category ORDER BY SUM(T1.amount)
SELECT budget_id FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT budget_id, amount FROM budget WHERE category = 'Advertisement' ORDER BY amount DESC LIMIT 3
SELECT SUM(cost) FROM expense WHERE expense_description = 'Parking'
SELECT SUM(cost) FROM expense WHERE expense_date = '2019-08-20'
SELECT T1.first_name, T1.last_name, T2.cost FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.member_id = 'rec4BLdZHS2Blfp4v'
SELECT T3.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member INNER JOIN cost AS T3 ON T2.cost = T3.cost WHERE T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT T2.expense_description FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.t_shirt_size = 'X-Large'
SELECT T2.zip_code FROM expense AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.cost < 50
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.department WHERE T1.first_name = 'Phillip' AND T1.last_name = 'Cullen'
SELECT T2.position FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Business'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T1.t_shirt_size = 'Medium' AND T2.major_name = 'Business'
SELECT DISTINCT T2.type FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.remaining > 30
SELECT DISTINCT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = 'MU 215'
SELECT DISTINCT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T2.event_id = T1.link_to_event WHERE T2.event_date = '2020-03-24T12:00:00'
SELECT T2.major_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'Vice President'
SELECT CAST(SUM(CASE WHEN T2.position = 'Member' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.zip) FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Business'
SELECT DISTINCT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = 'MU 215'
SELECT COUNT(*) FROM income WHERE amount = 50
SELECT COUNT(*) FROM member WHERE t_shirt_size = 'X-Large' AND position = 'Member'
SELECT COUNT(major_id) FROM major WHERE college = 'Agriculture and Applied Sciences' AND department = 'School of Applied Sciences, Technology and Education'
SELECT T1.last_name, T2.department, T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Environmental Engineering'
SELECT T1.category FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = 'MU 215' AND T2.type = 'Guest Speaker' AND T1 spent = 0
SELECT T2.city, T2.state FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code INNER JOIN major AS T3 ON T3.major_id = T1.link_to_major WHERE T3.department = 'Electrical and Computer Engineering Department' AND T1.position = 'Member'
SELECT T2.event_name FROM member AS T1 INNER JOIN event AS T2 ON T1.zip = T2.location WHERE T2.type = 'Social' AND T1.position = 'Vice President' AND T2.status = 'P' AND T2.location = '900 E. Washington St.'
SELECT T1.last_name, T1.position FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.expense_description = 'Pizza' AND T2.expense_date = '2019-09-10'
SELECT T1.last_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_member INNER JOIN event AS T3 ON T2.event_id = T3.event_id WHERE T3.event_name = 'Women''s Soccer' AND T1.position = 'Member'
SELECT CAST(SUM(CASE WHEN T1.amount = 50 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.amount) FROM income AS T1 INNER JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = 'Medium' AND T2.position = 'Member'
SELECT DISTINCT T1.zip_code FROM zip_code AS T1 INNER JOIN event AS T2 ON T1.zip_code = T2.event_id WHERE T1.type = 'PO Box'
SELECT DISTINCT T1.zip_code FROM zip_code AS T1 INNER JOIN event AS T2 ON T1.zip_code = T2.event_id WHERE T2.type = 'PO Box' AND T1.state = 'PR' AND T1.county = 'San Juan Municipio'
SELECT event_name FROM event WHERE type = 'Game' AND status = 'Closed' AND event_date BETWEEN '2019-03-15' AND '2020-03-20'
SELECT T2.event_name FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.cost > 50
SELECT T1.first_name, T1.last_name, T2.event_name FROM member AS T1 INNER JOIN attendance AS T2 ON T1.member_id = T2.link_to_event INNER JOIN event AS T3 ON T2.event_id = T3.event_id INNER JOIN expense AS T4 ON T1.member_id = T4.link_to_member WHERE T4.approval = 'true' AND T4.expense_date BETWEEN '2019-01-10' AND '2019-11-19'
SELECT T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = 'Katy' AND T2.major_name = 'rec1N0upiVLy5esTO'
SELECT T2.phone FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.college = 'University of Agriculture and Applied Sciences' AND T1.major_name = 'Business'
SELECT T1.email FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost > 20 AND T2.approved BETWEEN '2019-09-10' AND '2019-11-19'
SELECT COUNT(T1.member_id) FROM member AS T1 INNER JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Education' AND T1.position = 'Member' AND T2.college = 'University of Education & Human Services'
SELECT CAST(SUM(CASE WHEN remaining < 0 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(event_id) FROM budget
SELECT event_id, location, status FROM event WHERE event_date LIKE '2019-11%' OR event_date LIKE '2019-12%' OR event_date LIKE '2019-13%'
SELECT T1.expense_description FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.amount > 50
SELECT first_name, last_name FROM member WHERE t_shirt_size = 'X-Large'
SELECT CAST(SUM(CASE WHEN type = 'PO Box' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(zip_code) FROM zip_code
SELECT T2.event_name, T2.location FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.replacement > 0
SELECT T2.event_name, T2.event_date FROM expense AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.cost BETWEEN 50 AND 100 AND T1.expense_description = 'Pizza'
SELECT T1.first_name, T1.last_name, T3.major_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member INNER JOIN major AS T3 ON T1.zip = T3.major_id WHERE T2.cost > 100
SELECT T2.city, T2.county FROM income AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code GROUP BY T2.city, T2.county HAVING COUNT(T1.income_id) > 40
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T2.user_id HAVING COUNT(T2.event_id) > 1 ORDER BY SUM(T2.cost) DESC LIMIT 1
SELECT AVG(T2.cost) FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.position != 'Member'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id INNER JOIN expense AS T3 ON T1.budget_id = T3.budget_id WHERE T1.category = 'Parking' AND T3.cost < ( SELECT AVG(T3.cost) FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id INNER JOIN expense AS T3 ON T1.budget_id = T3.budget_id WHERE T1.category = 'Parking' )
SELECT CAST(SUM(T2.cost) AS REAL) * 100 / COUNT(T1.event_id) FROM event AS T1 INNER JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.type = 'Meeting'
SELECT T1.expense_description FROM expense AS T1 INNER JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Water, chips, cookies' ORDER BY T1.cost DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.cost DESC LIMIT 5
SELECT T1.first_name, T1.last_name, T1.phone FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost > ( SELECT AVG(cost) FROM expense )
SELECT (CAST(SUM(CASE WHEN T1.state = 'New Jersey' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T1.state = 'Vermont' THEN 1 ELSE 0 END)) - (CAST(SUM(CASE WHEN T1.state = 'New Jersey' THEN 1 ELSE 0 END) AS REAL) * 100 / SUM(CASE WHEN T1.state = 'Vermont' THEN 1 ELSE 0 END)) FROM zip_code AS T1 INNER JOIN member AS T2 ON T1.zip_code = T2.zip
SELECT T2.department_name FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Gerke'
SELECT T1.first_name, T1.last_name, T2.cost FROM member AS T1 INNER JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.expense_description = 'Water, Veggie tray, supplies'
SELECT T2.last_name, T2.phone FROM major AS T1 INNER JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Elementary Education'
SELECT T1.category, T1.amount FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Food'
SELECT T1.first_name, T1.last_name, T2.amount FROM member AS T1 INNER JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.date_received = '9/9/19'
SELECT T1.category FROM budget AS T1 INNER JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT T1.first_name, T1.last_name, T2.college FROM member AS T1 INNER JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.position = 'Secretary'
SELECT SUM(T1.amount), T2.event_name FROM budget AS T1 INNER JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Speaker Gifts'
SELECT T2.city FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = 'Garrett' AND T1.last_name = 'Gerke'
SELECT T1.first_name, T1.last_name, T1.position FROM member AS T1 INNER JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.city = 'Lincolnton' AND T2.state = 'North Carolina' AND T2.zip_code = 28092
SELECT COUNT(T1.GasStationID) FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = 'CZE' AND T2.ProductID IN ( SELECT ProductID FROM products WHERE Description = 'Premium gas' )
SELECT CAST(SUM(CASE WHEN Currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) / SUM(CASE WHEN Currency = 'CZK' THEN 1 ELSE 0 END) FROM customers
SELECT T2.Description FROM yearmonth AS T1 INNER JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T2.Description = 'LAM' AND STRFTIME('%Y', T1.`Date`) = '2012' ORDER BY T1.Consumption ASC LIMIT 1
SELECT AVG(T2.Consumption) / 12 FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = 'M' AND STRFTIME('%Y', T2.`Date`) = '2013'
SELECT T2.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = 'CZK' AND T1.Date BETWEEN '2011-01' AND '2011-12' ORDER BY T1.Consumption DESC LIMIT 1
SELECT COUNT(CustomerID) FROM yearmonth WHERE Segment = 'KAM' AND Date < 201212 AND Consumption < 300000
SELECT SUM(CASE WHEN T1.Currency = 'ZCK' THEN T2.Consumption END) - SUM(CASE WHEN T1.Currency = 'EUR' THEN T2.Consumption END) AS diff FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.`Date` LIKE '2012%'
SELECT T2.Date FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'EUR' GROUP BY T2.Date ORDER BY SUM(T2.Consumption) DESC LIMIT 1
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.Segment ORDER BY SUM(T2.Consumption) ASC LIMIT 1
SELECT STRFTIME('%Y', T1.Date) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = 'CZK' ORDER BY T1.Consumption DESC LIMIT 1
SELECT T1.`Month` FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.`Date` LIKE '2013%' AND T2.Segment = 'M' ORDER BY T1.Consumption DESC LIMIT 4
SELECT (CAST(SUM(T2.Total) AS REAL) / SUM(T2.num)) - (CAST(SUM(T3.Total) AS REAL) / SUM(T3.num)) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN customers AS T3 ON T3.CustomerID = T2.CustomerID WHERE (T1.Segment = 'M' AND T2.Date BETWEEN '2013-01' AND '2013-12') OR (T1.Segment = 'L' AND T2.Date BETWEEN '2013-01' AND '2013-12')
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment IN ('SME', 'LAM', 'KAM') AND T1.Currency = 'EUR' AND T2.Date LIKE '2012%' OR T2.Date LIKE '2013%' ORDER BY (T2.Increaseor / T2.Consumption) * 100 DESC LIMIT 1
SELECT SUM(T2.Consumption) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date BETWEEN '2013-08-01' AND '2013-11-30' AND T1.CustomerID = 6
SELECT SUM(CASE WHEN Country = 'CZE' THEN 1 ELSE 0 END) - SUM(CASE WHEN Country = 'SVK' THEN 1 ELSE 0 END) FROM gasstations
SELECT ( SELECT MAX(Consumption) FROM yearmonth WHERE CustomerID = 7 AND Date LIKE '2013-04%' ) - ( SELECT MAX(Consumption) FROM yearmonth WHERE CustomerID = 5 AND Date LIKE '2013-04%' ) AS result FROM yearmonth WHERE CustomerID = 7 OR CustomerID = 5 AND Date LIKE '2013-04%'
SELECT SUM(CASE WHEN T2.Currency = 'CZK' THEN T1.Amount ELSE 0 END) - SUM(CASE WHEN T2.Currency = 'EUR' THEN T1.Amount ELSE 0 END) FROM transactions_1k AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.CustomerID IN ( SELECT CustomerID FROM products WHERE Description LIKE '%SME%' )
SELECT T1.CustomerID FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'Euro' AND T2.Date LIKE '2013-10%' ORDER BY T2.Consumption DESC LIMIT 1
SELECT T2.CustomerID, T1.Description FROM products AS T1 INNER JOIN `transactions_1k` AS T2 ON T1.ProductID = T2.ProductID WHERE T2.CustomerID IN ( SELECT CustomerID FROM customers WHERE Segment = 'KAM' ) ORDER BY T2.Amount DESC LIMIT 1
SELECT SUM(T2.Consumption) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.`Date` = '2013-05' AND T1.Segment = 'KAM'
SELECT CAST(SUM(CASE WHEN T2.`Consumption` > 46.73 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.`Consumption`) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.CustomerID = 'LAM'
SELECT Country, SUM(ValueForMoney) FROM gasstations GROUP BY Country ORDER BY SUM(ValueForMoney) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.Currency = 'Euro' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T2.Currency) FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.CustomerID IN ( SELECT CustomerID FROM customers WHERE Segment = 'KAM' )
SELECT CAST(SUM(CASE WHEN T1.Consumption > 528.3 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE '2012-02%'
SELECT CAST(SUM(CASE WHEN T2.Description = 'Gas station is premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.GasStationID) FROM gasstations AS T1 INNER JOIN products AS T2 ON T1.GasStationID = T2.ProductID WHERE T1.Country = 'Slovakian'
SELECT CustomerID FROM yearmonth WHERE Date LIKE '2013-09%' GROUP BY CustomerID ORDER BY COUNT(CustomerID) DESC LIMIT 1
SELECT T2.Segment FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.`Date` = '2013-09' GROUP BY T2.Segment ORDER BY SUM(T1.Consumption) ASC LIMIT 1
SELECT T2.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE '2012-06%' GROUP BY T2.CustomerID ORDER BY SUM(T1.Consumption) ASC LIMIT 1
SELECT MAX(Consumption) FROM yearmonth WHERE `Date` LIKE '2012%'
SELECT MAX(T2.Consumption) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'euro'
SELECT DISTINCT T1.Description FROM products AS T1 INNER JOIN `transactions_1k` AS T2 ON T1.ProductID = T2.ProductID INNER JOIN yearmonth AS T3 ON T2.CustomerID = T3.CustomerID WHERE T3.Date LIKE '2013-09%'
SELECT T1.Country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID INNER JOIN yearmonth AS T3 ON T2.Date = T3.Date WHERE T3.Date LIKE '2013-06%' LIMIT 4
SELECT DISTINCT T1.ChainID FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Currency = 'Euro'
SELECT DISTINCT T1.Description FROM products AS T1 INNER JOIN `transactions_1k` AS T2 ON T1.ProductID = T2.ProductID WHERE T2.Currency = 'Euro'
SELECT SUM(T2.Price) / COUNT(T2.Price) FROM yearmonth AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE '2012-01%'
SELECT COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'EUR' AND T2.Consumption > 1000
SELECT T1.Description FROM products AS T1 INNER JOIN `transactions_1k` AS T2 ON T1.ProductID = T2.ProductID INNER JOIN gasstations AS T3 ON T2.GasStationID = T3.GasStationID WHERE T3.Country = 'CZE'
SELECT DISTINCT T2.`Time` FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.ChainID = 11
SELECT COUNT(T1.TransactionID) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = 'CZE' AND T1.Price > 1000
SELECT COUNT(T1.TransactionID) FROM transactions_1k AS T1 INNER JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = 'CZE' AND T1.Date > '2012-01-01'
SELECT SUM(T2.Price) / COUNT(T2.GasStationID) FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = 'CZE'
SELECT SUM(T2.Price) / COUNT(T2.TransactionID) FROM customers AS T1 INNER JOIN `transactions_1k` AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = 'Euro'
SELECT T2.CustomerID FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-25' GROUP BY T2.CustomerID ORDER BY COUNT(T1.TransactionID) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = '2012-08-25' ORDER BY T2.Price LIMIT 1
SELECT T1.Currency FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-24' AND T2.Time = '16:25:00'
SELECT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-23 21:20:00'
SELECT COUNT(TransactionID) FROM transactions_1k WHERE Date = '2012-08-26' AND Time < '13:00:00'
SELECT DISTINCT T1.Segment FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date < T2.Consumption ORDER BY T2.Date LIMIT 1
SELECT T1.Country FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-24' AND T2.Time = '12:42:00'
SELECT DISTINCT ProductID FROM transactions_1k WHERE Date = '2012-08-23' AND T1.time = '21:20:00'
SELECT T2.Date, T2.Expenses FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.CustomerID = ( SELECT CustomerID FROM transactions_1k WHERE `Date` = '2012-08-24' ) AND T1.Currency = 'U.S. dollar' AND T2.Date LIKE '2012-01%'
SELECT COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID INNER JOIN gasstations AS T3 ON T2.GasStationID = T3.GasStationID WHERE T2.Date = '2012-08-26' AND T3.Country = 'CZE' AND T2.Time BETWEEN '08:00:00' AND '09:00:00'
SELECT T1.Currency FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE '2013-06%' AND T1.CustomerID = 214582.17
SELECT T1.Country FROM customers AS T1 INNER JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.CardID = 667467
SELECT T2.Country FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012-08-24' AND T1.Consumption = 548.4
SELECT CAST(SUM(CASE WHEN T1.Currency = 'EUR' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = '2012-08-25'
SELECT (T1.consumption_2012 - T1.consumption_2013) / T1.consumption_2012 FROM yearmonth AS T1 INNER JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.`Date` = '2012-08-25' AND T2.Currency = 'U.S. dollar'
SELECT T1.GasStationID FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID GROUP BY T1.GasStationID ORDER BY SUM(T2.Amount) DESC LIMIT 1
SELECT CAST(SUM(CASE WHEN T2.Description = 'Premium' THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(T1.CustomerID) FROM customers AS T1 INNER JOIN products AS T2 ON T1.CustomerID = T2.ProductID WHERE T1.Country = 'SVK'
SELECT T2.amount, T1.ChaneID FROM gasstations AS T1 INNER JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.CustomerID = 38508 AND T2.Date = '2012-01'
SELECT T1.Description FROM products AS T1 INNER JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID ORDER BY T2.Price DESC LIMIT 5
SELECT T1.CustomerID, SUM(T2.Price * T2.amount) / COUNT(T2.ProductID) FROM customers AS T1 INNER JOIN `transactions_1k` AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.CustomerID ORDER BY SUM(T2.amount) DESC LIMIT 1
SELECT T2.Country FROM products AS T1 INNER JOIN `transactions_1k` AS T2 ON T1.ProductID = T2.ProductID WHERE T1.ProductID = 2 GROUP BY T2.Country ORDER BY COUNT(T2.Country) DESC LIMIT 1
SELECT T2.Consumption FROM transactions_1k AS T1 INNER JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.ProductID = 5 AND T2.Date = '2012-08' AND T1.Price / T1.amount > 29.00
