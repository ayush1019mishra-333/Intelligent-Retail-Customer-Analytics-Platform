-- SELECT COUNT(*) AS Customers FROM customers;
-- SELECT COUNT(*) AS Products FROM products;
-- SELECT COUNT(*) AS Invoices FROM invoices;
-- SELECT COUNT(*) AS Transactions FROM transactions;

-- CREATE INDEX idx_customer ON transactions(CustomerID);
-- CREATE INDEX idx_invoice ON transactions(InvoiceNo);
-- CREATE INDEX idx_stockcode ON transactions(StockCode);


-- -- Checking the integrity of the joins

-- SELECT COUNT(*)
-- FROM transactions t
-- LEFT JOIN customers c
-- ON t.CustomerID = c.CustomerID
-- WHERE c.CustomerID IS NULL;

--  SELECT COUNT(*)
-- FROM transactions t
-- LEFT JOIN products p
-- ON t.StockCode = p.StockCode
-- WHERE p.StockCode IS NULL;

-- SELECT COUNT(*)
-- FROM transactions t
-- LEFT JOIN invoices i
-- ON t.InvoiceNo = i.InvoiceNo
-- WHERE i.InvoiceNo IS NULL;

