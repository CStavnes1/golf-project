CREATE DATABASE uofmn;

USE uofmn;

CREATE TABLE Users (
	id INT AUTO_INCREMENT NOT NULL,
    playername VARCHAR (100) NOT NULL,
    username VARCHAR (40) NOT NULL,
    accountpass VARCHAR (40) NOT NULL,
    mymatches VARCHAR (400),
    PRIMARY KEY (id)
);

CREATE TABLE Course (
    hole INT NOT NULL,
    par INT NOT NULL,
    dt1 INT NOT NULL,
    dt2 INT NOT NULL,
    dt3 INT NOT NULL,
    mapurl VARCHAR(250),
    pacemark INT NOT NULL,
    holecap INT NOT NULL,   
);

CREATE TABLE Score (
	id INT AUTO_INCREMENT NOT NULL,
    tstamp TIMESTAMP,
    playerhole INT NOT NULL,
    playertee INT NOT NULL,
    playerscore INT NOT NULL,
    playerputts INT NOT NULL,
    playernotes VARCHAR (1000),
    PRIMARY KEY (id)
);