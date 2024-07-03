use LMS
go

/*stored procedures*/
/*1*/
create or alter procedure teacherToDo @employeeID int
as
begin
	/*get assignments due this week for input instructure*/
	select distinct Title, dueDate
	from Assignment
	inner join grade on grade.GradeID =Assignment.GradeID
	inner join files on grade.fileID = files.fileID
	inner join module on module.fileID = files.fileID
	inner join section on section.sectionID = module.sectionID
	inner join class on class.classID = section.classID
	where teacherID = @employeeID
	and dueDate <= dateAdd(day, 8, getDate())
	and dueDate >= getDate()
	
end
go
/*2*/
create or alter procedure createStudent @firstname varchar(50), @lastname varchar(50), @middle varchar(50), @email varchar(255), @educationLvlID int
as
begin
	insert into people 
	values(@firstname, @lastname, @middle, @email)
	insert into student
	values(@educationLvlID, (select people.personID from people where email = @email))
end
go
/*3*/
create or alter procedure createTeacher @firstname varchar(50), @lastname varchar(50), @middle varchar(50), @email varchar(255), @deplomaID int
as
begin

	insert into people 
	values(@firstname, @lastname, @middle, @email)
	insert into Employee
	values((select  personID from people where email = @email and lastName=@lastname), @deplomaID)
end
go

/*test procedures*/
execute  teacherToDo '3'

execute createStudent 'River', 'Song', 'NULL', 'RSong@Hogwarts.com', '2'
execute createTeacher 'The', 'Doctor', 'Null', 'TDoctor@Hogwarts.com', '3'




select * from people
where lastName = 'Doctor'
or lastName='Song'

select * from Employee
where EmployeeID=15
