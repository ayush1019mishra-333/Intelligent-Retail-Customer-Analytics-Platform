USE retail_customer_analytics;
CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    Country VARCHAR(100)

);
DESCRIBE customers;

CREATE TABLE products (
    StockCode VARCHAR(20) PRIMARY KEY,
    Description VARCHAR(255)

);
DESCRIBE products;

CREATE TABLE invoices (
    InvoiceNo VARCHAR(20) PRIMARY KEY,
    CustomerID INT NULL,
    InvoiceDate DATETIME,
    CONSTRAINT fk_customer
        FOREIGN KEY (CustomerID)
        REFERENCES customers(CustomerID)

);
describe invoices;

CREATE TABLE transactions (
    TransactionID INT PRIMARY KEY,
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalAmount DECIMAL(12,2),
    CONSTRAINT fk_invoice
        FOREIGN KEY (InvoiceNo)
        REFERENCES invoices(InvoiceNo),
    CONSTRAINT fk_product
        FOREIGN KEY (StockCode)
        REFERENCES products(StockCode)

);