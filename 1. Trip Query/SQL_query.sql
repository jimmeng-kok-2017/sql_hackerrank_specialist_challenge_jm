/* BUILD SCHEMA OF SAMPLE TABLES*/

CREATE TABLE FAMILIES (
    ID int,
    NAME varchar(255),
    FAMILY_SIZE int
);

CREATE TABLE COUNTRIES (
    ID int,
    NAME varchar(255),
    MIN_SIZE int
);

INSERT INTO FAMILIES (ID, NAME, FAMILY_SIZE)
VALUES
(1, 'ALEX THOMAS', 9),
(2, 'CHRIS GRAY', 2);

INSERT INTO COUNTRIES (ID, NAME, MIN_SIZE)
VALUES
(1, 'Bolivia', 2),
(2, 'Cook Islands', 4),
(3, 'Brazil', 4);

/* ANSWER */

select count(*) from countries where min_size <= (select (max(family_size) from families);