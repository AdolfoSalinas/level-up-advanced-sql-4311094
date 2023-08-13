SELECT 
  employee.firstName,
  employee.lastName, 
  COUNT(sales.salesId) AS totalSales
FROM 
  employee
JOIN 
  sales on employee.employeeId=sales.employeeId
group BY 
  employee.employeeId
ORDER BY  
  totalSales DESC;


SELECT 
    employee.employeeId,
    employee.firstName,
    employee.lastName,
    COUNT(sales.salesId) AS totalSales
FROM 
    employee
JOIN 
    sales ON employee.employeeId = sales.employeeId
GROUP BY 
    employee.employeeId, employee.firstName, employee.lastName;