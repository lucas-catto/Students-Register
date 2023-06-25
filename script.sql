
CREATE DATABASE IF NOT EXISTS School;
USE School;

CREATE TABLE Students(
	Id             INT AUTO_INCREMENT PRIMARY KEY,
    NameStudent    VARCHAR(50) NOT NULL,
    Registration   VARCHAR(20) NOT NULL,
    DateOfBirth    VARCHAR(10) NOT NULL,
    MomentRegister VARCHAR(19) NOT NULL
);

CREATE TABLE Teachers(
	Id             INT AUTO_INCREMENT PRIMARY KEY,
    NameTeacher    VARCHAR(50) NOT NULL,
    Email          VARCHAR(50) NOT NULL,
    MomentRegister VARCHAR(19) NOT NULL
);

CREATE TABLE Classes(
	Id          INT AUTO_INCREMENT PRIMARY KEY,
    NameClass   VARCHAR(50) NOT NULL,
    Period      VARCHAR(10) NOT NULL,
    Teacher_Id  INT         NOT NULL,
    FOREIGN KEY (Teacher_Id) REFERENCES Teachers(Id)
);

CREATE TABLE Registers(
	StudentId      INT  NOT NULL,
    ClassId        INT  NOT NULL,
    DateOfRegister DATE NOT NULL,
    PRIMARY KEY (StudentId, ClassId),
    FOREIGN KEY (StudentId) REFERENCES Students(Id),
    FOREIGN KEY (ClassId)   REFERENCES Classes(Id)
);

CREATE TABLE Notes_Absences(
	Register_Student_Id    INT  NOT NULL,
    Register_Class_Id      INT  NOT NULL,
    Date_Of_Enter_Notes_Id DATE NOT NULL,
    Note FLOAT,
    Absences INT,
    PRIMARY KEY (Register_Student_Id, Register_Class_Id),
    FOREIGN KEY (Register_Student_Id, Register_Class_Id) REFERENCES Registers(StudentId, ClassId)
);

SELECT * FROM Students;

