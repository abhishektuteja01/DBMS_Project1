--This query retrieves stocks that have a market share percentage greater than 5% and belong to a specific sector (e.g., 'Technology').

SELECT 
    stock_symbol,
    stock_name,
    market_share_percentage
FROM 
    Stocks
WHERE 
    market_share_percentage > 5 AND sector = 'Finance';

