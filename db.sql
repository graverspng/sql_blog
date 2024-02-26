CREATE DATABASE blog_adrians_gravers;

CREATE TABLE posts (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	TITLE VARCHAR(255) NOT NULL,
);

INSERT INTO posts 
(TITLE)
VALUES
("My First Blog Post"),
("My Second Blog Post");
