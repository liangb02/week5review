# Week 5 Review Session

## SQL Question

1. Given the below table _Content_,

   1. find number of comments for each _originating post_ on '2015-09-07'.An _originating post_ is the first post when person posts to her newsfeed.

   2. find the distribution for the number of comments on an _originating post_ on '2015-09-07'. Basically--the number of posts on '2015-09-07' that recieved 0 comments, 1 comment, 2 comments, .... max comments.

   3. find the distribution for number of comments on an _originating post_ on '2015-09-07' for each type.


    | Column | Type | Example |
    | --- | --- | --- |
    | ContentID | INT | 1 |
    | UserID | INT | 2 |
    | Date | Date | '2015-09-15' |
    | Type | VARCHAR(50) | One of ['like', 'url', 'comment', 'photo', 'share', etc] |
    | ReferenceID | INT | The ContentID for the original post; NULL if this is an original post  |

### Recall steps to setup a sql table

1. Open postgres on the work stations by opening finder and typing "postgres"

2. Open PostgresSQL: `psql`

3. In your terminal, create your database: `CREATE DATABASE socialnetwork;`

4. quit SQL: `\q`

5. create content table using <a href=https://github.com/xiaoyubai/week5review/blob/master/create_content_table.sql> given sql commands </a>:

    ```python
    psql socialnetwork < create_content_table.sql
    ```

6. Now hopefully you have content table

    ```python
    psql socialnetwork
    ```

    ```
    contentid | userid |    date    |  type   | referenceid
    ----------+--------+------------+---------+-------------
            1 |      1 | 2015-09-07 | url     |
            2 |      1 | 2015-09-07 | url     |
            3 |      2 | 2015-09-07 | comment |           2
            4 |      3 | 2015-09-07 | comment |           2
            5 |      3 | 2015-09-07 | comment |           2
            6 |      4 | 2015-09-07 | share   |
            7 |      4 | 2015-09-07 | comment |           6
           10 |      7 | 2015-09-07 | photo   |
            8 |      5 | 2015-09-08 | photo   |
            9 |      5 | 2015-09-08 | comment |           8
           11 |      4 | 2015-09-07 | comment |           6
           12 |      4 | 2015-09-07 | share   |
           13 |      4 | 2015-09-07 | comment |          12
    ```
Answers are in the <a href=https://github.com/xiaoyubai/week5review/blob/master/sql_solution.md> sql_solution.sql </a> file.
