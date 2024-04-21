/*Retrieving number of applications applied to each job listing */
SELECT
    Job_Listing.JobID,
    Job_Listing.JobTitle,
    Job_Listing.Description,
    Job_Listing.Location,
    Job_Listing.Payment_in_INR,
    COUNT(Job_Application.ApplicationID) AS ApplicationCount
FROM
    Job_Listing
LEFT JOIN
    Job_Application ON Job_Listing.JobID = Job_Application.FK_JobID
GROUP BY
    Job_Listing.JobID, Job_Listing.JobTitle, Job_Listing.Description, Job_Listing.Location, Job_Listing.Payment_in_INR
ORDER BY
    ApplicationCount DESC;