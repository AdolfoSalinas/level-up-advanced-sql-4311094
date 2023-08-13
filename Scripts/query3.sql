SELECT sales.salesId, sales.salesAmount,customer.firstName,customer.lastName
FROM sales as sales
LEFT JOIN customer as customer 
ON sales.customerId = customer.customerId
WHERE sales.salesId ISNULL
and sales.salesId NOTNULL;