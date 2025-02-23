## *Pages*
In the context of databases, a page (also known as a disk page or database page) is a fixed-size unit of data storage used for reading and writing data between memory (RAM) and disk.
Pages divide the rows of a table into fixed-size storage units for efficient data retrieval and management. Instead of handling individual rows one by one, databases work with pages as the fundamental unit of I/O operations.

## *Heap*
data structure that has a collection of pages which means it can be large and expensive to read from, that's why we use indexes.
- Pages are stored in the heap, meaning there is no inherent order to how pages are allocated.
- When a new row is inserted, the DBMS searches for an available page with enough space.
- Pages inside the heap are not organized in a specific order (unlike clustered indexes, which store pages in sorted order).

### Why This Matters
- Searching in a Heap Table is slow if no index exists because the DBMS must scan all pages.
- Indexes (like B-Trees) help by pointing to specific pages, improving lookup efficiency.
- Heap fragmentation can occur over time as rows are deleted and new rows are inserted into random available spaces.

## *Indexes*
- A separate data structure from the heap that has pointers to the heap.
- tells you exactly which page to fetch in the heap instead of scanning every page in the heap.
- they are also stored as pages and cos I/O to pull the entries of the index.
- the smaller the index, the more it can fit in memory the faster the search.
- Popular data structure for index is b-trees.

