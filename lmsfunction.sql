use LMS
go
create or alter function numStudentsMissing2plusAssignments( @sectionID int) returns int
as
begin 
	declare @numStudents int
	set @numStudents = (select count(studentID)
							from grade
							inner join Files on files.fileID = Grade.fileID
							inner join Module on files.fileID = module.moduleID
							where studentGrade = 0
							and sectionID = @sectionID
						)


	return @numStudents
end
go


create or alter function NumStudentsInClass(@classID int) returns int
as
begin
	declare @numStudents int

	set @numStudents = (select count(studentID)
						from classRoll	
						where classID = @classID
						)

	return @numstudents
end
go




select dbo.numStudentsMissing2plusAssignments(5) as numStudentsMissingAssignments
select dbo.NumStudentsInClass(1) as numStudents