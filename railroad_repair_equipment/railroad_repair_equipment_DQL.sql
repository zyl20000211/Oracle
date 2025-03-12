--What was the total revenue of the company?
SELECT SUM(total_revenue) AS total_company_revenue FROM lease;

--Which segment of customers (large or small) spent more?
SELECT 
	r.segment,
	SUM(l.total_revenue) AS total_spent
FROM railroad r
LEFT JOIN (
	SELECT * FROM lease
) l ON r.id = l.railroad_id
GROUP BY r.segment
ORDER BY total_spent DESC;

--Which asset generated the most revenue?
SELECT
	e.equipment_name,
	SUM(l.total_revenue) AS total_revenue
FROM equipment e
LEFT JOIN (
	SELECT * FROM lease
) l ON e.id = l.equipment_id
GROUP BY e.equipment_name
ORDER BY total_revenue DESC;

--Which railroad generated the least revenue?
SELECT
	r.railroad_name,
	SUM(l.total_revenue) AS total_revenue
FROM railroad r
LEFT JOIN (
	SELECT * FROM lease
) l ON r.id = l.railroad_id
GROUP BY r.railroad_name
ORDER BY total_revenue ASC;
