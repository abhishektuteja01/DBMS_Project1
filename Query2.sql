--This query finds all traders whose initial account balance is greater than the average initial account balance of all traders

SELECT 
    trader_id,
    name,
    initial_account_balance
FROM 
    Trader
WHERE 
    initial_account_balance > (SELECT AVG(initial_account_balance) FROM Trader);
