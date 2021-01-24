CREATE TABLE groups (
    group_id serial PRIMARY KEY,
    group_name varchar(255)
);

CREATE TABLE users(
    user_id serial PRIMARY KEY,
    user_name varchar(255),
    group_id integer REFERENCES groups (group_id)
);

CREATE VIEW sample_view(
    user_id,
    user_name,
    group_name
) AS
SELECT
    u.user_id,
    u.user_name,
    g.group_name
FROM
    users AS u
    LEFT JOIN groups AS g ON u.group_id = g.group_id;