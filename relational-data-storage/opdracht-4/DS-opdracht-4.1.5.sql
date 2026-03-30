SELECT s.name, s.straat, s.huisnr, s.postcode, l.lat, l.lng
FROM mhl_suppliers s
JOIN pc_lat_long AS l
ON s.postcode=l.pc6
ORDER BY l.lat DESC
LIMIT 5;