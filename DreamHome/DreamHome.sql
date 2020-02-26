-- Drop tables

DROP TABLE IF EXISTS VIEWING_t;
DROP TABLE IF EXISTS REGISTRATION_t;
DROP TABLE IF EXISTS CLIENT_t;
DROP TABLE IF EXISTS PROPERTY_t;
DROP TABLE IF EXISTS STAFF_t;
DROP TABLE IF EXISTS BRANCH_t;
DROP TABLE IF EXISTS PRIVATE_OWNER_t;

-- Create tables

CREATE TABLE BRANCH_t
(
    Branch_Number VARCHAR(5) NOT NULL,
    Branch_Street VARCHAR(30),
    Branch_City VARCHAR(30),
    Branch_Postcode VARCHAR(30),

    CONSTRAINT BRANCH_PK PRIMARY KEY (Branch_Number)
);

CREATE TABLE STAFF_t
(
    Staff_Number VARCHAR(5) NOT NULL,
    Staff_FName VARCHAR(30),
    Staff_LName VARCHAR(30),
    Staff_Position VARCHAR(30),
    Staff_Sex CHAR,
    Staff_DOB DATE,
    Staff_Salary INT,
    Branch_Number VARCHAR(5) NOT NULL,

    CONSTRAINT STAFF_PK PRIMARY KEY (Staff_Number),
    CONSTRAINT STAFF_FK1 FOREIGN KEY (Branch_Number) REFERENCES BRANCH_t(Branch_Number)
);

CREATE TABLE PRIVATE_OWNER_t
(
    Owner_Number VARCHAR(5) NOT NULL,
    Owner_FName VARCHAR(30),
    Owner_LName VARCHAR(30),
    Owner_Address VARCHAR(30),
    Owner_TelNo VARCHAR(30),

    CONSTRAINT PRIVATE_OWNER_PK PRIMARY KEY (Owner_Number)
);

CREATE TABLE PROPERTY_t
(
    Property_Number VARCHAR(5) NOT NULL,
    Property_Street VARCHAR(30),
    Property_City VARCHAR(30),
    Property_Postcode VARCHAR(30),
    Property_Type VARCHAR(30),
    Property_Rooms INT,
    Property_Rent INT,
    Owner_Number VARCHAR(5) NOT NULL,
    Staff_Number VARCHAR(5),
    Branch_Number VARCHAR(5) NOT NULL,

    CONSTRAINT PROPERTY_PK PRIMARY KEY (Property_Number),
    CONSTRAINT PROPERTY_FK1 FOREIGN KEY (Owner_Number) REFERENCES PRIVATE_OWNER_t(Owner_Number),
    CONSTRAINT PROPERTY_FK2 FOREIGN KEY (Staff_Number) REFERENCES STAFF_t(Staff_Number),
    CONSTRAINT PROPERTY_FK3 FOREIGN KEY (Branch_Number) REFERENCES BRANCH_t(Branch_Number)
);

CREATE TABLE CLIENT_t
(
    Client_Number VARCHAR(5) NOT NULL,
    Client_FName VARCHAR(30),
    Client_LName VARCHAR(30),
    Client_TelNo VARCHAR(30),
    Client_PrefType VARCHAR(30),
    Client_MaxRent VARCHAR(30),

    CONSTRAINT CLIENT_PK PRIMARY KEY (Client_Number)
);

CREATE TABLE VIEWING_t
(
    Client_Number VARCHAR(5) NOT NULL,
    Property_Number VARCHAR(5) NOT NULL,
    Viewing_ViewDate DATE,
    Viewing_Comment VARCHAR(30),

    CONSTRAINT VIEWING_PK PRIMARY KEY (Client_Number, Property_Number),
    CONSTRAINT VIEWING_FK1 FOREIGN KEY (Client_Number) REFERENCES CLIENT_t(Client_Number),
    CONSTRAINT VIEWING_FK2 FOREIGN KEY (Property_Number) REFERENCES PROPERTY_t(Property_Number)
);

CREATE TABLE REGISTRATION_t
(
    Client_Number VARCHAR(5) NOT NULL,
    Branch_Number VARCHAR(5) NOT NULL,
    Staff_Number VARCHAR(5) NOT NULL,
    Registration_DateJoined DATE,

    CONSTRAINT REGISTRATION_PK PRIMARY KEY (Client_Number, Branch_Number, Staff_Number),
    CONSTRAINT REGISTRATION_FK1 FOREIGN KEY (Client_Number) REFERENCES CLIENT_t(Client_Number),
    CONSTRAINT REGISTRATION_FK2 FOREIGN KEY (Branch_Number) REFERENCES BRANCH_t(Branch_Number),
    CONSTRAINT REGISTRATION_FK3 FOREIGN KEY (Staff_Number) REFERENCES STAFF_t(Staff_Number)
);

-- Do insertions

INSERT INTO BRANCH_t
VALUES
    ("B005", "22 Deer Rd", "London", "SW1 4EH"),
    ("B007", "16 Argyll", "Aberdeen", "AB2 3SU"),
    ("B003", "163 Main St", "Glasgow", "G11 9QX"),
    ("B004", "32 Manse Rd", "Bristol", "BS99 1NZ"),
    ("B002", "56 Clover Drive", "London", "NW10 6EU");

INSERT INTO STAFF_t
VALUES
    ("SL21", "John", "White", "Manager", "M", "1945-10-01", 30000, "B005"),
    ("SG37", "Ann", "Beech", "Assistant", "F", "1960-11-10", 12000, "B003"),
    ("SG14", "David", "Ford", "Supervisor", "M", "1958-03-24", 18000, "B003"),
    ("SA9", "Mary", "Howe", "Assistant", "F", "1970-02-19", 9000, "B007"),
    ("SG5", "Susan", "Brand", "Manager", "F", "1940-06-03", 24000, "B003"),
    ("SL41", "Julie", "Lee", "Assistant", "F", "1965-06-13", 9000, "B005");

INSERT INTO PRIVATE_OWNER_t
VALUES
    ("CO46", "Joe", "Keogh", "2 Fergus Dr, Aberdeen AB2 7SX", "01224-861212"),
    ("CO87", "Carol", "Farrel", "6 Achray St, Glasgow", "0141-357-7419"),
    ("CO40", "Tina", "Murphy", "63 Well St, Glasgow G42", "0141-943-1728"),
    ("CO93", "Tony", "Shaw", "12 Park Pl, Glasgow G4 0QR", "0141-225-7025");

INSERT INTO PROPERTY_t
VALUES
    ("PA14", "16 Holhead", "Aberdeen", "AB7 5SU", "House", 6, 650, "CO46", "SA9", "B007"),
    ("PL94", "6 Argyll St", "London", "NW2", "Flat", 4, 400, "CO87", "SL41", "B005"),
    ("PG4", "6 Lawrence St", "Glasgow", "G11 9QX", "Flat", 3, 350, "CO40", null, "B003"),
    ("PG36", "2 Manor Road", "Glasgow", "G32 4QX", "Flat", 3, 375, "CO93", "SG37", "B003"),
    ("PG21", "18 Dale Rd", "Glasgow", "G12", "House", 5, 600, "CO87", "SG37", "B003"),
    ("PG16", "5 Novar Dr", "Glasgow", "G12 9AX", "Flat", 4, 450, "CO93", "SG14", "B003");

INSERT INTO CLIENT_t
VALUES
    ("CR76", "John", "Kay", "0207-774-5632", "Flat", 425),
    ("CR56", "Aline", "Stewart", "0141-848-1825", "Flat", 350),
    ("CR74", "Mike", "Ritchie", "01475-392178", "House", 750),
    ("CR62", "Mary", "Tregear", "01224-196750", "Flat", 600);

INSERT INTO VIEWING_t
VALUES
    ("CR56", "PA14", "2004-05-24", "too small"),
    ("CR76", "PG4", "2004-04-20", "too remote"),
    ("CR56", "PG4", "2004-05-26", null),
    ("CR62", "PA14", "2004-05-14", "no dining room"),
    ("CR56", "PG36", "2004-04-28", null);

INSERT INTO REGISTRATION_t
VALUES
    ("CR76", "B005", "SL41", "2004-01-02"),
    ("CR56", "B003", "SG37", "2003-04-11"),
    ("CR74", "B003", "SG37", "2003-11-16"),
    ("CR62", "B007", "SA9", "2003-03-07");