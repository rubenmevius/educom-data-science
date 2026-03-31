SELECT c.name, IFNULL(com.name, 'INVALID') AS commune
FROM cities c
LEFT JOIN mhl_communes AS com ON c.commune_ID=com.id

