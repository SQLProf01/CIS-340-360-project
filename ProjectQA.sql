--1 
SELECT CompanyName
  FROM [SalesLT].[Customer]
 WHERE FirstName='James'
   AND MiddleName='D.'
   AND LastName='Kramer'

-- 2 
SELECT CustomerID, OrderQty,Name,ListPrice
  FROM [SalesLT].[SalesOrderHeader] JOIN [SalesLT].[SalesOrderDetail]
          ON SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
                        JOIN [SalesLT].[Product]
          ON SalesOrderDetail.ProductID=Product.ProductID
WHERE CustomerID=29847

--3
SELECT CompanyName,AddressType,AddressLine1
  FROM [SalesLT].[Customer] JOIN [SalesLT].[CustomerAddress]
    ON (Customer.CustomerID=CustomerAddress.CustomerID)
                  JOIN [SalesLT].[Address]
    ON (CustomerAddress.AddressID=Address.AddressID)
 WHERE CompanyName='Modular Cycle Systems'


SELECT * FROM [SalesLT].[SalesOrderHeader]

WHERE [OrderDate] BETWEEN '1/1/2008' AND '1/31/2008'