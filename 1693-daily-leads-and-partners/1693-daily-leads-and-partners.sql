/* Write your T-SQL query statement below */
SELECT date_id , make_name, COUNT(distinct lead_id) as unique_leads, COUNT(distinct partner_id) as unique_partners
FROM DailySales d
GROUP BY d.date_id , d.make_name

