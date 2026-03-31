SELECT 
    s.name, 
    SUM(h.hitcount) AS numhits, 
    COUNT(h.month), 
    ROUND(AVG(h.hitcount),0) AS avgpermonth
FROM mhl_hitcount h
JOIN mhl_suppliers AS s ON h.supplier_ID=s.id
GROUP BY s.name
HAVING numhits>100
ORDER BY avgpermonth DESC