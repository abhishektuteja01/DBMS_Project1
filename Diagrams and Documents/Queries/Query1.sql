--This query retrieves a list of transactions, including trader names and stock names.

SELECT 
    T.transaction_id,
    Tr.name AS trader_name,
    S.stock_name,
    T.quantity,
    T.price
FROM 
    Transactions T
JOIN 
    Trader Tr ON T.trader_id = Tr.trader_id
JOIN 
    Stocks S ON T.stock_symbol = S.stock_symbol;
