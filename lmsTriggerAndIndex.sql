use LMS

create NONCLUSTERED index PeopleIDSearch
on people(personID)

create NONCLUSTERED index GradesSearch
on grade(studentID)