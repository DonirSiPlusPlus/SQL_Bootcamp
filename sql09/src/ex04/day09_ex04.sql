--drop FUNCTION fnc_persons_female();
CREATE FUNCTION fnc_persons_female()
RETURNS TABLE(id person.id%TYPE,
              name person.name%TYPE,
              age person.age%TYPE,
              gender person.gender%TYPE,
              address person.address%TYPE) AS $$
  SELECT *
  FROM person WHERE gender = 'female';
$$ LANGUAGE SQL;

--drop FUNCTION fnc_persons_male();
CREATE FUNCTION fnc_persons_male()
RETURNS TABLE(id person.id%TYPE,
              name person.name%TYPE,
              age person.age%TYPE,
              gender person.gender%TYPE,
              address person.address%TYPE) AS $$
  SELECT *
  FROM person WHERE gender = 'male';
$$ LANGUAGE SQL;
