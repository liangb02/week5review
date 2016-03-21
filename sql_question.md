## SQL Question

1. Given the below table _Content_, find the distribution for the number of comments on an _originating post_ on '2015-09-07'.
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

1. In your terminal, create your database: `CREATE DATABASE socialmedia;`

2. Open the database: `psql -U postgres socialmedia`

3. Create the tables:

    ```sql
    CREATE TABLE content (
        ContentID      int,
        UserID         int,
        Date           Date,
        Type           VARCHAR(50),
        ReferenceID    int
    );
    ```
4. To add items, you can use `INSERT INTO`.

```sql
insert into content VALUES (1, 1, '2015-09-07', 'like', 2);
insert into content VALUES (2, 1, '2015-09-07', 'url', NULL);
insert into content VALUES (3, 2, '2015-09-07', 'comment', 2);
insert into content VALUES (4, 3, '2015-09-07', 'comment', 2);
insert into content VALUES (5, 3, '2015-09-07', 'comment', 2);
insert into content VALUES (6, 4, '2015-09-07', 'share', NULL);
insert into content VALUES (7, 4, '2015-09-07', 'comment', 6);
insert into content VALUES (8, 5, '2015-09-08', 'photo', NULL);
insert into content VALUES (9, 5, '2015-09-08', 'comment', 8);
```
