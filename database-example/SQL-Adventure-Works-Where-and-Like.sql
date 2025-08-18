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

