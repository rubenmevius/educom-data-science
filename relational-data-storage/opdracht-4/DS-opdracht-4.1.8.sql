SELECT 
c1.name,
c1.id, 
c2.id, 
g1.id, 
g2.id,
g1.name,
g2.name
FROM mhl_cities c1
JOIN mhl_cities c2 ON C1.name=c2.name
JOIN mhl_communes ON mhl_communes.id=c1.commune_ID
JOIN mhl_communes AS g1 ON c1.commune_ID=g1.id
JOIN mhl_communes AS g2 ON c2.commune_ID=g2.id
WHERE c1.id<c2.id
ORDER BY c1.name;