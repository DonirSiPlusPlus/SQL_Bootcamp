SELECT person.name
  FROM person JOIN person_order ON person_order.person_id = person.id
  JOIN menu ON menu.id = person_order.menu_id
  JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
  WHERE person.gender = 'female' AND
  	(menu.pizza_name = 'pepperoni pizza') 
INTERSECT
SELECT person.name
  FROM person JOIN person_order ON person_order.person_id = person.id
  JOIN menu ON menu.id = person_order.menu_id
  JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
  WHERE person.gender = 'female' AND
  	(menu.pizza_name = 'cheese pizza');