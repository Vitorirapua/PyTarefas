DROP DATABASE IF EXISTS pytarefasdb;

CREATE DATABASE pytarefasdb
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;

USE pytarefasdb;

CREATE TABLE task (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(127) NOT NULL,
    description TEXT NOT NULL,
    expire DATETIME NOT NULL,
    status ENUM('pending', 'completed', 'deleted') DEFAULT 'pending'
);
