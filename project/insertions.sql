INSERT INTO Student
VALUES
    ("W00389606", "Angel Carboni", "Computer Science", "2022"),
    ("W00384099", "Nathan Robinson", "Computer Science", "2022"),
    ("W00387420", "Endi Caushi", "Computer Science", "2022"),
    ("W00387654", "Jonathan Devlin", "Computer Science", "2022"),
    ("W00400205", "Max Isaacson", "Computer Networking", "2023"),
    ("W00399470", "Brian Estevez", "Cyber Security", "2023"),
    ("W00379089", "Jeremy Rojas", "Computer Science", "2021"),
    ("W00395778", "Nolan Pavlik", "Cyber Security", "2023"),
    ("W00379455", "Mikey Peloquin", "Mechanical Engineering", "2021"),
    ("W00400472", "Jonathan St. Laurent", "Business Management", "2023"),
    ("W00398867", "Zachary Bell", "Computer Information Systems", "2021"),
    ("W00393365", "Robert Briggs", "Computer Networking", "2023"),
    ("W00381023", "Billy McLellan", "Electromechanical Engineering", "2021"),
    ("W00123456", "Billy Bob", "Architecture", "2020"),
    ("W00987654", "Susie Lee", "Interior Design", "2023"),
    ("W00", "Bryant Gill", "Major", "GradYear");

INSERT INTO Club
VALUES
    ("Costume Club", "10", "Recreational"),
    ("Robotics Club", "6", "Academic"),
    ("VR Club", "5", "Recreational"),

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
    ("Costume Club", "W00"),
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
    ("Tory Lam", "Maker Space Lead - Accelerate", "Wentworth Institute of Technology"),
    ("Monique Fuchs", "Associate Vice President - Innovation and Entrepreneurship", "Wentworth Institute of Technology"),
    ("Charles Wiseman", "Department Chair", "Wentworth Institute of Technology"),
    ("Micah Schuster", "Assistant Professor", "Wentworth Institute of Technology"),
    ("Michael Yang", "Senior Data Scientist", "IntelyCare");

INSERT INTO Project
VALUES
    ("Magic Mirror", TRUE, 4),
    ("Project: Take Over", FALSE, 20),
    ("Cellular Automation", TRUE, 2);

INSERT INTO Project_Assignment
VALUES
    ("A01", "Magic Mirror", "Tory Lam", "W00", "08-01-2020", "13-04-2020"),
    ("A02", "Project: Take Over", "Tory Lam", "W00123456", "10-10-2018", "07-12-2025"),
    ("A03", "Cellular Automation", "Micah Schuster", "W00387654", "08-01-2020", "13-04-2020"),

INSERT INTO Staff
VALUES
    ("S01", "W00123456", "CO-OP", 40),
    ("S02", "W00395778", "Work Study", 15),
    ("S03", "W00987654", "Work Study", 10),
    ("S04", "W00", "CO-OP", 40);

INSERT INTO Events
VALUES
    ("E01", "ThinkTank: Future of Making", "19-10-2019", "10:00:00"),
    ("E02", "Project Showcase", "12-09-2019", "12:00:00"),
    ("E03", "ThinkTank: Future of Our Cities", "30-04-2018", "10:00:00"),
    ("E04", "Pitch Night", "04-09-2019", "17:00:00");

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
    ("LT000", "General/Office"),
    ("LT001", "Tool"),
    ("LT002", "Material"),
    ("LT003", "Filament"),
    ("LT004", "3DPrinter");

INSERT INTO Checkout
VALUES
    ("C001", "LT001", "W00", "15-01-2020"),
    ("C002", "LT003", "W00", "15-01-2020"),
    ("C003", "LT001", "W00123456", "09-03-2020");

INSERT INTO Tool
VALUES
    ("T001", "TrainingRequired", "ToolDescription"),
    ("T002", "TrainingRequired", "ToolDescription"),
    ("T003", "TrainingRequired", "ToolDescription"),
    ("T004", "TrainingRequired", "ToolDescription"),
    ("T005", "TrainingRequired", "ToolDescription");

INSERT INTO Material
VALUES
    ("M00", "MaterialDescription"),
    ("M00", "MaterialDescription"),
    ("M00", "MaterialDescription"),
    ("M00", "MaterialDescription"),
    ("M00", "MaterialDescription");

INSERT INTO Filament
VALUES
    ("F0", "FilamentBrand", "FilamentColor", "FilamentDescription"),
    ("F0", "FilamentBrand", "FilamentColor", "FilamentDescription"),
    ("F0", "FilamentBrand", "FilamentColor", "FilamentDescription"),
    ("F0", "FilamentBrand", "FilamentColor", "FilamentDescription"),
    ("F0", "FilamentBrand", "FilamentColor", "FilamentDescription");

INSERT INTO 3DPrinter
VALUES
    ("P0", "F0", "PrinterBrand", "PrinterDescription"),
    ("P0", "F0", "PrinterBrand", "PrinterDescription"),
    ("P0", "F0", "PrinterBrand", "PrinterDescription"),
    ("P0", "F0", "PrinterBrand", "PrinterDescription");
