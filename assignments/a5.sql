DROP TABLE IF EXISTS L_Orders;
DROP TABLE IF EXISTS L_Customers;
DROP TABLE IF EXISTS L_Items;


CREATE TABLE L_Customers(

    Customer_No INT(5) NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Address VARCHAR(20),
    City VARCHAR(20),
    State VARCHAR(2),
    Zip VARCHAR(5),
    Telephone Varchar(14) NOT NULL,

CONSTRAINT L_Customers_PK PRIMARY KEY (Customer_No)
);

CREATE TABLE L_Items
(
    Item_No     INT(5)    NOT NULL,
    Item_Name    VARCHAR(20),
    Item_Type    VARCHAR(10),
CONSTRAINT L_Items_PK PRIMARY KEY (Item_No) 
);


CREATE TABLE L_Orders(

    Order_No INT(5) NOT NULL,
    Customer_No INT(5) ,
    Item_no INT(5),
    Qty INT(5),

CONSTRAINT L_Orders_PK PRIMARY KEY (Order_No),
CONSTRAINT L_Orders_FK1 FOREIGN KEY (Customer_No) REFERENCES L_Customers(Customer_No),
CONSTRAINT L_Orders_FK2 FOREIGN KEY (Item_No) REFERENCES L_Items(Item_No)
);

INSERT INTO L_Customers VALUES
("12345", "Smith", "23 High St.", "Boston", "MA", "02110", "(617)222-2222"),
("12341", "Jones", "123 West St.", "Salem", "MA", "02321", "(781)222-2222"), 
("23121", "Barney", "329 South St.", "Boston", "MA", "02110", "(617)291-1212"), 
("23111", "Kelly", "75 Yarmouth St.", "Natick", "MA", "01583", "(508)111-1111"), 
("21111", "Brian", "65 Main St.", "Quincy", "MA", "02169", "(617)472-4171"), 
("21112", "West", "54 Porter St.", "Cambridge", "MA", "02393", "(617)233-2121"), 
("21113", "Taylor", "23 Prince St.", "Boston", "MA", "02110", "(617)230-2212"), 
("21114", "Namath", "35 Dyer St.", "Salem", "MA", "02321", "(781)223-2121"), 
("21115", "Popkin", "356 Union St.", "Lynn", "MA", "01827", "(617)233-2232"), 
("21116", "Rice", "87 Boyston St.", "Boston", "MA", "02932", "(617)222-2220");

INSERT INTO L_Items VALUES 
(98672, 'Desk Chair',     'Chair'),
(98532,    'Desk Lamp',     'Lamp'),
(98533,    'Floor Lamp I',     'Lamp'),
(98421,    'Sofa',             'LRF'),
(98321,    'Futon',         'LRF'),
(98231,    'Recliner',         'LRF'),
(98675,    'Table',         'DRF'),
(98642,    'Bed',             'BRF'),
(98754,    'Desk',             'LRF'),
(98253,    'Filing Cabinet','OFF');

INSERT INTO L_Orders VALUES
("34567","12345","98672","22"),
("34568","21112","98532","3"),
("34569","21114","98532","1"),
("34570","21116","98421","201"),
("34571","21115","98321","12"),
("34572","12341","98231","1"),
("34573","23121","98675","232"),
("34574","23111","98642","12"),
("34575","23121","98754","2"),
("34576","21111","98253","33");
