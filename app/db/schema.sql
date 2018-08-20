DROP DATABASE IF EXISTS movie_dev;
CREATE DATABASE movie_dev;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS users;

\c movie_dev

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    reviews_desc VARCHAR(255),
    users_id REFERENCES USERS,
    movie_id REFERENCES MOVIES
)

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(15) NOT NULL UNIQUE,
    pass_digest VARCHAR(25) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    icon VARCHAR(255),
);
