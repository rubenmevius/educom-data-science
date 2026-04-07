SELECT
    c.name AS Stad,
    COUNT(IF(mt.name = 'Gold', 1, NULL)) GOLD,
    COUNT(IF(mt.name = 'Silver', 1, NULL)) SILVER,
    COUNT(IF(mt.name = 'Bronze', 1, NULL)) BRONZE,
    COUNT(IF(mt.name NOT IN ('Gold', 'Silver', 'Bronze'),1 ,NULL)) OTHER
FROM mhl_suppliers s
JOIN mhl_membertypes AS mt ON mt.id=s.membertype
JOIN mhl_cities AS c ON c.id=s.city_ID
GROUP BY city_id
ORDER BY GOLD DESC, SILVER DESC, BRONZE DESC, OTHER DESC