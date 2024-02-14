WITH YOU_AND_A_FRIEND AS (
    SELECT 
        s.Name,
        p_you.Salary AS Salary_YOU,
        p_a_friend.Salary AS Salary_A_FRIEND
    FROM 
        FRIENDS f
    INNER JOIN
        STUDENTS s ON f.ID = s.ID
    INNER JOIN 
        PACKAGES p_you ON f.ID = p_you.ID
    INNER JOIN 
        PACKAGES p_a_friend ON f.Friend_ID = p_a_friend.ID
)

SELECT Name
FROM YOU_AND_A_FRIEND
WHERE Salary_YOU < Salary_A_FRIEND
ORDER BY Salary_A_FRIEND;