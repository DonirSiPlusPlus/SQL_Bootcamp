CREATE OR REPLACE VIEW v_generated_dates AS
SELECT generated_date::date
  FROM GENERATE_SERIES (date '2022-01-01',
                        date '2022-01-31', '1day') AS generated_date
  ORDER BY 1;
  
SELECT * FROM v_generated_dates;