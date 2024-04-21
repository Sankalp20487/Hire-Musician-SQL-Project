SELECT
    'Musician' AS UserType,
    COUNT(*) AS UserCount
FROM
    Musician_Profile
UNION ALL
SELECT
    'Employer' AS UserType,
    COUNT(*) AS UserCount
FROM
    Employer_Profile;
    