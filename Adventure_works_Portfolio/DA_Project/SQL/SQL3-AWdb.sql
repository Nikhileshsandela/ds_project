USE AdventureWorksDW2019

SELECT FCC.Shift
FROM FactCallCenter FCC
GROUP BY FCC.Shift



SELECT FCC.Shift
FROM FactCallCenter FCC
GROUP BY FCC.Shift
ORDER BY FCC.Shift ASC -- Used for SORTING

-- 1. Pull the data (From)
-- 2. Group it (group by)
-- 3. Select it
-- 4. Order it



SELECT FCC.Shift
	  ,SUM(FCC.LevelOneOperators)
	  ,MIN(FCC.LevelOneOperators)
	  ,MAX(FCC.LevelOneOperators)
FROM FactCallCenter FCC
GROUP BY FCC.Shift
ORDER BY FCC.Shift ASC



SELECT FCC.Shift
	  ,FCC.WageType
	  ,COUNT(FCC.LevelOneOperators) AS RecordCount
	  ,SUM(FCC.LevelOneOperators) AS TotalLevelOneOperators
	  ,MIN(FCC.LevelOneOperators) AS MinLevelOneOperators
	  ,MAX(FCC.LevelOneOperators) AS MaxLevelOneOperators
	  ,AVG(CAST(FCC.LevelOneOperators AS decimal (4,2))) AS AvgLevelOneOperators
FROM FactCallCenter FCC
GROUP BY FCC.Shift, FCC.WageType
ORDER BY FCC.Shift, FCC.WageType ASC