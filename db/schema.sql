CREATE DATABASE uofmn;

USE uofmn;

CREATE TABLE Users (
	userid INT AUTO_INCREMENT NOT NULL,
    playername VARCHAR (100) NOT NULL,
    username VARCHAR (40) NOT NULL,
    accountpass VARCHAR (40) NOT NULL,
    mymatches VARCHAR (400),
    PRIMARY KEY (userid)
);

CREATE TABLE Course (
    hole INT NOT NULL,
    par INT NOT NULL,
    dt1 INT NOT NULL,
    dt2 INT NOT NULL,
    dt3 INT NOT NULL,
    pacemark INT NOT NULL,
    holecap INT NOT NULL,  
    mapurl VARCHAR(250) 
);

CREATE TABLE Score (
    tstamp TIMESTAMP,
    playerhole INT NOT NULL,
    playertee INT NOT NULL,
    playerscore INT NOT NULL,
    playerputts INT NOT NULL,
    playernotes VARCHAR (1000),
    userid INT,
    FOREIGN KEY (userid) REFERENCES Users(userid)
);