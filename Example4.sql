/* WHAT ARE THE DETAILS OF THE JOBS THAT A MUSICIAN HAS APPLIED TO? */
/*Joined the tables Musician_Profile , Job_Application and Job_Listing using the table Job_Application */
SELECT Musician_Profile.Name, Musician_Profile.Skills, Job_Listing.JobTitle,
Job_Listing.Description, Job_Listing.Payment_in_INR, Job_Listing.Location
FROM HIRE_MUSICIAN.Job_Application
JOIN Musician_Profile ON Job_Application.FK_MusicianID = Musician_Profile.MusicianID
JOIN Job_Listing ON Job_Application.FK_JobID = Job_Listing.JobID
ORDER BY Name;