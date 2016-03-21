DROP TABLE content;

CREATE TABLE content (
    ContentID      int,
    UserID         int,
    Date           Date,
    Type           VARCHAR(50),
    ReferenceID    int
);

insert into content VALUES (1, 1, '2015-09-07', 'url', NULL);
insert into content VALUES (2, 1, '2015-09-07', 'url', NULL);
insert into content VALUES (3, 2, '2015-09-07', 'comment', 2);
insert into content VALUES (4, 3, '2015-09-07', 'comment', 2);
insert into content VALUES (5, 3, '2015-09-07', 'comment', 2);
insert into content VALUES (6, 4, '2015-09-07', 'share', NULL);
insert into content VALUES (7, 4, '2015-09-07', 'comment', 6);
insert into content VALUES (10, 7, '2015-09-07', 'photo', NULL);
insert into content VALUES (8, 5, '2015-09-08', 'photo', NULL);
insert into content VALUES (9, 5, '2015-09-08', 'comment', 8);
insert into content VALUES (11, 4, '2015-09-07', 'comment', 6);
insert into content VALUES (12, 4, '2015-09-07', 'share', NULL);
insert into content VALUES (13, 4, '2015-09-07', 'comment', 12);
