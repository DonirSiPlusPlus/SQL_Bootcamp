SELECT person.*, pizzeria.name, pizzeria.rating
FROM person, pizzeria
ORDER BY person.id, pizzeria.id;