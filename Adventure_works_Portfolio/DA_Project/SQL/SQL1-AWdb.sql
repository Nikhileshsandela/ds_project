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
