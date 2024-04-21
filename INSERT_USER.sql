INSERT INTO HIRE_MUSICIAN.User
VALUES (101, 'Sankalp',sha1('hello@12345'), 'sankalpbiswal95@gmail.com'),
('102', 'Puru', sha1('hello@12345'), 'puru@gmail.com'),
('103', 'Parimal', sha1('hello@12345'), 'parimal@gmail.com'),
('104', 'Adam', sha1('hello@12345'), 'adam12@gmail.com'),
('105', 'Smith', sha1('hello@12345'), 'smith_10@gmail.com'),
('106', 'Ashley', sha1('hello@12345'), 'ashley_27@gmail.com'),
('107', 'Melvin', sha1('hello@12345'), 'melvin@gmail.com'),
('108', 'Ashton',sha1('hello@12345'), 'ashton92@gmail.com'),
('109', 'Piyush', sha1('hello@12345'), 'piyush97@gmail.com'),
('110', 'Samar', sha1('hello@12345'), 'samar99@gmail.com');

INSERT INTO HIRE_MUSICIAN.Employer_Profile
VALUES 
(002,'Independent',110,'9150932897'),
(003,'VAZ RECORDS',106,'9289328980'),
(004,'STANLEY RECORDS',107,'9159328970'),
(005,'SAMESQ RECORDS',109,'9999328970');



INSERT INTO HIRE_MUSICIAN.Musician_Profile
VALUES (010,'Sankalp','Classic rock RnB & Synthwave','Guitar & Beat Production','SOUNDCLOUD',101,8.5),
(011,'Puru','Multi','Bass guitar & Beat Production','Spotify',102,8.5),
(012,'Parimal','Classic rock Pop Rock & Hip-Hop','Vocals & Keyboard','soundcloud',103,7.5),
(013,'Adam','Multi','Vocals','N/A',104,05.50),
(014,'Smith','Synthwave & Synthpop','Keyboard','YoutubeMusic',105,6);

INSERT INTO HIRE_MUSICIAN.Job_Listing
VALUES (201,'Vocalist or Producer','Required for private gig',10000,'Delhi',003),
(208,'4 piece Band','Required for private gig',40000,'Delhi',005),
(219,'Producer','Required for event',25000,'Delhi',003);

INSERT INTO HIRE_MUSICIAN.Job_Application
VALUES (41,201,010),
(42,201,011),
(43,201,012),
(44,208,010),
(45,208,013),
(46,219,011);


