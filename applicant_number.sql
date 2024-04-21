/*Number of applicants who have applied to each job listing*/
SELECT
    Job_Listing.JobTitle,
    
    COUNT(Job_Application.ApplicationID) AS ApplicationCount
FROM
    Job_Application
INNER JOIN
    Job_Listing ON Job_Application.FK_JobID = Job_Listing.JobID
GROUP BY
    Job_Listing.JobTitle;
    