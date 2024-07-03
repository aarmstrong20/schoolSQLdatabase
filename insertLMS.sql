use LMS
go



/*3 teachers*/
insert into people
values('Severus', 'Snape', null, 'SSnape@Hogwarts.com'),
('Pomina', 'Sprout', null, 'PSprout@Hoogwarts.com'),
('Albus', 'Dumbledore', 'Percival', 'ADumbledore@Hogwarts.com')

insert into deplomas
values('Masters Potions', null),
('Masters Herbology', null),
('Masters Defence against the dark arts', null)

insert into Employee
values(1, 1),
(2, 2),
(3, 3)


/*education levels*/
insert into EducationLevel
values('Sophmore'), ('Junior'), ('Senior')

/*10 students*/
insert into people
values('Hermione', 'Granger', null, 'HGranger@Hogwarts.com'),
('Ron', 'Weasley', 'Billious', 'RWeasley@Hogwarts.com'),
('Harry', 'Potter', 'James', 'HPotter@Hogwarts.com'),
('Draco', 'Malfoy', 'Lucious', 'DMalfoy@Hogwarts.com'),
('Bellatrix', 'Black', null, 'BBlack@Hogwarts.com'),
('Sirius', 'Black', null,  'SBlack@Hogwarts.com'),
('Lily', 'Evens', null, 'LEvens@Hogwarts.com'),
('Tom', 'Riddle', 'Marvolo', 'TRiddle@Hogwarts.com'),
('Nevile', 'Longbottom', null, 'NLongbottom@Hogwarts.com'),
('Regulous', 'Black', 'Arcturous', 'RBlack@Hogwarts.com')

insert into student
values(1,1),
(1,2),
(1,3),
(1,4),
(2,5),
(2,6),
(2,7),
(3,8),
(1,9),
(2,10)


/*3 classes*/
insert into class
values(' I can teach you how to bewitch the mind and ensnare the senses. I can tell you how to bottle fame, brew glory, and even put a stopper in death.',
'Potions 101', 1),
(' the study of magical and mundane plants and fungi', 'Herbology', 2),
('We will be needing a new Defense Against the Dark Arts teacher.... Dear me, we do seem to run through them, dont we?', 'Defence aginst the dark arts', 3)

/*4 sections */
insert into section
values(1, 'OWL potions'),
(1, 'NEWT potions'),
(2, 'OWL Herbology'),
(2, 'NEWT herbology'),
(3, 'OWL Defece against the dark arts'),
(3, 'NEWT defence against the dark arts') 

