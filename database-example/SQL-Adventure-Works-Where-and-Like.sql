/*
Author: Francisco Gomes da Silva Junior
Date: 18/08/2025, in format Brazil
Location: Recife - PE
Version:1.0
Level exercises: beginner
Content exercises: WHERE / LIKE
*/

-- exercise 01: return all job title with finished "Manager"
select *
from HumanResources.Employee as he
where he.JobTitle like '%Manager'

-- exercise 02: return products of "SafetyStockLevel" is smaller value 500
select *
from Production.Product as pp
where pp.SafetyStockLevel < 500
order by pp.SafetyStockLevel desc

-- exercise 03: return products with "MakeFlag" = 1
select *
from Production.Product as pp
where pp.MakeFlag = 1

-- exercise 04: return products with "ReorderPoint" is bigger or equal a value 750
select *
from Production.Product as pp
where pp.ReorderPoint >= 750

-- exercise 05: return address in table City if contain word "Fort"
select *
from Person.Address pa
where pa.City like '%Fort%'

-- exercise 06: return products in table "StandartCost" is value smaller 10
select *
from Production.Product as pp
where pp.StandardCost < 10

-- exercise 07: return all data in orders of month only "december"
select *
from Purchasing.PurchaseOrderHeader as ppoh
where MONTH (ppoh.OrderDate) = 12

-- exercise 08: return products of sales in weight not null
select *
from Production.Product as pp
where pp.WeightUnitMeasureCode is NOT NULL

-- exercise 09: return clients with column "AccountNumber" started with 'AW'
select *
from Purchasing.Vendor as pv
where pv.AccountNumber like 'AW%'

-- exercise 10: return products of 'SellEndDate' is after year 2013
select *
from Production.Product as pp
where YEAR (pp.SellEndDate) > 2013

-- exercise 11: return products of column 'Weight' is value null
select *
from Production.Product as pp
where pp.Weight is null

-- exercise 12: return coins the name not started a letter 'U'
select *
from Sales.Currency sc
where sc.[Name] not like 'u%'

-- exercise 13: return order sales is number pair
select *
from Sales.SalesOrderDetail as ssa
where ssa.SalesOrderID % 2 = 0

-- exercise 14: return product is smaller price
select top 1 *
from Sales.SalesOrderDetail as ssa
order by ssa.UnitPrice ASC

-- exercise 15: return products with price in range 100 and 300 and color is 'Red'
select *
from Production.Product as pp
where pp.Color = 'Red' and (pp.ListPrice between 100 and 300)

