-- CREATE DATABSE Project
-- USE Project

-- DROP TABLES

DROP TABLE IF EXISTS Equipment;

DROP TABLE IF EXISTS Staff_List;
DROP TABLE IF EXISTS Events;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Project_Assignment;
DROP TABLE IF EXISTS Project;
DROP TABLE IF EXISTS Mentor;
DROP TABLE IF EXISTS Member_List;
DROP TABLE IF EXISTS Club;
DROP TABLE IF EXISTS Student;

-- CREATE TABLES
CREATE TABLE Student
(
    WID VARCHAR(30) NOT NULL,
    Name VARCHAR(30),
    Major VARCHAR(30),
    GradYear YEAR,

    CONSTRAINT Student_PK PRIMARY KEY (WID)
);

CREATE TABLE Club
(
    ClubName VARCHAR(30) NOT NULL,
    ClubSize INT,
    ClubType VARCHAR(30),

    CONSTRAINT Club_PK PRIMARY KEY (ClubName)
);

CREATE TABLE Member_List
(
    ClubName VARCHAR(30) NOT NULL,
    WID VARCHAR(30) NOT NULL,

    CONSTRAINT Member_PK PRIMARY KEY (ClubName, WID),
    CONSTRAINT Member_FK1 FOREIGN KEY (ClubName) REFERENCES Club(ClubName),
    CONSTRAINT Member_FK2 FOREIGN KEY (WID) REFERENCES Student(WID)
);

CREATE TABLE Mentor
(
    MentorName VARCHAR(30) NOT NULL,
    Title VARCHAR(30),
    Organization VARCHAR(30),

    CONSTRAINT Mentor_PK PRIMARY KEY (MentorName)
);

CREATE TABLE Project
(
    ProjectName VARCHAR(30) NOT NULL,
    Educational BOOLEAN,
    TeamSize INT,

    CONSTRAINT Project_PK PRIMARY KEY (ProjectName)
);

CREATE TABLE Project_Assignment
(
    AssignmentNo INT NOT NULL,
    ProjectName VARCHAR(30) NOT NULL,
    MentorName VARCHAR(30) NOT NULL,
    WID VARCHAR(30) NOT NULL,
    StartDate DATE,
    EndDate DATE,

    CONSTRAINT Assignment_PK PRIMARY KEY (AssignmentNo),
    CONSTRAINT Assignment_FK1 FOREIGN KEY (ProjectName) REFERENCES Project(ProjectName),
    CONSTRAINT Assignment_FK2 FOREIGN KEY (MentorName) REFERENCES Mentor(MentorName),
    CONSTRAINT Assignment_FK3 FOREIGN KEY (WID) REFERENCES Student(WID)
);

CREATE TABLE Staff
(
    StaffID VARCHAR(30) NOT NULL,
    WID VARCHAR(30) NOT NULL,
    PositionTitle VARCHAR(30),
    HoursWorked INT,

    CONSTRAINT Staff_PK PRIMARY KEY (StaffID),
    CONSTRAINT Staff_FK FOREIGN KEY (WID) REFERENCES Student(WID)
);

CREATE TABLE Events
(
    EventID VARCHAR(30) NOT NULL,
    Name VARCHAR(30),
    Date DATE,
    Time TIME,

    CONSTRAINT Event_PK PRIMARY KEY (EventID)
);

CREATE TABLE Staff_List
(
    EventID VARCHAR(30) NOT NULL,
    StaffID VARCHAR(30) NOT NULL,
    CONSTRAINT Staff_List_PK PRIMARY KEY (EventID, StaffID),
    CONSTRAINT Staff_List_FK1 FOREIGN KEY (EventID) REFERENCES Events(EventID),
    CONSTRAINT Staff_List_FK2 FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

