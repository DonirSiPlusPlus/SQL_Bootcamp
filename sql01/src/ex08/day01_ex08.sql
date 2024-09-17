SELECT order_date,
	(SELECT (name || ' (age:' || age || ')')
	 FROM person
	 WHERE id = person_order.person_id) AS person_info
FROM person_order
NATURAL LEFT JOIN person
ORDER BY order_date, person_info;