DROP TABLE customer;
DROP TABLE venue;
DROP TABLE booking;

CREATE TABLE customer(
	cnumber CHAR(6),
	cname VARCHAR(30) NOT NULL,
	cstreet VARCHAR(20) NOT NULL,
	ccity VARCHAR(20) NOT NULL,
	cprov CHAR(2) NOT NULL,
	cpostal CHAR(6) NOT NULL,
	cemail VARCHAR(20) NOT NULL,
	chphone CHAR(13) NOT NULL,
	cmphone CHAR(13) NOT NULL,
	CONSTRAINT customer_pk PRIMARY KEY (cnumber),
);

CREATE TABLE venue(
	vnumber CHAR(6),
	vname VARCHAR(20) NOT NULL,
	vdesc VARCHAR(150) NOT NULL,
	vcapacity NUMBER(6) NOT NULL,
	vprice NUMBER(9, 2) NOT NULL,
	vimgpath VARCHAR(30),
	CONSTRAINT venue_pk PRIMARY KEY (vnumber)	
);

CREATE TABLE booking(
	cnumber CHAR(6),
	vnumber CHAR(6),
	bdate DATE,
	CONSTRAINT booking_pk PRIMARY KEY (cnumber, vnumber, bdate),
	CONSTRAINT customer_fk FOREIGN KEY (cnumber) REFERENCES customer(cnumber),
	CONSTRAINT venue_fk FOREIGN KEY (vnumber) REFERENCES venue(vnumber)
);