SELECT
    JobTitle AS GigType,
    AVG(Payment_in_INR) AS AveragePay
FROM
    Job_Listing
GROUP BY
    JobTitle;
    
    