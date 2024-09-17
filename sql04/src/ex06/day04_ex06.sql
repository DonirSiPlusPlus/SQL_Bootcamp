CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pizzeria.name AS pizzeria_name
  FROM person JOIN person_visits ON person_visits.person_id = person.id
    JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
	  JOIN menu ON menu.pizzeria_id = pizzeria.id
  WHERE person.name = 'Dmitriy' AND person_visits.visit_date = '2022-01-08' AND
    menu.price < 800;

SELECT * FROM mv_dmitriy_visits_and_eats;
