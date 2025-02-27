DO $$
DECLARE
    name varchar := 'unknown';
BEGIN
    RAISE NOTICE '%', name;
    SELECT customers.first_name from customers where id = 1;
END
$$;


CREATE OR REPLACE FUNCTION helloWorld() RETURNS text AS $$
DECLARE
    data text := 'hello world Im here!!';
BEGIN
    RAISE NOTICE '%', data;
    RETURN data;
END;
$$ LANGUAGE plpgsql;

SELECT helloWorld();