SELECT pv1.name AS person_name1, pv2.name AS person_name1, pv1.address AS common_address
  FROM person AS pv1 
  JOIN person AS pv2 ON pv1.address = pv2.address AND pv1.id > pv2.id
ORDER BY 1, 2, 3