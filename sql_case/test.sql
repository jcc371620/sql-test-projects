1. 查询 2026 年 3 月回收金额大于 200 元的用户。
SELECT user_id, SUM(order_amount) as total 
FROM recycle_orders 
WHERE order_date >= '2026-03-01' AND order_date <= '2026-03-31'
GROUP BY user_id
HAVING total > 200;