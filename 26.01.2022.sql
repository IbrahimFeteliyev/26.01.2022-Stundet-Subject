CREATE TABLE Subjects(
	SubjectId int Identity(1,1) primary key,
	SubjectName nvarchar(100),
	StartTime nvarchar(100),
	EndTime nvarchar(100),
	RoomNumber int
)

drop table Subjects


CREATE TABLE Students (
	StudentId int Identity(1,1) primary key,
	First_Name nvarchar(200) NOT NULL,
    Last_Name nvarchar(200) NOT NULL,
	Course nvarchar(200),
	Election_year int
)

CREATE TABLE Groups(
    GroupId int Identity(1,1) primary key,
	Group_Name nvarchar(200) NOT NULL
)

INSERT INTO Groups (Group_Name)
VALUES ('652.19E'),('682.20'),('632.21E')

select * from Groups

drop table Students



INSERT INTO Students (First_Name,Last_Name,Course,Election_year,SubjectId)
VALUES ('Ibrahim','Feteliyev','3rd',2019,3),
       ('Salvar','Cafarov','2nd',2020,2),
       ('Aslan','Mashadov','1st',2021,1)


INSERT INTO Subjects (SubjectName,StartTime,EndTime,RoomNumber)
VALUES ('Philosophy','8:30','9:50',1418),
       ('OPP','10:05','11:25',1425),
       ('Knowledge Engineering','11:50','13:00',1418)

SELECT * from Subjects


alter table Students
add SubjectId INT FOREIGN KEY REFERENCES Subjects(SubjectId)




select Subjects.SubjectName, Subjects.RoomNumber, Students.First_Name, Students.Last_Name, Students.Course,Subjects.StartTime 
from Students
INNER JOIN Subjects ON Students.SubjectId=Subjects.SubjectId


SELECT * from Students
