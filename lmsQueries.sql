use LMS



insert into classRoll
values(4,1,1),(5,1,1),(6,1,1),(7,1,1),
(8,2,2),(9,2,2),(10,2,2),(5,2,2),
(5,3,3),(7,3,3),(10,3,3)	


insert into files
values('Luck Potion', null)
insert into files values('Ridiculous', null)
insert into files
values('Coma potion', null)
insert into files
values ('Patronus', null)

select * from files
select * from Module

insert into Module
values(1,1)
insert into module
values (5,2)
insert into module
values (1,3)
insert into module
values (5,4)

insert into grade
values(100,100,4,1,'9/3/1993', '9/2/1993'),
(100,70,5,1,'9/3/1993', '9/2/1993'),
(100,80,6,1,'9/3/1993', '9/2/1993'),
(100,95,7,1,'9/3/1993', '9/2/1993')
insert into grade values
(100,null, 5,2, '4/5/2024', null),
(100,95, 6,2, '4/5/2024', '4/2/2024')
insert into grade values
(100, 0, 5, 4, '4/1/2024', null)

select * from grade

insert into Assignment
values('Liquid Luck', 'A potion that gives the user good luck for 1 hour',1),
('Liquid Luck', 'A potion that gives the user good luck for 1 hour',2),
('Liquid Luck', 'A potion that gives the user good luck for 1 hour',3),
('Liquid Luck', 'A potion that gives the user good luck for 1 hour',4)
insert into Assignment
values('Boggart', 'A spell that makes you laugh', 6),
('Boggart', 'A spell that makes you laugh', 7)
insert into Assignment
values('Expecto Patronum', 'Spell drives away fear', 7)
update grade 
set studentGrade = 0
where studentGrade = null

select * from grade

select * from Assignment
/*10 Queries*/
/*1*/
select firstName, lastname, className, personID
from people
inner join student on people.personID = student.studentID
inner join classRoll on classRoll.studentID = student.studentID
inner join Class on classRoll.classID = class.classID

/*2*/
	select firstName, lastname,  className
from people
inner join student on people.personID = student.studentID
inner join classRoll on classRoll.studentID = student.studentID
inner join Class on classRoll.classID = class.classID
where className = 'Potions 101'

/*3*/
select firstName, lastname, student.studentID, className
from people
inner join student on people.personID = student.studentID
inner join classRoll on classRoll.studentID = student.studentID
inner join Class on classRoll.classID = class.classID
where classRoll.teacherID=3

/*4*/
select Title, avg(studentGrade) as AVGStudentGrade
from Assignment
inner join grade on grade.GradeID =Assignment.GradeID
inner join files on Grade.fileID=files.fileID
inner join module on files.fileID = module.fileID
inner join section on module.sectionID = section.sectionID
where classID =1
group by Title


/*5*/
select firstname, lastname
from people
inner join student on people.personID = student.studentID


/*6*/
select firstname, lastname
from people
inner join Employee on people.personID = Employee.EmployeeID

/*7*/
select * 
from class

/*8*/
select className from class
inner join classRoll on classRoll.classID=class.classID
inner join student on classroll.studentID = student.studentID
inner join people on people.personID=student.studentID
where firstName='Ron'

/*9*/
select className from class
where className like '%1%'
or className like '%2%'
or className like '%3%'
or className like '%4%'
or className like '%5%'
or className like '%6%'
or className like '%7%'
or className like '%8%'
or className like '%9%'
or className like '%0%'


/*10*/
select firstName, lastName from people
where firstname like 'H%'

