SELECT * from test_data LIMIT 1000;

explain analyze select id from test_data where name = 'User 675890';
explain analyze select * from test_data where name = 'User 7856'; -- slowest query because I did not use any indexed column.
explain analyze select * from test_data where id = 7856; -- this one was fast because I used the column that has an index, but then it has to go to the heap to ge the other info
explain analyze select id from test_data where id = 7856; -- fast and did not go to the heap because all the info was on the index b-tree
explain analyze select name from test_data where id = 7856; -- this one was fast because I used the column that has an index, but then it has to go to the heap to ge the other info
explain analyze select id from test_data where name like '%589%'; -- slow. sequential scan.


CREATE INDEX email_index ON customers(email);
CREATE INDEX email_index ON customers(email) INCLUDE (first_name);
DROP INDEX email_index;


VACUUM (VERBOSE ) customers;
