USE AdventureWorksDW2019

SELECT 

SELECT FCC.WageType,
       FCC.Shift,
       FCC.LevelOneOperators,
       FCC.LevelTwoOperators,
       FCC.Calls,
	   FCC.Date,
	   FCC.LevelOneOperators + FCC.LevelTwoOperators AS AllOperators,
	   CAST(FCC.CALLS AS decimal(6, 2)) / (FCC.LevelOneOperators + FCC.LevelTwoOperators) AS AvgCallsPerOperator
FROM  dbo.FactCallCenter FCC
;