-- Write your PostgreSQL query statement below
select emp1.name
from Employee as emp1
join Employee as emp2
on emp1.id = emp2.managerId
group by
emp1.id, emp1.name
having count(emp2.id)>= 5;
