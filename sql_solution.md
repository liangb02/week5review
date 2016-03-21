```sql
SELECT c.contentid, c.date, c.type, count(c2.referenceid) AS num_comment
FROM content AS c
LEFT JOIN content AS c2
ON
    c.contentid=c2.referenceID
WHERE
    c.type!='comment' AND
    c.date='2015-09-07'
GROUP BY c.contentid, c.date, c.type
ORDER BY num_comment;
```

```sql
DROP TABLE tmp;
CREATE TEMPORARY TABLE tmp AS (
SELECT c.contentid, c.date, c.type, count(c2.referenceid) AS num_comment
FROM content AS c
LEFT JOIN content AS c2
ON
    c.contentid=c2.referenceID
WHERE
    c.type!='comment' AND
    c.date='2015-09-07'
GROUP BY c.contentid, c.date, c.type
ORDER BY num_comment);
```

```sql
SELECT DISTINCT num_comment, count(*)
FROM tmp
GROUP BY num_comment
ORDER BY num_comment;

```


```sql
SELECT
    DISTINCT num_comment, type,
    count(*) OVER (PARTITION BY type ORDER BY num_comment) AS cnt
FROM tmp
GROUP BY num_comment, type
ORDER BY type;

```
