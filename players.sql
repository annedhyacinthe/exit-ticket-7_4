CREATE TABLE players(
    ID serial UNIQUE NOT NULL,
    last_name char(25),
    first_name char(25),
    position char(3),
    jersey_number integer,
    weight_lb integer,
    height_in integer,
    date_of_birth char(25)
);

INSERT INTO players(last_name,first_name,position,jersey_number,weight_lb,height_in,date_of_birth) 
VALUES ('Fisher','Derek','QB',2,210,74,'January 2, 1999');
INSERT INTO players(last_name,first_name,position,jersey_number,weight_lb,height_in,date_of_birth) 
VALUES ('Cunningham','Reginald','DE',55,240,75,'April 3, 1998')
INSERT INTO (last_name,first_name,position,jersey_number,weight_lb,height_in,date_of_birth) 
VALUES ('Jackson','Stephen','WR',13,184,76,'October 13, 1998');
INSERT INTO (last_name,first_name,position,jersey_number,weight_lb,height_in,date_of_birth) 
VALUES ('Colton','Ryan','K',81,238,74,'December 12, 1998');
INSERT INTO (last_name,first_name,position,jersey_number,weight_lb,height_in,date_of_birth) 
VALUES ('Wright','Alexander','RB',23,190,70,'March 13, 1999');
INSERT INTO (last_name,first_name,position,jersey_number,weight_lb,height_in,date_of_birth) 
VALUES ('Smalls','Elliot','OLB',33,215,69,'February 23, 1999');

ALTER TABLE players 
ALTER COLUMN position, jersey_number SET NOT NULL,
ALTER COLUMN jersey_number SET UNIQUE,
ADD CHECK (jersey_number > 1 AND jersey_number < 100), 
ALTER COLUMN position SET DEFAULT 'AHT';

INSERT INTO (last_name,first_name,jersey_number,weight_lb,height_in,date_of_birth) 
VALUES ('Jamison','Zion',12,285,80,'October 25, 2000');

INSERT INTO (last_name,first_name,position,jersey_number,weight_lb,height_in,date_of_birth) 
VALUES ('Johnson','Craig','P',17,173,72,'November 25, 1999');