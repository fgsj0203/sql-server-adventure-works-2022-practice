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
