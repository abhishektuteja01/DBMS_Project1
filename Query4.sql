--This query retrieves a list of traders along with their watchlist names, including those who may not have any watchlists (using a LEFT JOIN).

SELECT 
    Tr.trader_id,
    Tr.name AS trader_name,
    W.watchlist_name
FROM 
    Trader Tr
LEFT JOIN 
    Watchlist W ON Tr.trader_id = W.trader_id;
