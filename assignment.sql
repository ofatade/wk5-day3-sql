-- Task 1: SQL Table Creation

CREATE DATABASE music;

USE music;

CREATE TABLE album (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(75) NOT NULL,
artist_id INT,
genre_id INT,
release_year YEAR,
tracks_total INT 
);

CREATE TABLE genre (
id INT AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(75) NOT NULL
);

CREATE TABLE artist (
id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(100) NOT NULL,
country VARCHAR(75) NULL,
bio VARCHAR(255)
);

-- Task 2: SQL Alteration

ALTER TABLE album
ADD total_duration TIME;


-- Task 3: SQL Foreign Key Establishment

ALTER TABLE album
ADD FOREIGN KEY (artist_id) REFERENCES artist(id);


ALTER TABLE album
ADD FOREIGN KEY (genre_id) REFERENCES genre(id);













