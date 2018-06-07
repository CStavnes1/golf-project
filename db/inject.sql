CREATE DATABASE uofmn;

USE uofmn;

CREATE TABLE Users (
	userid INT AUTO_INCREMENT NOT NULL,
    accountpass VARCHAR (40) NOT NULL,
    playername VARCHAR (100) NOT NULL,
    playerusername VARCHAR (40) NOT NULL,
    playermatches VARCHAR (400),
    playerhandicap INT,
    playeravgscore DECIMAL (10,2),
    playeravgputtsperhole DECIMAL (10,2),
    googleid VARCHAR (400),
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
	matchid INT NOT NULL,
    tstamp TIMESTAMP,
    playerhole INT NOT NULL,
    playertee VARCHAR (50),
    playerscore INT NOT NULL,
    playerputts INT NOT NULL,
    playernotes VARCHAR (1000),
    userid INT,
    FOREIGN KEY (userid) REFERENCES users(userid)
);

/*USER RECORDS*/
INSERT INTO users
VALUES (1, "asodifjasodifjoajsidf", "Joe Finnegan", "finne132", 12, 14, 82.5, 2.3, "8i8b05YrMLapopqCC2Fn32tWrVf1");
INSERT INTO users
VALUES (2, "asodifjasodifjoajsidf", "Esteban Armendariz", "esteban123", 10, 22, 90.5, 3.3, "9vsd9s029849ehfuyt8029bdw1");
INSERT INTO users
VALUES (3, "asodifjasodifjoajsidf", "Sean Flick", "flicker123", 6, 15, 95, 2.6, "sid3942hsodi30203iid84dht6");
INSERT INTO users
VALUES (11, "asodifjasodifjoajsidf", "Chris Stavnes", "stav123", 32, 20, 100, 2.0, "so3i4j2o3ihbcoi2o3896ghki7");



/*COURSE RECORDS*/
INSERT INTO Course 
VALUES (1, 4, 375, 393, 399, 14, 4, "/images/satellite/h1.png");

INSERT INTO Course
VALUES (2, 3, 130, 163, 175, 28, 10, "/images/satellite/h2.png");

INSERT INTO Course
VALUES (3, 4, 382, 400, 416, 42, 6, "/images/satellite/h3.png");

INSERT INTO Course
VALUES (4, 4, 340, 355, 359, 56, 2, "/images/satellite/h4.png");

INSERT INTO Course 
VALUES (5, 3, 135, 159, 167, 70, 16, "/images/satellite/h5.png");

INSERT INTO Course
VALUES (6, 4, 294, 306, 326, 84, 18, "/images/satellite/h6.png");

INSERT INTO Course
VALUES (7, 5, 450, 464, 476, 99, 12, "/images/satellite/h7.png");

INSERT INTO Course 
VALUES (8, 3, 178, 185, 195, 113, 8, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9962018,-93.1935872,164m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (9, 5, 444, 472, 480, 127, 14, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9937428,-93.1925917,462m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (10, 4, 281, 339, 344, 14, 11, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9906655,-93.1944042,390m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (11, 4, 268, 347, 356, 28, 13, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9910719,-93.1945786,329m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (12, 4, 351, 411, 417, 42, 1, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9936951,-93.1927473,464m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (13, 5, 430, 525, 536, 57, 9, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9968901,-93.1878467,464m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (14, 4, 268, 280, 310, 70, 17, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9983279,-93.1887551,231m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (15, 4, 305, 390, 390, 84, 3, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9984172,-93.1929778,331m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (16, 4, 314, 374, 377, 99, 5, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9971288,-93.1962776,561m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (17, 3, 137, 145, 151, 113, 15, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9951756,-93.1957199,198m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

INSERT INTO Course 
VALUES (18, 4, 396, 409, 414, 127, 7, "https://www.google.com/maps/place/Les+Bolstad+Golf+Course+Main+Office/@44.9934751,-93.1950744,195m/data=!3m1!1e3!4m5!3m4!1s0x0:0x23ab5e6d7ae6b3c7!8m2!3d44.9921644!4d-93.1960703");

/*SCORE RECORDS*/
INSERT INTO score
VALUES (1, (NOW()), 1, "white", 5, 2, "missed green to the left", 1);
INSERT INTO score
VALUES (1, (NOW()), 2, "white", 4, 2, "hit fairway awesome par", 1);
INSERT INTO score
VALUES (1, (NOW()), 3, "white", 5, 3, "bad three putt", 1);
INSERT INTO score
VALUES (1, (NOW()), 4, "white", 5, 2, "missed green to the left", 1);
INSERT INTO score
VALUES (1, (NOW()), 5, "white", 4, 2, "hit fairway awesome par", 1);
INSERT INTO score
VALUES (1, (NOW()), 6, "white", 5, 3, "bad three putt", 1);
INSERT INTO score
VALUES (1, (NOW()), 7, "white", 5, 2, "", 1);
INSERT INTO score
VALUES (1, (NOW()), 8, "white", 4, 2, "", 1);
INSERT INTO score
VALUES (1, (NOW()), 9, "white", 5, 3, "", 1);
INSERT INTO score
VALUES (1, (NOW()), 10, "white", 5, 2, "", 1);
INSERT INTO score
VALUES (1, (NOW()), 11, "white", 4, 2, "hit fairway awesome par", 1);
INSERT INTO score
VALUES (1, (NOW()), 12, "white", 5, 3, "", 1);
INSERT INTO score
VALUES (1, (NOW()), 13, "white", 5, 3, "bad three putt", 1);
INSERT INTO score
VALUES (1, (NOW()), 14, "white", 5, 2, "missed fairway", 1);
INSERT INTO score
VALUES (1, (NOW()), 15, "white", 4, 2, "", 1);
INSERT INTO score
VALUES (1, (NOW()), 16, "white", 5, 3, "missed fairway", 1);
INSERT INTO score
VALUES (1, (NOW()), 17, "white", 4, 2, "", 1);
INSERT INTO score
VALUES (1, (NOW()), 18, "white", 5, 3, "finished strong on 18", 1);