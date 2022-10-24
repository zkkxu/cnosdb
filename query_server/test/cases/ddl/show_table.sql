--#SORT=true
DROP DATABASE IF EXISTS createdatabase;

CREATE DATABASE createdatabase;

DROP TABLE IF EXISTS createdatabase.test0;

CREATE TABLE createdatabase.test0(
    column1 BIGINT CODEC(DELTA),
    column2 STRING CODEC(GZIP),
    column3 BIGINT UNSIGNED CODEC(NULL),
    column4 BOOLEAN,
    column5 DOUBLE CODEC(GORILLA),
    TAGS(column6, column7));

DROP TABLE IF EXISTS createdatabase.test1;

CREATE TABLE createdatabase.test1(
    column1 BIGINT CODEC(DELTA),
    column2 STRING CODEC(GZIP),
    column3 BIGINT UNSIGNED CODEC(NULL),
    column4 BOOLEAN,
    column5 DOUBLE CODEC(GORILLA),
    TAGS(column6, column7));

DROP TABLE IF EXISTS createdatabase.test2;

CREATE TABLE createdatabase.test2(
    column1 BIGINT CODEC(DELTA),
    column2 STRING CODEC(GZIP),
    column3 BIGINT UNSIGNED CODEC(NULL),
    column4 BOOLEAN,
    column5 DOUBLE CODEC(GORILLA),
    TAGS(column6, column7));

SHOW TABLES ON createdatabase;

DROP TABLE IF EXISTS createdatabase.test0;

SHOW TABLES ON createdatabase;

DROP TABLE IF EXISTS createdatabase.test2;

DROP TABLE IF EXISTS createdatabase.test1;