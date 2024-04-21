/*Display the job listings and details of person who has listed it*/
/*Joined the tables Employer_Profile , User and Job_Listing using the table Employer_Profile */

SELECT User.Email, User.Username, Employer_Profile.CompanyName, Employer_Profile.ContactInfo,
Job_Listing.JobTitle, Job_Listing.Description ,Job_Listing.Payment_in_INR, Job_Listing.Location  
FROM HIRE_MUSICIAN.Employer_Profile
JOIN User ON Employer_Profile.FK_UserID_Employer = User.UserID
JOIN Job_Listing ON Employer_Profile.EmployerID = Job_Listing.FK_EmployerID
ORDER BY Payment_in_INR DESC;
