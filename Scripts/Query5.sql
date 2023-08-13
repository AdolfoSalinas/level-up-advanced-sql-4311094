select 
  employee.firstName, employee.lastName, sales.salesAmount,model.model
from 
  employee as employee
JOIN 
  sales as sales on employee.employeeId =sales.salesId
JOIN inventory as inventory on sales.inventoryId = inventory.inventoryId
JOIN model as model on inventory.inventoryId = model.modelId
WHERE sales.salesAmount is max
and 
where sales.salesAmount is min
;

SELECT 
    employee.firstName,
    employee.lastName,
    MIN(sales.salesAmount) AS minSalesAmount,
    MAX(sales.salesAmount) AS maxSalesAmount,
    model.model
FROM 
    employee
JOIN 
    sales ON employee.employeeId = sales.employeeId
JOIN 
    inventory ON sales.inventoryId = inventory.inventoryId
JOIN 
    model ON inventory.modelId = model.modelId
WHERE sales.soldDate >= date('now','start of year')
GROUP BY 
    employee.employeeId ;


## list the least and most expensive cars by employee