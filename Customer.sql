-- Cleansed Customer Table
SELECT 
  c.CustomerKey AS [CustomerKey], 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName AS [FirstName], 
  --,[MiddleName]
  c.LastName AS [LastName], 
  C.FirstName + ' ' + LastName AS [Full Name], 
  --[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender], 
  -- ,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.DateFirstPurchase AS [DateFirstPurchase], 
  --,[CommuteDistance]
  g.city AS [Customer City] 
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC
