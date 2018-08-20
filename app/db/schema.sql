DROP DATABASE IF EXISTS movie_dev;
CREATE DATABASE movie_dev;

\c movie_dev

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(15) NOT NULL UNIQUE,
    pass_digest VARCHAR(25) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    icon VARCHAR(255),
);