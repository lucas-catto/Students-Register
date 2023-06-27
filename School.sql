
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
	Id             INT AUTO_INCREMENT PRIMARY KEY,
    NameClass      VARCHAR(50) NOT NULL,
    Period         VARCHAR(35) NOT NULL,
    Teacher_Id     INT         NOT NULL,
    MomentRegister VARCHAR(19) NOT NULL,
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
SELECT * FROM Teachers;
SELECT * FROM Classes;

INSERT INTO `Students` VALUES
(null, "Lucas Oliveira",      "000001",  "10/05/2000",  "2016-08-14 09:26:01"),
(null, "Enzo Costa Silva",          "000002",  "02/18/1997",  "2021-03-29 10:15:22"),
(null, "Mariana Silva",       "000003",  "07/21/1998",  "2019-11-02 11:45:10"),
(null, "Lara Rodrigues",      "000004",  "09/30/1992",  "2018-05-19 12:30:05"),
(null, "Pedro Fernandes",     "000005",  "03/14/1996",  "2022-02-06 14:20:33"),
(null, "Isabella Oliveira",   "000006",  "05/07/1989",  "2017-09-12 15:55:40"),
(null, "Arthur Souza",        "000007",  "12/19/2001",  "2023-01-27 16:45:18"),
(null, "Sophia Almeida",      "000008",  "06/11/1994",  "2015-07-02 17:10:55"),
(null, "Davi Pereira",        "000009",  "11/02/1990",  "2020-10-18 18:40:29"),
(null, "Luiza Lima de Souza",          "000010",  "04/25/1999",  "2017-12-07 19:25:15"),
(null, "Rafaela Castro",      "000011",  "08/29/2002",  "2022-08-01 20:15:07"),
(null, "Hugo Costa",          "000012",  "03/05/1993",  "2016-06-10 21:10:32"),
(null, "Samuel Santos",       "000013",  "12/08/1991",  "2019-09-23 22:40:50"),
(null, "Larissa Gomes",       "000014",  "09/14/1997",  "2021-04-30 23:55:19"),
(null, "Sophie Ferreira",     "000015",  "07/03/1995",  "2023-06-19 08:12:45"),
(null, "Ricardo Lima",        "000016",  "01/21/2000",  "2016-08-14 09:26:01"),
(null, "Gabriel Santos",      "000017",  "03/18/1997",  "2021-03-29 10:15:22"),
(null, "Fernanda Oliveira",   "000018",  "06/27/1998",  "2019-11-02 11:45:10"),
(null, "Gustavo Rodrigues",   "000019",  "08/05/1992",  "2018-05-19 12:30:05"),
(null, "Carolina Fernandes",  "000020",  "04/10/1996",  "2022-02-06 14:20:33"),
(null, "João Almeida",        "000021",  "10/07/1989",  "2017-09-12 15:55:40"),
(null, "Bianca Silva",        "000022",  "09/02/2001",  "2023-01-27 16:45:18"),
(null, "Vitor Souza",         "000023",  "01/15/1994",  "2015-07-02 17:10:55"),
(null, "Marina Santos",       "000024",  "03/22/1990",  "2020-10-18 18:40:29"),
(null, "Daniel Lima",         "000025",  "04/08/1999",  "2017-12-07 19:25:15"),
(null, "Amanda Costa",        "000026",  "08/13/2002",  "2022-08-01 20:15:07"),
(null, "Paulo Oliveira",      "000027",  "02/28/1993",  "2016-06-10 21:10:32"),
(null, "Camila Rodrigues",    "000028",  "12/04/1991",  "2019-09-23 22:40:50"),
(null, "Vitória Fernandes",   "000029",  "11/19/1997",  "2021-04-30 23:55:19"),
(null, "Giovanni Gomes",      "000030",  "07/10/1995",  "2023-06-19 08:12:45"),
(null, "Letícia Castro",      "000031",  "06/25/2000",  "2016-08-14 09:26:01"),
(null, "Raul Costa",          "000032",  "09/23/1997",  "2021-03-29 10:15:22"),
(null, "Nathalia Silva",      "000033",  "04/05/1998",  "2019-11-02 11:45:10"),
(null, "Renato Rodrigues",    "000034",  "11/28/1992",  "2018-05-19 12:30:05"),
(null, "Clara Fernandes",     "000035",  "03/01/1996",  "2022-02-06 14:20:33");

SELECT * FROM Students;

INSERT INTO `Teachers` VALUES
(null, "Márcio Moraes",     "marcio@email.com",        "2018-09-01 14:20:33"),
(null, "Ana Silva Moura",         "ana@email.com",           "2018-10-05 09:10:22"),
(null, "Pedro Santos",      "pedro@email.com",         "2018-11-08 16:45:18"),
(null, "Carolina Oliveira", "carolina@email.com",      "2018-12-12 12:30:01"),
(null, "Gustavo Ferreira",  "gustavo@email.com",       "2019-01-15 08:55:47"),
(null, "Mariana Souza",     "mariana@email.com",       "2019-02-18 17:25:52"),
(null, "Rafael Costa",      "rafael@email.com",        "2019-03-23 10:40:36"),
(null, "Camila Pereira",    "camila@email.com",        "2019-04-26 14:15:59"),
(null, "Lucas Silva",       "lucas@email.com",         "2019-05-30 11:50:43"),
(null, "Isabela Santos",    "isabela@email.com",       "2019-06-04 09:35:12"),
(null, "Bruno Oliveira",    "bruno@email.com",         "2019-07-07 18:20:25"),
(null, "Júlia Ferreira",    "julia@email.com",         "2019-08-10 13:05:37"),
(null, "André Costa",       "andre@email.com",         "2019-09-13 15:45:59"),
(null, "Laura Pereira",     "laura@email.com",         "2019-10-16 11:30:21"),
(null, "Pedro Santos",      "pedro.santos@email.com",  "2019-11-19 09:15:42"),
(null, "Sofia Oliveira",    "sofia@email.com",         "2019-12-22 16:40:53"),
(null, "Gustavo Silva",     "gustavo.silva@email.com", "2020-01-25 13:25:17"),
(null, "Luiza Costa",       "luiza@email.com",         "2020-02-28 10:10:30"),
(null, "Matheus Pereira",   "matheus@email.com",       "2020-04-02 18:35:44"),
(null, "Gabriela Santos",   "gabriela@email.com",      "2020-05-06 12:20:59"),
(null, "Arthur Oliveira",   "arthur@email.com",        "2020-06-09 15:55:12"),
(null, "Manuela Ferreira",  "manuela@email.com",       "2020-07-13 11:40:26"),
(null, "Enzo Costa",        "enzo@email.com",          "2020-08-16 14:25:39"),
(null, "Antonella Pereira", "antonella@email.com",     "2020-09-19 09:10:51"),
(null, "Davi Silva",        "davi.silva@email.com",    "2020-10-22 17:35:03"),
(null, "Gustavo Silva Pereira", "gustavo@email.com",   "2023-06-27 18:30:45");

SELECT * FROM Teachers;

INSERT INTO `Classes` VALUES
(null, "1º Ano",  "07:10 - 14:50", 1, "2023-06-27 09:45:12"),
(null, "2º Ano",  "07:10 - 14:50", 1, "2023-06-27 09:45:12"),
(null, "3º Ano",  "07:10 - 14:50", 1, "2023-06-27 09:45:12"),
(null, "1º Mtec", "07:10 - 14:50", 1, "2023-06-27 09:45:12"),
(null, "2º Mtec", "07:10 - 14:50", 1, "2023-06-27 09:45:12"),
(null, "3º Mtec", "07:10 - 14:50", 1, "2023-06-27 09:45:12");

SELECT * FROM Classes;
