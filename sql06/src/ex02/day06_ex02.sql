SELECT person.name, menu.pizza_name, menu.price, 
    round(menu.price - (menu.price * pd.discount / 100), 2) AS discount_price,
    pizzeria.name
FROM person_order JOIN menu ON menu.id = person_order.menu_id
  JOIN person ON person.id = person_order.person_id
  JOIN person_discounts AS pd ON pd.person_id = person.id AND
    pd.pizzeria_id = menu.pizzeria_id
  JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY 1, 2;