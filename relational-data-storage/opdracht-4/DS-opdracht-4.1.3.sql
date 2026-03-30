SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers s
JOIN mhl_cities AS c ON s.city_ID=c.id
JOIN mhl_suppliers_mhl_rubriek_view AS subrub ON subrub.mhl_suppliers_ID=s.id
JOIN mhl_rubrieken AS rub ON rub.id=mhl_rubriek_view_ID
WHERE c.name = 'amsterdam'
AND rub.parent='235'
ORDER BY rub.name, s.name
;