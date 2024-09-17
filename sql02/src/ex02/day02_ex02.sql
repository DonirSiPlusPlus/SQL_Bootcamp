SELECT person.name AS person_name,
	   pv.visit_date,
	   pizzeria.name AS pizzeria_name
FROM person
FULL JOIN (SELECT *
	  	   FROM person_visits
	  	   WHERE visit_date 
				 BETWEEN '2022-01-01' AND '2022-01-03') AS pv ON person.id = pv.person_id
FULL JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
ORDER BY 1 NULLS FIRST, 2, 3;