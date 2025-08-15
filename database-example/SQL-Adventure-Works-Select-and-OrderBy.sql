/*
Author: Francisco Gomes da Silva Junior
Date: 14/08/2025, in format Brazil
Location: Recife - PE
Version:1.0
Level exercises: beginner
Content exercises: SELECT / ORDER BY
*/

-- exercise 1: return all names and middle names in table Person.person
select pp.FirstName as 'Primeiro nome', pp.MiddleName as 'Nome do meio'
from Person.Person as pp

-- exercise 2: printing all names distinct in job title
select distinct he.JobTitle -- Using clausule "distinct" for return values uniques
from HumanResources.Employee as he

-- exercise 3: return all products in table "Production.product"
select ppro.Name as 'Nome produto', ppro.ProductNumber as 'Número produto'
from Production.Product as ppro

-- exercise 4: return all products with price bigger value 1000
select *                   
from Production.Product as ppro
where ppro.ListPrice > 1000
/*
--- OTHER SOLUTION ---

select ppro.ListPrice as 'Preço do produto' <- LINE MODIFIED
from Production.Product as ppro
where ppro.ListPrice > 1000

*/
---------------------------------------------------------------------

-- exercise 05: return all products with color have value "Black"
select *
from Production.Product as ppro
where ppro.Color = 'Black'

-- exercise 06: return values of columns CustomerID and PersonID in table Sales.customer
select sc.CustomerID as 'ID Cliente', sc.PersonID as 'ID pessoa'
from Sales.Customer as sc

-- exercise 07: return values of columns AddressLine1, City and PostalCode of table Person.Address
select pa.AddressLine1 as 'Endereco principal', pa.City as 'Cidade', pa.PostalCode as 'Codigo postal'
from Person.Address as pa

-- exercise 08: return all employee if signed contract in year 2009
select *
from HumanResources.Employee as he
where YEAR(he.HireDate) = 2009 

-- exercise 09: return all departments in table HumanResources.Department
select *
from HumanResources.Department as hrd

-- exercise 10: return values in columns "Name", "StartTime" and "EndTime" in table HumanResources.Shift
select hrs.Name as 'Nome', hrs.StartTime as 'Inicio', hrs.EndTime as 'Fim'
from HumanResources.Shift as hrs

-- exercise 11: return all territories sales, values in columns (Name, Group) in table Sales.SalesTerritory
select ssa.Name as 'Nome Territorio', ssa.[Group] as 'Grupo' -- observation: Name Group is key word in SQL, for manipulate column with equal name, use [key]
from Sales.SalesTerritory as ssa

-- exercise 12: return values with contain word "Bike"
select *
from Purchasing.Vendor as pv
where pv.Name LIKE '%Bike%'

-- exercise 13: return values in products of weight is bigger value 500
select *
from Production.Product as pp
where pp.Weight > 500 order by pp.Weight desc

-- exercise 14: return products with value in column "SellStartDate" in year 2012
select *
from Production.Product as pp
where YEAR (pp.SellStartDate) = 2012

-- exercise 15: return all methods with column "name" in table Purchasing.ShipMethod
select ps.Name as 'Nome metodo'
from Purchasing.ShipMethod as ps

-- exercise 16: return all types address in table Person.AddressType
select pa.Name
from Person.AddressType as pa

-- exercise 17: return employee with middlename start letter "s"
select *
from Person.Person as pp
where pp.MiddleName LIKE 's%'

-- exercise 18: return data with freight is value bigger 100
select ppoh.EmployeeID as 'ID venda', ppoh.Freight as 'Valor frete'
from Purchasing.PurchaseOrderHeader as ppoh
where ppoh.Freight > 100
--------- OTHER SOLUTION ---------
--select *  <- [Line modified for return all datas and columns]
--from Purchasing.PurchaseOrderHeader as ppoh
--where ppoh.Freight > 100


-- exercise 19: return products in column DaysToManufacture is equal 0
select *
from Production.Product as ppro
where ppro.DaysToManufacture = 0

-- exercise 20: return values in order decrescent based value column "ListPrice" 
select *
from Production.Product as ppro
order by ppro.ListPrice DESC

-- exercise 21: return first 10 registers in order crescent of column "TotalDue"
select TOP 10 *
from Purchasing.PurchaseOrderHeader as ppoh
order by ppoh.TotalDue DESC

-- exercise 22: return all types coins in table Sales.Currency
select sc.Name as 'Nome moeda', sc.CurrencyCode as 'Codigo moeda'
from Sales.Currency as sc

-- exercise 23: return cities distincts in table Person.Address
select distinct pad.City
from Person.Address as pad

-- exercise 24: casting names and middlenames in format uppercase
select upper (pp.FirstName ) as 'Primeiro nome (maiusculo)', upper (pp.MiddleName) as 'Nome do meio (maiusculo'
from Person.Person as pp
-- Observation: use clausule "upper" for casting values of columns in format upper. use mode: upper [column of table]

-- exercise 25: return data if name product contain word "Mountain"
select *
from Production.Product as pp
where pp.Name like '%Mountain%'

-- exercise 26: return 5 most big value in column "ListPrice"
select top 5 *
from Production.Product as pp
order by pp.ListPrice DESC

-- exercise 27: return products in range values 500 and 1000 of column "ListPrice"
select *
from Production.Product as pp
where pp.ListPrice between 500 and 1000