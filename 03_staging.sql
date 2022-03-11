insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
  values (1337, 'Max', 'Ermackov', 'Herr', 'männlich', to_date('01.02.1900', 'DD.MM.YYYY'), 1, 'CRM');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
  values ('WBAAL31050AY31337', 1337, 2001, '381i', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
  values ('WBAAL31050AY31337', 'BB-MX 1234', 'Fahrzeug DB');
