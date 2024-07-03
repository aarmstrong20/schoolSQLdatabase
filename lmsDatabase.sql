
if DB_ID(N'LMS') is not null 
	drop database LMS;


create database LMS;
go

use LMS 
go


drop table if exists Quiz
drop table if exists Announcement
drop table if exists Assignment
drop table if exists Grade
drop table if exists Questions
drop table if exists QOption
drop table if exists Module
drop table if exists Files




drop table if exists section
drop table if exists resources
drop table if exists classRoll
drop table if exists Class
drop table if exists Employee
drop table if exists deplomas
drop table if exists student

drop table if exists EducationLevel
drop table if exists people
go
create table EducationLevel(
	educationLevelID int identity(1,1) not null primary key,
	description varchar(20) not null,
	check (description in ( 'Sophmore' ,  'Junior', 'Senior'))
	)
go

go
create table Class(
	classID int identity(1,1) not null primary key,
	[description] varchar(255),
	className varchar(50) not null,
	teacherID int not null
)
go

create table people(
	personID int identity(1,1) not null primary key,
	firstName varchar(20) not null,
	lastName varchar(20) not null,
	middleName varchar(20),
	email varchar(50) not null,
	constraint validEmailChk check (email like '%@%.%')
)
go

go
create table student(
	educationLevelID int  not null,
	studentID int primary key not null,
	Foreign key (educationLevelID) references EducationLevel(educationLevelID),
	Foreign Key (studentID) references people(personID)
)
go


go
create table classRoll(
	classRollID int identity(1,1) not null primary key,
	studentID int,
	teacherID int not null,
	classID int not null,
	foreign key(classID) references Class(classID),
	foreign key (studentID) references student(studentID)

)
go




create table deplomas(
	deplomaID int identity(1,1) not null primary key,
	deplomaDescription varchar(50) not null,
	pic varbinary
	)
go

create table Employee(
	EmployeeID int  not null primary key,
	deplomaID int not null,
	foreign key (deplomaID) references deplomas(deplomaID),
	foreign key (EmployeeID) references people(personID) on delete cascade
	)
go

create table Announcement(
	AnnouncementID int identity(1,1) not null primary key,
	Title varchar(20),
	content varchar(255) not null,
	classID int not null,
	foreign key (classID) references class(classID)
	)
go

create table resources(
	resourceID int not null identity(1,1) primary key,
	[description] varchar(50),
	content varchar(50) not null,
	classID int not null,
	foreign key (classID) references Class(classID)
	)

create table section(
	sectionID int identity(1,1) not null primary key,
	classID int not null,
	description varchar(255),
	foreign key (classID) references class(classID)
	)

create table QOption(
	QoptionID int identity(1,1) not null primary key,
	Qdescription varchar(30) not null
	)

create table Questions(
	QID int identity(1,1) not null primary key,
	Qdescription varchar(50) not null,
	Qanswer int not null,
	QoptionID int not null,
	foreign key (Qanswer) references QOption(QoptionID),
	foreign key (QoptionID) references QOption(QoptionID) on delete cascade
	)

create table Files(
	fileID int identity(1,1) not null primary key,
	filenames varchar(20) not null,
	fileContent varbinary(max)
	)

create table Module(
	moduleID int identity(1,1) not null primary key,
	sectionID int not null,
	fileID int
	foreign key (fileID) references Files(fileID) on delete cascade,
	foreign key (sectionID) references section(sectionID) on delete cascade
	)

create table Grade(
	GradeID int identity(1,1) not null primary key,
	maxGrade int not null,
	studentGrade int,
	studentID int,
	fileID int,
	dueDate date,
	turnedIn date,
	foreign key (fileID) references Files(fileID) on delete cascade,
	foreign key (studentID) references student(studentID)
	)

create table Assignment(
	AssignmentID int identity(1,1) not null primary key,
	Title varchar(20) not null,
	[description] varchar(255) not null,
	GradeID int,
	foreign key (GradeID) references Grade(GradeID) on delete cascade
	)

create table Quiz(
	quizID int identity(1,1) not null primary key,
	gradeID int,
	Title varchar(20) not null,
	QID int,
	foreign key (QID) references Questions(QID) on delete cascade,
	foreign key (gradeID) references Grade(GradeID) on delete cascade
	)