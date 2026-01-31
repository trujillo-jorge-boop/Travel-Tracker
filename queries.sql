-- EXERCISE SOLUTION AND SETUP --

DROP TABLE IF EXISTS visited_countries, users CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(15) UNIQUE NOT NULL,
    color VARCHAR(15)
);

CREATE TABLE visited_countries (
    id SERIAL PRIMARY KEY,
    country_code CHAR(2) NOT NULL,
    user_id INTEGER NOT NULL,
    CONSTRAINT fk_user
      FOREIGN KEY (user_id)
      REFERENCES users(id)
      ON DELETE CASCADE
);

SELECT *
FROM visited_countries
JOIN users
ON users.id = visited_countries.user_id;
