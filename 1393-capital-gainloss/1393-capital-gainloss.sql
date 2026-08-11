/* Write your T-SQL query statement below */
SELECT stock_name,
SUM(case
WHEN operation ='Buy' then  - price
else price 
END) AS capital_gain_loss
FROM Stocks
Group BY stock_name