SELECT order_date,
    	(SELECT name
   	  	FROM person
   	  	WHERE id = person_order.person_id) AS NAME
FROM person_order
INTERSECT
SELECT visit_date,
    	(SELECT name
   	  	FROM person
   	  	WHERE id = person_visits.person_id) AS NAME
FROM person_visits
ORDER BY order_date, NAME DESC;