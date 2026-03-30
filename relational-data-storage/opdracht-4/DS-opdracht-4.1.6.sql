SELECT h.hitcount, s.name AS leverancier, c.name AS stad, com.name AS gemeente, dis.name AS provincie
FROM mhl_suppliers s
JOIN mhl_cities AS c ON s.city_ID=c.id
JOIN mhl_communes AS com ON c.commune_ID=com.id
JOIN mhl_districts AS dis ON com.district_ID=dis.id
JOIN mhl_hitcount AS h ON s.id=h.supplier_ID
WHERE dis.name IN ('Limburg', 'Zeeland', 'Noord-Brabant')
AND h.year='2014' AND h.month='1';