SELECT s.name, s.straat, s.huisnr, s.postcode, c.name AS plaatsnaam
FROM mhl_suppliers s
JOIN mhl_cities AS c ON s.city_ID=c.id
JOIN mhl_communes AS com ON c.commune_ID=com.id
WHERE com.name = 'Steenwijkerland';