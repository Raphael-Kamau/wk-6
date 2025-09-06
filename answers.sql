-- Question 1: INNER JOIN employees with offices
SELECT E.firstName, E.lastName, E.email, E.officeCode
FROM Employees AS E
INNER JOIN offices AS O ON E.officeCode = O.officeCode; 

-- Question 2: LEFT JOIN products with productlines
SELECT P.productName, P.productVendor, P.productLine 
FROM Products AS P
LEFT JOIN productLines AS PL ON P.productLine = PL.productLine;

-- Question 3: RIGHT JOIN customers with orders (first 10 orders)
SELECT O.orderDate, O.shippedDate, O.status, O.customerNumber
FROM Customers AS C
RIGHT JOIN Orders AS O ON C.customerNumber = O.customerNumber
ORDER BY O.orderDate
LIMIT 10;

