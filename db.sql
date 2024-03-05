CREATE TABLE job_titles (
	id PRIMARY KEY NOT NULL AUTO_INCREMENT,
	title VARCHAR(40) NOT NULL
);



CREATE DATABASE blog_IPb22;

USE blog_IPb22;

CREATE TABLE posts (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL
);

INSERT INTO posts
(title)
VALUES
("My First Blog Post"),
("My Second Blog Post");



/* 03/05/2023 */

USE `blog_adrians`;
SELECT * FROM categories;
SELECT * FROM posts;

CREATE TABLE categories (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	DESCRIPTION TEXT
);

INSERT INTO categories (
name
)
VALUES
("sport"),
("music"),
("food");



SELECT * FROM posts;
ALTER TABLE posts
ADD category_id INT NOT NULL REFERENCES categories(id);


UPDATE posts
SET category_id = (SELECT id FROM categories WHERE NAME = 'sport')
WHERE id = 1;

UPDATE posts
SET category_id = (SELECT id FROM categories WHERE NAME = 'food')
WHERE id = 2;

SELECT * FROM posts;
JOIN categories
ON posts.category_id = categories.id;