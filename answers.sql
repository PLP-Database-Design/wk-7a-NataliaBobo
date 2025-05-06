-- Customers
CREATE TABLE customers(
    customerID INT PRIMARY KEY,
    customerName VARCHAR(100),
    phoneNumber VARCHAR(100)
);

-- Orders
CREATE TABLE orders(
    orderID INT PRIMARY KEY,
    customerID INT,
    orderDate DATE,
    FOREIGN KEY(customerID) REFERENCES customers(customerID)
);

-- Products
CREATE TABLE products(
    productID INT PRIMARY KEY,
    orderID INT,
    productName VARCHAR(100),
    price DECIMAL(10,2)
    FOREIGN KEY(orderID) REFERENCES orders(orderID)
);

-- Order(2NF)
CREATE TABLE order(
    OrderID INT PRIMARY KEY,
    Product VARCHAR(100),
    Price DECIMAL(10,2),
    Quantity INT
);

-- Customers(2NF)
CREATE TABLE customers(
    CustomerID INT PRIMARY KEY,
    OrderID INT,
    CustomerName VARCHAR(100),
    FOREIGN KEY(OrderID) REFERENCES orders(OrderID)
);

-- Products(2NF)
CREATE TABLE products(
    ProductID INT PRIMARY KEY,
    OrderID INT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
    FOREIGN KEY(OrderID) REFERENCES orders(OrderID)
);

