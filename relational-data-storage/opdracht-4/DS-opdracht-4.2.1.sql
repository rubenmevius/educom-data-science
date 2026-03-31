SELECT name, commune_ID
FROM mhl_cities
WHERE commune_ID=0;

-- OR --

SELECT c.name, c.commune_ID
FROM mhl_cities c
LEFT JOIN mhl_communes AS com ON com.id=c.commune_ID
WHERE com.name IS NULL;