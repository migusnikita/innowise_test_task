CREATE DATABASE car_sale;
CREATE TABLE user
(
    id              INT PRIMARY KEY AUTO_INCREMENT,
    login           VARCHAR(60) NOT NULL,
    password        VARCHAR(60) NOT NULL,
    email           VARCHAR(60) NOT NULL,
    created_at      DATE    
);
CREATE TABLE announcement
(
    id              INT PRIMARY KEY AUTO_INCREMENT,
    description     TEXT,
    created_at      DATE,
    user_id         INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (id)
);
CREATE TABLE auto
(
    id              INT PRIMARY KEY AUTO_INCREMENT,
    brand           TEXT,
    model           TEXT,
    engine          INT NOT NULL,
    year            INT NOT NULL,
    announcement_id INT NOT NULL,
    FOREIGN KEY (announcement_id) REFERENCES announcement (id)
);