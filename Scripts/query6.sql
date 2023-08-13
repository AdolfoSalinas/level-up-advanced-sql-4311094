select 
  employee.firstName,employee.lastName,
  count(salesId) as salesCum
FROM 
  employee
INNER JOIN 
  sales on employee.employeeId =sales.employeeId
GROUP BY employee.firstName,employee.lastName
HAVING count(*) >5 
ORDER by salesCum DESC;
