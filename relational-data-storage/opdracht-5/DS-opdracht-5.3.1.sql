CREATE VIEW DIRECTIE AS
    SELECT
        supplier_ID,
        c.name AS contact,
        contacttype AS functie,
        d.name AS department
    FROM mhl_contacts c
    LEFT JOIN mhl_departments AS d ON department=d.id
    WHERE IF (d.name="Directie", TRUE, contacttype LIKE '%directeur%')