# Atomicity, Consistency, Isolation, Durability.

to understand ACID you must understand what is a TRANSACTION first:
- A collection of queries.
- one unit of work.
- E.g. Account deposit (SELECT, UPDATE, UPDATE).

## *Life Span*
- BEGIN
- COMMIT
- ROLLBACK

## *Nature of Transactions*
- Usually used to change and modify data
- however, it is normal to have a read only transaction.


## *Atomicity*
- all queries in a transaction must succeed.

## *Isolation*
imaging multiple concurrent queries trying to modify the same data, for example in a booking application.
here's where isolations come into place.

### Read phenomena
refer to issues that can arise when multiple transactions are executing concurrently and reading data that other transactions may be modifying.

- Dirty reads -> reading data that might change because other transaction are running and has not commited.
- non-repeatable read -> similar to a dirty read but the parallel transaction commited the changes, meaning the transaction that is still running might have inconsistent data in different parts of the transaction.
- phantom read -> it happens when a parallel transaction add new records to a table and other parallel transaction where no able to get that new record.
- lost updates -> it happens when parallel transaction try to update the same data but only one of those updates actually modify the data and the other ones are lost. (possible solution -> locking the row?)

### Isolation Levels
helps prevent read phenomenas and define how transactions interact with each other to ensure consistency.

- Read uncommited -> No isolation, any change from the outside is visible to the transaction, committed or not.
- Read committed -> each query is a transaction only sees committed changes by other transactions.
- Repeatable Read -> the transaction will make sure that when a query reads a row, that row will remain unchanged while the transaction is running.
- Snapshot -> Each query in a transaction only sees changes that have been committed up to the start of the transaction. it's like a snapshot version of the database at that moment.
- Serializable -> Transactions are run as if they serialized one after the other.


## *Consistency*
2 types:
- in data -> state of the data. referential integrity
- in reads -> not synchronized

## *Durability*
persistent of committed transactions in non-volatile storage.

### techniques
- WAL - Write ahead log -> writing a lot of data to disk is expensive, that's why DBMSs persist a compressed version of the changes known as WAL
- Asynchronous snapshot
- AOF - append only file
