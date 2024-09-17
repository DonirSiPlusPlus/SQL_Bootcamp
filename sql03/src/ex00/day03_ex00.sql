SELECT menu.pizza_name, menu.price, pizzeria.name, person_visits.visit_date
FROM pizzeria
JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
JOIN menu ON pizzeria.id = menu.pizzeria_id
JOIN person ON person_visits.person_id = person.id
WHERE person.name = 'Kate' AND 
  menu.price BETWEEN 800 AND 1000
ORDER BY 1, 2, 3;