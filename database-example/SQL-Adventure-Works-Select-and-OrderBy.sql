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