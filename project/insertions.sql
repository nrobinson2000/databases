INSERT INTO Student
VALUES
  (
    "W00389606",
    "Angel Carboni",
    "Computer Science",
    "2022"
  ),
  (
    "W00384099",
    "Nathan Robinson",
    "Computer Science",
    "2022"
  ),
  (
    "W00387420",
    "Endi Caushi",
    "Computer Science",
    "2022"
  ),
  (
    "W00387654",
    "Jonathan Devlin",
    "Computer Science",
    "2022"
  ),
  (
    "W00400205",
    "Max Isaacson",
    "Computer Networking",
    "2023"
  ),
  (
    "W00399470",
    "Brian Estevez",
    "Cyber Security",
    "2023"
  ),
  (
    "W00379089",
    "Jeremy Rojas",
    "Computer Science",
    "2021"
  ),
  (
    "W00395778",
    "Nolan Pavlik",
    "Cyber Security",
    "2023"
  ),
  (
    "W00379455",
    "Mikey Peloquin",
    "Mechanical Engineering",
    "2021"
  ),
  (
    "W00400472",
    "Jonathan St. Laurent",
    "Business Management",
    "2023"
  ),
  (
    "W00398867",
    "Zachary Bell",
    "Computer Information Systems",
    "2021"
  ),
  (
    "W00393365",
    "Robert Briggs",
    "Computer Networking",
    "2023"
  ),
  (
    "W00381023",
    "Billy McLellan",
    "Electromechanical Engineering",
    "2021"
  ),
  ("W00123456", "Billy Bob", "Architecture", "2020"),
  (
    "W00987654",
    "Susie Lee",
    "Interior Design",
    "2023"
  ),
  (
    "W00392828",
    "Bryant Gill",
    "Mechanical Engineering",
    "2021"
  );
INSERT INTO Club
VALUES
  ("Costume Club", "10", "Recreational"),
  ("Robotics Club", "6", "Academic"),
  ("VR Club", "5", "Recreational");
INSERT INTO Member_List
VALUES
  ("Costume Club", "W00389606"),
  ("Costume Club", "W00400205"),
  ("Costume Club", "W00399470"),
  ("Costume Club", "W00379089"),
  ("Costume Club", "W00395778"),
  ("Costume Club", "W00400472"),
  ("Costume Club", "W00398867"),
  ("Costume Club", "W00381023"),
  ("Costume Club", "W00387654"),
  ("Costume Club", "W00392828"),
  ("Robotics Club", "W00389606"),
  ("Robotics Club", "W00379455"),
  ("Robotics Club", "W00381023"),
  ("Robotics Club", "W00384099"),
  ("Robotics Club", "W00123456"),
  ("Robotics Club", "W00987654"),
  ("VR Club", "W00389606"),
  ("VR Club", "W00384099"),
  ("VR Club", "W00399470"),
  ("VR Club", "W00398867"),
  ("VR Club", "W00393365");
INSERT INTO Mentor
VALUES
  (
    "Tory Lam",
    "Maker Space Lead - Accelerate",
    "Wentworth Institute of Technology"
  ),
  (
    "Monique Fuchs",
    "Associate Vice President - Innovation and Entrepreneurship",
    "Wentworth Institute of Technology"
  ),
  (
    "Charles Wiseman",
    "Department Chair",
    "Wentworth Institute of Technology"
  ),
  (
    "Micah Schuster",
    "Assistant Professor",
    "Wentworth Institute of Technology"
  ),
  (
    "Michael Yang",
    "Senior Data Scientist",
    "IntelyCare"
  );
INSERT INTO Project
VALUES
  ("Magic Mirror", TRUE, 4),
  ("Project: Take Over", FALSE, 20),
  ("Cellular Automation", TRUE, 2);
INSERT INTO Project_Assignment
VALUES
  (
    "A01",
    "Magic Mirror",
    "Tory Lam",
    "W00392828",
    "2020-01-08",
    "2020-04-13"
  ),
  (
    "A02",
    "Project: Take Over",
    "Tory Lam",
    "W00123456",
    "2018-10-10",
    "2025-12-07"
  ),
  (
    "A03",
    "Cellular Automation",
    "Micah Schuster",
    "W00387654",
    "2020-01-08",
    "2020-04-13"
  );
INSERT INTO Staff
VALUES
  ("S01", "W00123456", "CO-OP", 40),
  ("S02", "W00395778", "Work Study", 15),
  ("S03", "W00987654", "Work Study", 10),
  ("S04", "W00392828", "CO-OP", 40);
INSERT INTO Events
VALUES
  (
    "E01",
    "ThinkTank: Future of Making",
    "2019-10-19",
    "10:00:00"
  ),
  (
    "E02",
    "Project Showcase",
    "2019-09-12",
    "12:00:00"
  ),
  (
    "E03",
    "ThinkTank: Future of Our Cities",
    "2018-04-30",
    "10:00:00"
  ),
  ("E04", "Pitch Night", "2019-09-04", "17:00:00");
INSERT INTO Staff_List
VALUES
  ("E01", "S01"),
  ("E01", "S02"),
  ("E02", "S01"),
  ("E02", "S03"),
  ("E03", "S02"),
  ("E03", "S04"),
  ("E04", "S04"),
  ("E04", "S03");
INSERT INTO Equipment
VALUES
  ("0001", "G", "General/Office"),
  ("0002", "T", "Tool"),
  ("0003", "T", "Tool"),
  ("0004", "T", "Tool"),
  ("0005", "T", "Tool"),
  ("0006", "T", "Tool"),
  ("0007", "M", "Material"),
  ("0008", "M", "Material"),
  ("0009", "M", "Material"),
  ("0010", "M", "Material"),
  ("0011", "M", "Material"),
  ("0012", "F", "Filament"),
  ("0013", "F", "Filament"),
  ("0014", "F", "Filament"),
  ("0015", "F", "Filament"),
  ("0016", "F", "Filament"),
  ("0017", "3", "3DPrinter"),
  ("0018", "3", "3DPrinter"),
  ("0019", "3", "3DPrinter"),
  ("0020", "3", "3DPrinter");
INSERT INTO Checkout
VALUES
  ("C001", "0002", "W00389606", "2020-01-15"),
  ("C002", "0003", "W00400205", "2020-01-15"),
  ("C003", "0008", "W00123456", "2020-03-09");
INSERT INTO Tool
VALUES
  ("0002", "T", FALSE, "Hammer"),
  ("0003", "T", FALSE, "Large paper cutter"),
  ("0004", "T", FALSE, "Hot glue gun"),
  ("0005", "T", TRUE, "laser Cutter"),
  ("0006", "T", TRUE, "Belt Sander");
INSERT INTO Material
VALUES
  ("0007", "M", "Velcro"),
  ("0008", "M", "Polyfil"),
  ("0009", "M", "Safety pins"),
  ("0010", "M", "Bread boards"),
  ("0011", "M", "Hot glue gun refills");
INSERT INTO Filament
VALUES
  (
    "0012",
    "F",
    "MakerBot",
    "white",
    "white PLA filament for 3D printing"
  ),
  (
    "0013",
    "F",
    "MakerBot",
    "grey",
    "grey PLA filament for 3D printing"
  ),
  (
    "0014",
    "F",
    "MakerBot",
    "black",
    "black PLA filament for 3D printing"
  ),
  (
    "0015",
    "F",
    "Resin",
    "blue",
    "blue PLA filament for 3D printing"
  ),
  (
    "0016",
    "F",
    "Resin",
    "purple",
    "purple PLA filament for 3D printing"
  );
INSERT INTO ThreeDPrinter
VALUES
  (
    "0017",
    "3",
    "0012",
    "MakerBot",
    "3D Printer using filament"
  ),
  (
    "0018",
    "3",
    "0013",
    "MakerBot",
    "3D Printer using filament"
  ),
  (
    "0019",
    "3",
    "0015",
    "Prusa",
    "3D Printer using resin"
  ),
  (
    "0020",
    "3",
    "0016",
    "Prusa",
    "3D Printer using resin"
  );