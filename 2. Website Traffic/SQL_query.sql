/* BUILD SCHEMA OF SAMPLE TABLES*/

CREATE TABLE users (
    id int,
    name varchar(255),
    user_type varchar(255)
);

CREATE TABLE traffic (
    user_id int,
    visited_on date,
    time_spent float
);

INSERT INTO users (id, name, user_type)
VALUES
(1, 'Matt', 'user'),
(2, 'John', 'user'),
(3, 'Louis', 'admin');

INSERT INTO traffic (user_id, visited_on, time_spent)
VALUES
(1, '2019-05-01', 15),
(2, '2019-05-02', 20),
(2, '2019-05-03', 10);

/* ANSWER */

select user_only.visited_on, avg(user_only.time_spent) over(order by user_only.visited_on
rows between 2 preceding and current row)
from
(select * from
(select * from users u, traffic t 
where u.id = t.user_id) as compile
where compile.user_type = "user") as user_only;