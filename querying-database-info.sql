SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
  AND table_schema NOT IN ('information_schema', 'pg_catalog');

SELECT *
FROM information_schema.columns
WHERE table_name = 'customers';

SHOW data_directory;

SELECT oid, datname FROM pg_database;

SELECT relname, relkind FROM pg_class  WHERE relkind = 'i';

SELECT * FROM pg_class;