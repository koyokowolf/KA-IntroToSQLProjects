/* The app is an investment app called Acorn. It takes an inital amount of $5 and invests it for you...then it can either round up your purchases to an even $ amount and invest the change or you can deposit more money in it for it to invest. */

CREATE TABLE Acorn (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    amount TEXT,
    day TEXT);
    
INSERT INTO Acorn (amount,day)
    VALUES ("10.00","Thursday");
INSERT INTO Acorn (amount,day)
    VALUES ("20.00", "Friday");
INSERT INTO Acorn (amount,day)
    VALUES ("30.00", "Saturday");

ALTER TABLE Acorn ADD occasion TEXT; 
SELECT* FROM Acorn;
UPDATE Acorn SET occasion = "Amount for Thursday" 
WHERE id  = 1;
UPDATE Acorn SET occasion = "Amount for Friday" 
WHERE id = 2;
UPDATE Acorn SET occasion = "Amount for Saturday" 
WHERE id = 3;
SELECT * FROM Acorn;

INSERT INTO Acorn (amount,day,occasion) VALUES("40.00", "Sunday","Amount for Sunday"); 

SELECT * FROM Acorn;

DELETE FROM Acorn WHERE id = 1;

SELECT * FROM Acorn;
