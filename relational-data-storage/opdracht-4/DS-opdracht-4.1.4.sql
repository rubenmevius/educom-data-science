SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers s
JOIN mhl_yn_properties AS p ON s.id=p.supplier_ID
JOIN mhl_propertytypes AS pt ON p.propertytype_ID=pt.id
WHERE pt.name="ook voor particulieren" 
OR pt.name="specialistische leverancier";
