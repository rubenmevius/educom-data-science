SELECT 
    s.name, 
    pt.name, 
    IFNULL(yn.content, "NOT SET") AS value
FROM mhl_suppliers s
CROSS JOIN mhl_propertytypes AS pt
LEFT JOIN mhl_yn_properties AS yn ON yn.supplier_ID=s.id
JOIN mhl_cities ON s.city_ID=mhl_cities.id
WHERE mhl_cities.name='amsterdam' AND pt.proptype='A';
