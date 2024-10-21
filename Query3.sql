--This query counts the number of transactions for each trader and returns only those traders with more than 2 transactions.

SELECT 
    T.trader_id,
    Tr.name,
    COUNT(T.transaction_id) AS transaction_count
FROM 
    Transactions T
JOIN 
    Trader Tr ON T.trader_id = Tr.trader_id
GROUP BY 
    T.trader_id, Tr.name
HAVING 
    COUNT(T.transaction_id) > 2;
