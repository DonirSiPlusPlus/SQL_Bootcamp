SELECT person.name AS person_name, pizza_name, pizzeria.name AS pizzeria_name
FROM menu
JOIN person_order ON menu.id = person_order.menu_id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN person ON person_order.person_id = person.id
ORDER BY person_name, pizza_name, pizzeria_name;