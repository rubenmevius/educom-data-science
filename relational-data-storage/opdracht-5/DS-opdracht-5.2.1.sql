SELECT 
    s.name AS leverancier,
    IFNULL (c.name, 'tav de directie') AS aanhef,
    IF (s.p_address<>'', p_address, CONCAT(s.straat, '', huisnr)) AS adres,
    IF (s.p_address<>'', p_postcode, postcode) AS postcode,
    IF (s.p_address<>'', p.name, v.name) AS stad,
    IF (s.p_address<>'', pp.name, vp.name) AS provincie
FROM mhl_suppliers s
LEFT JOIN mhl_contacts AS c ON s.ID=c.supplier_ID AND c.department=3
LEFT JOIN mhl_cities AS p ON p.id=s.p_city_ID
LEFT JOIN mhl_communes AS pc ON pc.ID=p.commune_ID
LEFT JOIN mhl_districts AS pp ON pp.ID=PC.district_ID
LEFT JOIN mhl_cities AS v ON v.ID=S.city_ID
LEFT JOIN mhl_communes AS vc on vc.ID=v.commune_ID
LEFT JOIN mhl_districts AS vp ON vp.ID=vc.district_ID

WHERE postcode <> ''
ORDER BY provincie, stad, leverancier
