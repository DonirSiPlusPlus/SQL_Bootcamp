SELECT DISTINCT person_visits.visit_date AS missing_date
FROM (SELECT *
	 FROM person_visits
	 WHERE person_id = 1 OR person_id = 2) AS pv
RIGHT JOIN person_visits ON person_visits.visit_date = pv.visit_date
WHERE pv.visit_date ISNULL
ORDER BY 1;
