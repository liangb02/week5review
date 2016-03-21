## SQL Question

Given the below table _Content_, find the distribution for the number of comments on an _originating post_ on '2015-09-07'.
   An _originating post_ is the first post when person posts to her newsfeed.  Basically--the number of posts on '2015-09-07' that recieved 0 comments, 1 comment, 2 comments, .... max comments.

    | Column | Type | Example |
    | --- | --- | --- |
    | ContentID | INT | 1 |
    | UserID | INT | 2 |
    | Date | Date | '2015-09-15' |
    | Type | VARCHAR(50) | One of ['like', 'url', 'comment', 'photo', 'share', etc] |
    | ReferenceID | INT | The ContentID for the original post; NULL if this is an original post  |

### Recall steps to setup a sql table

1. Open postgres on the work stations by opening finder and typing "postgres"

1. In your terminal, create your database: `CREATE DATABASE ;`

2. Open the database: `psql -U postgres countent`

3. Create the tables:

    ```sql
    CREATE TABLE sales (
        ID      int,
        month   varchar(10),
        sales   int
    );
    ```
4. To add items, you can use `INSERT INTO`.



```sql
insert into sales VALUES (1, 'Jan', 10);
insert into sales VALUES (2, 'Feb', 20);
insert into sales VALUES (3, 'Mar', 15);  
```
