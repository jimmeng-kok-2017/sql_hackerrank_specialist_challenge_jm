/* BUILD SCHEMA OF SAMPLE TABLES*/

CREATE TABLE PEOPLE (
    ID int,
    NAME char(255),
    COMPANY_ID int
);

CREATE TABLE COMPANIES (
    ID int,
    NAME char(255),
    LOCATION_ID varchar(255)
);

CREATE TABLE LOCATIONS (
    ID varchar(255),
    NAME char(255)
);

INSERT INTO PEOPLE (ID, NAME, COMPANY_ID)
VALUES
(1, 'Chris', 11),
(2, 'Sam', 22),
(3, 'Faker', 33);

INSERT INTO COMPANIES (ID, NAME, LOCATION_ID)
VALUES
(11, 'Wright-Phillips', 'A1'),
(22, 'HazardEden', 'A1'),
(33, 'Palmieri', 'C3');

INSERT INTO LOCATIONS (ID, NAME)
VALUES
('A1', 'Wrightmouth'),
('B2', 'New Joseph');

/* ANSWER */

select p.name, max_companies.name from people p,
(select co.id, co.name from companies co where co.location_id = 
(select l.id from locations l where l.name = 
(select cll.loc_name from
(select cl.loc_name, count(cl.c_id) as company_count
from
(select c.id as c_id, c.name as c_name, l.name as
loc_name from companies c, locations l
where c.location_id = l.id) as cl
group by cl.loc_name
order by company_count desc) as cll
limit 1))) as max_companies
where p.company_id = max_companies.id;