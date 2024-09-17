SELECT pv.name
FROM (SELECT * 
	  FROM person
	  WHERE gender = 'male' AND 
		(address = 'Moscow' OR address = 'Samara')) AS pv
		
JOIN person_order ON pv.id = person_order.person_id
JOIN menu ON person_order.menu_id = menu.id
WHERE menu.pizza_name = 'pepperoni pizza' OR menu.pizza_name = 'mushroom pizza'
ORDER BY pv.name DESC
;