-- Drop tables

DROP TABLE IF EXISTS Viewing;
DROP TABLE IF EXISTS Registration;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS PropertyForRent;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Branch;
DROP TABLE IF EXISTS PrivateOwner;

-- Create tables

CREATE TABLE Branch
(
    branchNo VARCHAR(5) NOT NULL,
    street VARCHAR(30),
    city VARCHAR(30),
    postcode VARCHAR(30),

    CONSTRAINT BRANCH_PK PRIMARY KEY (branchNo)
);

CREATE TABLE Staff
(
    staffNo VARCHAR(5) NOT NULL,
    fName VARCHAR(30),
    lName VARCHAR(30),
    position VARCHAR(30),
    sex CHAR,
    DOB DATE,
    salary INT,
    branchNo VARCHAR(5) NOT NULL,

    CONSTRAINT STAFF_PK PRIMARY KEY (staffNo),
    CONSTRAINT STAFF_FK1 FOREIGN KEY (branchNo) REFERENCES Branch(branchNo)
);

CREATE TABLE PrivateOwner
(
    ownerNo VARCHAR(5) NOT NULL,
    fName VARCHAR(30),
    lName VARCHAR(30),
    address VARCHAR(30),
    telNo VARCHAR(30),

    CONSTRAINT PRIVATE_OWNER_PK PRIMARY KEY (ownerNo)
);

CREATE TABLE PropertyForRent
(
    propertyNo VARCHAR(5) NOT NULL,
    street VARCHAR(30),
    city VARCHAR(30),
    postcode VARCHAR(30),
    propertytype VARCHAR(30),
    rooms INT,
    rent INT,
    ownerNo VARCHAR(5) NOT NULL,
    staffNo VARCHAR(5),
    branchNo VARCHAR(5) NOT NULL,

    CONSTRAINT PROPERTY_PK PRIMARY KEY (propertyNo),
    CONSTRAINT PROPERTY_FK1 FOREIGN KEY (ownerNo) REFERENCES PrivateOwner(ownerNo),
    CONSTRAINT PROPERTY_FK2 FOREIGN KEY (staffNo) REFERENCES Staff(staffNo),
    CONSTRAINT PROPERTY_FK3 FOREIGN KEY (branchNo) REFERENCES Branch(branchNo)
);

CREATE TABLE Client
(
    clientNo VARCHAR(5) NOT NULL,
    fName VARCHAR(30),
    lName VARCHAR(30),
    telNo VARCHAR(30),
    prefType VARCHAR(30),
    maxRent VARCHAR(30),

    CONSTRAINT CLIENT_PK PRIMARY KEY (clientNo)
);

CREATE TABLE Viewing
(
    clientNo VARCHAR(5) NOT NULL,
    propertyNo VARCHAR(5) NOT NULL,
    viewDate DATE,
    comments VARCHAR(30),

    CONSTRAINT VIEWING_PK PRIMARY KEY (clientNo, propertyNo),
    CONSTRAINT VIEWING_FK1 FOREIGN KEY (clientNo) REFERENCES Client(clientNo),
    CONSTRAINT VIEWING_FK2 FOREIGN KEY (propertyNo) REFERENCES PropertyForRent(propertyNo)
);

CREATE TABLE Registration
(
    clientNo VARCHAR(5) NOT NULL,
    branchNo VARCHAR(5) NOT NULL,
    staffNo VARCHAR(5) NOT NULL,
    dateJoined DATE,

    CONSTRAINT REGISTRATION_PK PRIMARY KEY (clientNo, branchNo, staffNo),
    CONSTRAINT REGISTRATION_FK1 FOREIGN KEY (clientNo) REFERENCES Client(clientNo),
    CONSTRAINT REGISTRATION_FK2 FOREIGN KEY (branchNo) REFERENCES Branch(branchNo),
    CONSTRAINT REGISTRATION_FK3 FOREIGN KEY (staffNo) REFERENCES Staff(staffNo)
);

-- Do insertions

INSERT INTO Branch
VALUES
    ("B005", "22 Deer Rd", "London", "SW1 4EH"),
    ("B007", "16 Argyll", "Aberdeen", "AB2 3SU"),
    ("B003", "163 Main St", "Glasgow", "G11 9QX"),
    ("B004", "32 Manse Rd", "Bristol", "BS99 1NZ"),
    ("B002", "56 Clover Drive", "London", "NW10 6EU");

INSERT INTO Staff
VALUES
    ("SL21", "John", "White", "Manager", "M", "1945-10-01", 30000, "B005"),
    ("SG37", "Ann", "Beech", "Assistant", "F", "1960-11-10", 12000, "B003"),
    ("SG14", "David", "Ford", "Supervisor", "M", "1958-03-24", 18000, "B003"),
    ("SA9", "Mary", "Howe", "Assistant", "F", "1970-02-19", 9000, "B007"),
    ("SG5", "Susan", "Brand", "Manager", "F", "1940-06-03", 24000, "B003"),
    ("SL41", "Julie", "Lee", "Assistant", "F", "1965-06-13", 9000, "B005");

INSERT INTO PrivateOwner
VALUES
    ("CO46", "Joe", "Keogh", "2 Fergus Dr, Aberdeen AB2 7SX", "01224-861212"),
    ("CO87", "Carol", "Farrel", "6 Achray St, Glasgow", "0141-357-7419"),
    ("CO40", "Tina", "Murphy", "63 Well St, Glasgow G42", "0141-943-1728"),
    ("CO93", "Tony", "Shaw", "12 Park Pl, Glasgow G4 0QR", "0141-225-7025");

INSERT INTO PropertyForRent
VALUES
    ("PA14", "16 Holhead", "Aberdeen", "AB7 5SU", "House", 6, 650, "CO46", "SA9", "B007"),
    ("PL94", "6 Argyll St", "London", "NW2", "Flat", 4, 400, "CO87", "SL41", "B005"),
    ("PG4", "6 Lawrence St", "Glasgow", "G11 9QX", "Flat", 3, 350, "CO40", null, "B003"),
    ("PG36", "2 Manor Road", "Glasgow", "G32 4QX", "Flat", 3, 375, "CO93", "SG37", "B003"),
    ("PG21", "18 Dale Rd", "Glasgow", "G12", "House", 5, 600, "CO87", "SG37", "B003"),
    ("PG16", "5 Novar Dr", "Glasgow", "G12 9AX", "Flat", 4, 450, "CO93", "SG14", "B003");

INSERT INTO Client
VALUES
    ("CR76", "John", "Kay", "0207-774-5632", "Flat", 425),
    ("CR56", "Aline", "Stewart", "0141-848-1825", "Flat", 350),
    ("CR74", "Mike", "Ritchie", "01475-392178", "House", 750),
    ("CR62", "Mary", "Tregear", "01224-196750", "Flat", 600);

INSERT INTO Viewing
VALUES
    ("CR56", "PA14", "2004-05-24", "too small"),
    ("CR76", "PG4", "2004-04-20", "too remote"),
    ("CR56", "PG4", "2004-05-26", null),
    ("CR62", "PA14", "2004-05-14", "no dining room"),
    ("CR56", "PG36", "2004-04-28", null);

INSERT INTO Registration
VALUES
    ("CR76", "B005", "SL41", "2004-01-02"),
    ("CR56", "B003", "SG37", "2003-04-11"),
    ("CR74", "B003", "SG37", "2003-11-16"),
    ("CR62", "B007", "SA9", "2003-03-07");