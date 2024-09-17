CREATE OR REPLACE VIEW v_price_with_discount AS
SELECT person.name AS name, menu.pizza_name AS pizza_name, 
       menu.price AS price, round(menu.price * 0.9) AS discount_price
  FROM person_order JOIN person ON person_order.person_id = person.id
    JOIN menu ON menu.id = person_order.menu_id
  ORDER BY 1, 2;

SELECT * FROM v_price_with_discount;