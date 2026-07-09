-- ==================
-- Raw RFM Metrics
-- ==================

-- SELECT
-- t.CustomerID,
-- MAX(i.InvoiceDate) AS Last_Purchase_Date,
-- DATEDIFF(
--     (SELECT MAX(InvoiceDate) FROM invoices),
--     MAX(i.InvoiceDate)
-- ) AS Recency,
-- COUNT(DISTINCT t.InvoiceNo) AS Frequency,
-- ROUND(SUM(t.TotalAmount),2) AS Monetary
-- FROM transactions t
-- JOIN invoices i
-- ON t.InvoiceNo=i.InvoiceNo
-- GROUP BY t.CustomerID;

-- =================================
-- Complete RFM Table after NTILE
-- =================================

-- WITH rfm_base AS
-- (
-- SELECT

-- t.CustomerID,

-- DATEDIFF(
--     (SELECT MAX(InvoiceDate) FROM invoices),
--     MAX(i.InvoiceDate)
-- ) AS Recency,

-- COUNT(DISTINCT t.InvoiceNo) AS Frequency,

-- SUM(t.TotalAmount) AS Monetary

-- FROM transactions t

-- JOIN invoices i
-- ON t.InvoiceNo=i.InvoiceNo

-- GROUP BY t.CustomerID
-- ),

-- rfm_scores AS
-- (

-- SELECT

-- CustomerID,

-- Recency,

-- Frequency,

-- Monetary,

-- 6 - NTILE(5) OVER(ORDER BY Recency) AS R_Score,

-- NTILE(5) OVER(ORDER BY Frequency) AS F_Score,

-- NTILE(5) OVER(ORDER BY Monetary) AS M_Score

-- FROM rfm_base

-- )

-- SELECT *

-- FROM rfm_scores;

-- ==========================================================
-- RFM ANALYSIS (Recency, Frequency, Monetary)
-- Objective:
-- Segment customers based on purchasing behavior.
-- ==========================================================

-- WITH rfm_base AS
-- (
--     SELECT
--         t.CustomerID,

--         DATEDIFF(
--             (SELECT MAX(InvoiceDate) FROM invoices),
--             MAX(i.InvoiceDate)
--         ) AS Recency,

--         COUNT(DISTINCT t.InvoiceNo) AS Frequency,

--         ROUND(SUM(t.TotalAmount),2) AS Monetary

--     FROM transactions t
--     JOIN invoices i
--         ON t.InvoiceNo = i.InvoiceNo

--     GROUP BY t.CustomerID
-- ),

-- rfm_scores AS
-- (
--     SELECT
--         CustomerID,
--         Recency,
--         Frequency,
--         Monetary,

--         6 - NTILE(5) OVER (ORDER BY Recency) AS R_Score,

--         NTILE(5) OVER (ORDER BY Frequency) AS F_Score,

--         NTILE(5) OVER (ORDER BY Monetary) AS M_Score

--     FROM rfm_base
-- )

-- SELECT

--     CustomerID,

--     Recency,
--     Frequency,
--     Monetary,

--     R_Score,
--     F_Score,
--     M_Score,

--     CONCAT(R_Score,F_Score,M_Score) AS RFM_Score,

--     CASE

--         WHEN R_Score >= 4
--          AND F_Score >= 4
--          AND M_Score >= 4
--             THEN 'Champions'

--         WHEN R_Score >= 3
--          AND F_Score >= 4
--          AND M_Score >= 3
--             THEN 'Loyal Customers'

--         WHEN R_Score >= 4
--          AND F_Score >= 3
--          AND M_Score >= 2
--             THEN 'Potential Loyalists'

--         WHEN R_Score = 5
--          AND F_Score = 1
--             THEN 'New Customers'

--         WHEN R_Score <= 2
--          AND F_Score >= 3
--             THEN 'At Risk'

--         WHEN R_Score = 1
--          AND F_Score = 1
--             THEN 'Lost Customers'

--         ELSE 'Others'

--     END AS Customer_Segment

-- FROM rfm_scores

-- ORDER BY
--     R_Score DESC,
--     F_Score DESC,
--     M_Score DESC;