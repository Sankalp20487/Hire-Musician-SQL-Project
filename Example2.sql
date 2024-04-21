/* FIND THE EMAIL ID OF MUSICIANS WHO ARE MULTIPLE GENRES OR PLAY CLASSIC ROCK AND HAVE MORE THAN 5 YEARS OF EXPERIENCE   */
/* Joined the tables User and Musician_Profile using common column 'UserID' and then used 'WHERE' to specify conditons 
 and 'LIKE' for pattern matching*/
SELECT User.Email, User.Username, Musician_Profile.Skills, Musician_Profile.Genre,
Musician_Profile.Experience_in_Years, Musician_Profile.MusicianID 
FROM HIRE_MUSICIAN.User
JOIN Musician_Profile ON User.UserID = Musician_Profile.FK_UserID_Musician
WHERE (Genre LIKE 'Classic Rock%'
 OR Genre LIKE 'Multi%') and Experience_in_Years > 5; 