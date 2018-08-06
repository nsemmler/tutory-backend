-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS tutorials;
-- DROP TABLE IF EXISTS comments;
-- DROP TABLE IF EXISTS ratings;
-- DROP TABLE IF EXISTS users_ratings;
-- DROP TABLE IF EXISTS tutorials_ratings;
-- DROP TABLE IF EXISTS users_tutorials;
--
-- CREATE TABLE users (
--     id INT PRIMARY KEY NOT NULL,
--     username VARCHAR(255) NOT NULL,
--     email VARCHAR(75) UNIQUE NOT NULL,
--     password VARCHAR(75) UNIQUE NOT NULL,
--     created_on TIMESTAMP NOT NULL
-- );
--
-- CREATE TABLE tutorials (
--     id INT PRIMARY KEY NOT NULL,
--     users_id integer REFERENCES users(id) ON DELETE CASCADE NOT NULL,
--     title VARCHAR(255) NOT NULL,
--     description TEXT,
--     rating INTEGER,
--     created_on TIMESTAMP NOT NULL,
--     updated_at TIMESTAMP NOT NULL
-- );
--
-- CREATE TABLE ratings (
--     id INT PRIMARY KEY NOT NULL,
--     value integer NOT NULL,
--     created_on TIMESTAMP NOT NULL
-- );
--
-- CREATE TABLE users_ratings (
--     id INT PRIMARY KEY NOT NULL,
--     users_id integer REFERENCES users(id) ON DELETE CASCADE NOT NULL,
--     ratings_id integer REFERENCES ratings(id) ON DELETE CASCADE NOT NULL
--     created_on TIMESTAMP NOT NULL
-- );
--
-- CREATE TABLE tutorials_ratings (
--     id INT PRIMARY KEY NOT NULL,
--     ratings_id integer REFERENCES ratings(id) ON DELETE CASCADE NOT NULL,
--     tutorials_id integer REFERENCES tutorials(id) ON DELETE CASCADE NOT NULL
--     created_on TIMESTAMP NOT NULL
-- );
--
-- CREATE TABLE users_tutorials (
--     id INT PRIMARY KEY NOT NULL,
--     users_id integer REFERENCES users(id) ON DELETE CASCADE NOT NULL,
--     tutorials_id integer REFERENCES tutorials(id) ON DELETE CASCADE NOT NULL
--     created_on TIMESTAMP NOT NULL
-- );
--
-- CREATE TABLE comments (
--     id INT PRIMARY KEY NOT NULL,
--     users_id integer REFERENCES users(id) ON DELETE CASCADE NOT NULL,
--     tutorials_id integer REFERENCES tutorials(id) ON DELETE CASCADE NOT NULL,
--     content VARCHAR(255) NOT NULL,
--     created_on TIMESTAMP NOT NULL
-- );
--
-- INSERT INTO users (
--     id, name
-- ) VALUES (
--     1, 'Kyle'
-- ),(
--     2, 'Danny'
-- ),(
--     3, 'CJ'
-- ),(
--     4, 'Roberto'
-- );
--
-- INSERT INTO tutorials (
--     id, title, users_id
-- ) VALUES (
--     1, 'Chow Chow', 1
-- ),(
--     2, 'German Shepherd', 1
-- ),(
--     3, 'Jack Russell Terrier', 3
-- ),(
--     4, 'Black Lab', 2
-- ),(
--     5, 'Cat', 3
-- );
--
-- INSERT INTO users_tutorials (
--     id, users_id, tutorials_id
-- ) VALUES (
--     1, 1, 1
-- ),(
--     2, 3, 1
-- ),(
--     3, 3, 4
-- ),(
--     4, 2, 2
-- ),(
--     5, 3, 4
-- );
