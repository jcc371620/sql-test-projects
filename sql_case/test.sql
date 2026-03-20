1. 查询 2026 年 3 月回收金额大于 200 元的用户。
SELECT user_id, SUM(order_amount) as total 
FROM recycle_orders 
WHERE order_date >= '2026-03-01' AND order_date <= '2026-03-31'
GROUP BY user_id
HAVING total > 200;

2.现在有两张表：inventory (库存表，含 book_id, stock_count) 和 sales (销量表，含 book_id, sell_date)。请查询 2026 年 3 月份销量排名前 5 的书籍 ID 及其当前剩余库存。

SELECT s.book_id, COUNT(s.book_id) as sales_volume, i.stock_count
FROM sales s
JOIN inventory i ON s.book_id = i.book_id
WHERE s.sell_date BETWEEN '2026-03-01' AND '2026-03-31'
GROUP BY s.book_id
ORDER BY sales_volume DESC
LIMIT 5;