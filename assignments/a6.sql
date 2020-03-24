SELECT Name FROM L_Customers;

SELECT Name FROM L_Customers WHERE Name LIKE "J%";

SELECT Name, City FROM L_Customers WHERE City LIKE "B%";

SELECT Name FROM L_Customers WHERE City = "Salem";

SELECT * FROM L_Orders WHERE Qty < 100;

SELECT Customer_No FROM L_Orders WHERE Qty > 1 AND Qty < 500;

SELECT Customer_No, Name, Zip FROM L_Customers WHERE City != "Boston";

SELECT Name as SelectName FROM L_Customers WHERE Telephone LIKE "%2_";

SELECT Customer_No, Order_No, Qty FROM L_Orders 
WHERE Item_No LIKE "982__" ORDER BY QTY DESC, Order_No ASC;