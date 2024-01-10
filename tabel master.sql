CREATE TABLE transaksi_detail AS 
SELECT 
    orders.Date, 
    customers.CustomerID, 
    customers.FirstName,   
    customers.LastName, 
    customers.CustomerEmail, 
    customers.CustomerState, 
    orders.OrderID, 
    orders.ProdNumber, 
    product.ProdName, 
    product_category.CategoryAbbreviation,
    product_category.CategoryName, 
    product.Price, 
    orders.Quantity, 
    (Quantity * Price) AS Total, 
    ((Price * 10 / 100) * Quantity) AS Profit 
FROM 
    product_category
INNER JOIN 
    product ON product_category.CategoryID = product.Category
INNER JOIN 
    (customers INNER JOIN orders ON customers.CustomerID = orders.CustomerID) ON product.ProdNumber = orders.ProdNumber;
    
select * from transaksi_detail;
