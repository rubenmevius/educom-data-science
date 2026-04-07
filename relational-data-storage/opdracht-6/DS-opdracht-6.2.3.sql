SELECT
    DAYNAME(joindate) AS 'weekdag',
    COUNT(ID) AS 'aantal leveranciers'
FROM mhl_suppliers
GROUP BY DAYNAME(joindate), DAYOFWEEK(joindate)
ORDER BY DAYOFWEEK(joindate)