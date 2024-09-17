WITH visits AS (SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_visits.person_id = 1 OR person_visits.person_id = 2 ),
  day AS (select dates::date
    FROM GENERATE_SERIES (date
    '2022-01-01', date'2022-01-10', '1day') AS dates)
SELECT day AS missing_day
FROM visits
RIGHT JOIN day ON (visits.visit_date=day.dates)
WHERE visits.visit_date ISNULL;
