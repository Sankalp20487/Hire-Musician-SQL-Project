/*DISPLAY THE RELEVANT INFORMATION OF EMPLOYERS */
SELECT * 
FROM HIRE_MUSICIAN.User
JOIN Employer_Profile ON User.UserID = Employer_Profile.FK_UserID_Employer;

/*DISPLAY THE RELEVANT INFORMATION OF MUSICIANS */
SELECT * 
FROM HIRE_MUSICIAN.User
JOIN Musician_Profile ON User.UserID = Musician_Profile.FK_UserID_Musician;
