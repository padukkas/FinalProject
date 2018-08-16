DROP TABLE booking;
DROP TABLE customer;
DROP TABLE venue;

CREATE TABLE customer(
	cnumber INT IDENTITY(1,1),
	cname VARCHAR(30) NOT NULL,
	caddress VARCHAR(150) NOT NULL,
	cemail VARCHAR(150) NOT NULL,
	chphone CHAR(13) NOT NULL,
	CONSTRAINT customer_pk PRIMARY KEY (cnumber),
);

CREATE TABLE venue(
	vnumber INT IDENTITY(1,1),
	vname VARCHAR(20) NOT NULL,
	vdesc VARCHAR(150) NOT NULL,
	vcapacity NUMERIC(6) NOT NULL,
	vprice NUMERIC(9, 2) NOT NULL,
	vimgpath VARCHAR(30),
	CONSTRAINT venue_pk PRIMARY KEY (vnumber)	
);

CREATE TABLE booking(
	cnumber INT,
	vnumber INT,
	bdate DATE,
	CONSTRAINT booking_pk PRIMARY KEY (cnumber, vnumber, bdate),
	CONSTRAINT customer_fk FOREIGN KEY (cnumber) REFERENCES customer(cnumber),
	CONSTRAINT venue_fk FOREIGN KEY (vnumber) REFERENCES venue(vnumber)
);