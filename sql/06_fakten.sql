TRUNCATE TABLE mart.f_fzg_messung;

WITH m AS
(
    SELECT payload ->> 'fin' AS fin,
    TO_TIMESTAMP(payload ->> 'zeit', 'DD.MM.YYYY HH24:MI:SS:MS') AS zeit,
    CAST (payload ->> 'geschwindigkeit' as integer) AS geschwindigkeit,
    CAST (payload ->> 'ort' as integer) AS ort_id, erstellt_am
    FROM staging.messung
)
INSERT INTO mart.f_fzg_messung (messung_erzeugt, empfang_eingetroffen, d_kunde_id, d_fahrzeug_id, d_ort_id, geschwindigkeit)
(SELECT m.zeit, m.erstellt_am, k.d_kunde_id, f.d_fahrzeug_id, o.d_ort_id, m.geschwindigkeit
FROM m
JOIN mart.d_fahrzeug AS f ON f.fin = m.fin
JOIN staging.ort AS so ON so.ort_id = m.ort_id
JOIN mart.d_ort AS o ON o.ort = so.ort
JOIN staging.fahrzeug as sf on m.fin = sf.fin
JOIN mart.d_kunde AS k ON k.kunde_id = sf.kunde_id);
