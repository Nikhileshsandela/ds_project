USE AdventureWorksDW2019

SELECT *
FROM dbo.FactCallCenter

SELECT WageType,
       Shift,
       LevelOneOperators,
       LevelTwoOperators,
       Calls,
       Date
FROM  dbo.factcallcenter

SELECT FCC.WageType,
       FCC.Shift,
       FCC.LevelOneOperators,
       FCC.LevelTwoOperators,
       FCC.Calls,
	   FCC.Date
FROM  dbo.FactCallCenter FCC
WHERE (FCC.Shift = 'PM1' OR FCC.Shift = 'PM2') AND
	  (FCC.LevelOneOperators <= 10) -- Two logical predicates separated by an AND
	   -- Filter representation

SELECT FCC.WageType,
       FCC.Shift,
       FCC.LevelOneOperators,
       FCC.LevelTwoOperators,
       FCC.Calls,
	   FCC.Date
FROM  dbo.FactCallCenter FCC
WHERE (FCC.Shift = 'PM1' OR FCC.Shift = 'PM2') AND
	  (FCC.LevelTwoOperators <= 10)


-- FETURE ENGG.
-- A VIEW or VIRTUAL TABLE isn't part of the DB
SELECT FCC.WageType,
       FCC.Shift,
       FCC.LevelOneOperators,
       FCC.LevelTwoOperators,
       FCC.Calls,
	   FCC.Date,
	   FCC.LevelOneOperators + FCC.LevelTwoOperators AS AllOperators,
	   (FCC.LevelOneOperators + FCC.LevelTwoOperators) -42 AS AllOperators2
FROM  dbo.FactCallCenter FCC
;

