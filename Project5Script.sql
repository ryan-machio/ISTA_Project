-- Name: Ryan Manchanthasouk
-- File: Project5.sql
-- Date: February 23rd, 2020
CREATE DATABASE FitForEver;
CREATE TABLE profiles
	(
	profileid int NOT NULL PRIMARY KEY,
	dietlength date,
	goalweight varchar(255),
	fatmass  varchar(255),
	lbm varchar(255),
	tdee varchar(255),
	activitylevel varchar(255),
	propertiesid int NOT NULL,
	FOREIGN KEY (propertiesID) REFERENCES properties (propertiesid)
	);

CREATE TABLE properties
	(
	propertiesid int NOT NULL PRIMARY KEY,
	age varchar(255),
	height varchar(255),
	neck varchar(255),
	waist varchar(255),
	hip varchar(255),
	weight varchar(255),
	);

CREATE TABLE users
	(
	userid int NOT NULL PRIMARY KEY,
	middleinitial varchar(255),
	fname varchar(255),
	lname varchar(255),
	phonenumber varchar(255),
	accountid int NOT NULL,
	FOREIGN KEY (accountid) REFERENCES account (accountid)
	);

CREATE TABLE account
	(
	accountid int NOT NULL PRIMARY KEY,
	password varchar(255),
	email varchar(255),
	subemail varchar(255),
	birthday date,
	profileid int NOT NULL,
	FOREIGN KEY (profileid) REFERENCES profile (profileid)
	);