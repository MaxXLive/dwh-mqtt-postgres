DELETE FROM mart.d_ort;
DELETE FROM mart.d_kunde;
DELETE FROM mart.d_fahrzeug;

--- Ort
INSERT INTO mart.d_ort (land, ort)
SELECT l.land, o.ort
FROM staging.land AS l
JOIN staging.ort AS o
ON l.land_id = o.land_id;

--- Kunde
INSERT INTO mart.d_kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort_id, ort, land)
SELECT k.kunde_id, k.vorname, k.nachname, k.anrede, k.geschlecht, k.geburtsdatum, k.wohnort, o.ort, l.land
FROM staging.kunde AS k
JOIN staging.ort AS o
ON k.wohnort = o.ort_id
JOIN staging.land AS l
ON o.land_id = l.land_id;

--- Fahrzeug
INSERT INTO mart.d_fahrzeug (fin, kfz_kennzeichen, baujahr, modell, hersteller)
SELECT f.fin, k.kfz_kennzeichen, f.baujahr, f.modell, h.hersteller
FROM staging.fahrzeug AS f
JOIN staging.hersteller AS h
ON f.hersteller_code = h.hersteller_code
JOIN staging.kfzzuordnung AS k
ON f.fin = k.fin;
