/* Most popular genre amongst musicians*/
SELECT
    Genre AS MusicGenre,
    COUNT(MusicianID) AS MusicianCount
FROM
    Musician_Profile
GROUP BY
    Genre
ORDER BY
    MusicianCount DESC;