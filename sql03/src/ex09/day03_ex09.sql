insert into person_visits (id, person_id, pizzeria_id, visit_date) 
  values (
    (SELECT MAX(id)+1 FROM person_visits),
    (SELECT name FROM person WHERE name = 'Denis'),
    (SELECT id FROM pizzeria WHERE name = 'Dominos'),
    '2022-02-24');

insert into person_visits (id, person_id, pizzeria_id, visit_date) 
  values (
    (SELECT MAX(id)+1 FROM person_visits),
    (SELECT name FROM person WHERE name = 'Irina'),
    (SELECT id FROM pizzeria WHERE name = 'Dominos'),
    '2022-02-24');