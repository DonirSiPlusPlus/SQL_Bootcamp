--DROP TABLE IF EXISTS person_audit;
--DROP TRIGGER IF EXISTS trg_person_insert_audit ON person;
--DROP FUNCTION IF EXISTS fnc_trg_person_insert_audit();
--DELETE FROM person WHERE id = 10;

CREATE TABLE person_audit (
  created TIMESTAMP with TIME zone NOT NULL DEFAULT current_timestamp,
  type_event char(1) NOT NULL DEFAULT 'I',
  row_id BIGINT NOT NULL,
  name VARCHAR,
  age INTEGER,
  gender VARCHAR,
  address VARCHAR,
  constraint ch_type_event check(type_event IN ('I', 'U', 'D'))
);

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit()
RETURNS TRIGGER AS $STR$
BEGIN
  INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address)
  VALUES(current_timestamp, 'I', NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
  RETURN NULL;
END;
$STR$
LANGUAGE plpgsql;

CREATE TRIGGER trg_person_insert_audit
AFTER INSERT ON person FOR EACH ROW
EXECUTE FUNCTION fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address) VALUES (10, 'Damir', 22, 'male', 'Irkutsk');