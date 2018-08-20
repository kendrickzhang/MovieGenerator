DROP DATABASE IF EXISTS movie_dev;
CREATE DATABASE movie_dev;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS users;

\c movie_dev

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS movies;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(15) NOT NULL UNIQUE,
    pass_digest VARCHAR(25) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    icon VARCHAR(255),
);


CREATE TABLE movies (
    id SERIAL PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    movie_cast VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    year INTEGER NOT NULL,
    synopsis TEXT NOT NULL,
    img VARCHAR(255) NOT NULL,
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    reviews_desc VARCHAR(255),
    movie_id INTEGER REFERENCES MOVIES
)

--  users_id INTEGER REFERENCES USERS, to use in reviews