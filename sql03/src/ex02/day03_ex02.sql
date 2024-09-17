SELECT menu.pizza_name, menu.price, pizzeria.name
FROM (
	SELECT id AS menu_id
	FROM menu
	EXCEPT
	SELECT menu_id
	FROM person_order
	ORDER BY 1) AS ids

JOIN menu ON ids.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY 1, 2
;