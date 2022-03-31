insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
values (814218, 'Hannes', 'Müller', 'Herr', 'männlich', to_date('24.08.1999', 'DD.MM.YYYY'), 7, 'CRM');
insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
values ('SCC13186131313135', 814218, 1985, 'Evija', 'Fahrzeug DB');
insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
values ('SCC13186131313135', 'MUL-T 2', 'Fahrzeug DB');INSERT INTO staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
VALUES (123456, 'Viet', 'Dang', 'Herr', 'männlich', to_date('14.05.1999', 'DD.MM.YYYY'), 8, 'CRM');

INSERT INTO staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
VALUES ('WVWIAmVeryRandom1', 123456, 2020, 'Mercedes CLA 250e', 'Fahrzeug DB');

INSERT INTO staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
VALUES ('WVWIAmVeryRandom1', 'GP-VD 44', 'Fahrzeug DB');

insert into staging.kunde (kunde_id , vorname , nachname , anrede, geschlecht , geburtsdatum , wohnort, quelle)
values (171999, 'Jane', 'Doe', 'Frau', 'weiblich', to_date ('04.02.1969', 'DD.MM.YYYY'), 7, 'CRM');

insert
into staging.fahrzeug (fin , kunde_id , baujahr , modell , quelle)
values
('SNTU411STM9032259', 171999, 1932, 'fiat 65', 'Fahrzeug DB');
insert
into staging.kfzzuordnung (fin , kfz_kennzeichen , quelle)
values
('SNTU411STM9032259', 'S-JD 123', 'Fahrzeug DB');insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
  values 
    (161185, 'Dinho', 'Mango', 'Herr', 'männlich', to_date('16.11.1985', 'DD.MM.YYYY'), 4, 'CRM');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
  values ('WPO1029UR4329080M', 161185, 2022, 'Porsche 911 Turbo', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
  values ('WPO1029UR4329080M', 'M-LC 22', 'Fahrzeug DB');insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
  values (1337, 'Max', 'Ermackov', 'Herr', 'männlich', to_date('01.02.1900', 'DD.MM.YYYY'), 1, 'CRM');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
  values ('WBAAL31050AY31337', 1337, 2001, '381i', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
  values ('WBAAL31050AY31337', 'BB-MX 1234', 'Fahrzeug DB');

insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
values (537492, 'Julia', 'Leonsa', 'Frau', 'weiblich', to_date('05.04.2000', 'DD.MM.YYYY'), 1, 'SRC');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
values ('WPO8301RNW82', 537492, 1957, 'Porsche 695', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
values ('WPO8301RNW82', 'WN-JL 2004', 'Fahrzeug DB');

insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
  values (532985, 'Lukas', 'Himmelsläufer', 'Herr', 'männlich', to_date('25.05.19787', 'DD.MM.YYYY'), 1, 'CRM');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
  values ('WVWIAmVeryRandom', 532985, 2011, 'Seat Leon 1P', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
  values ('WVWIAmVeryRandom', 'DIZ-B 165', 'Fahrzeug DB');
  
insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle) 
values (171894, 'Makss', 'Golubs', 'Frau', 'weiblich', to_date('11.01.1999', 'DD.MM.YYYY'), 1, 'CRM');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
values ('SNTU411STM9032153', 171894, 2020, 'Audi A4', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
values ('SNTU411STM9032153', 'MA-CZ 281', 'Fahrzeug DB');
insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
values (171895, 'Micheal', 'Kerrisk', 'Herr', 'männlich', to_date('08.03.1961', 'DD.MM.YYYY'), 2, 'CRM');
insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
values ('SNTU411STM9032154', 171895, 2020, 'Taycan 4S', 'Fahrzeug DB');
insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
values ('SNTU411STM9032154', 'M-AN 007', 'Fahrzeug DB');insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
    values (424242, 'Kevin', 'Meier', 'Herr', 'männlich', to_date('09.09.1919', 'DD.MM.YYYY'), 7, 'CRM');
insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
    values ('SNTU411STM9042150', 424242, 2020, 'Richtig Freshes Modell', 'Starlink');
insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
    values ('SNTU411STM9042150', 'AB-XY 123', 'Starlink');insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle) 
values (171896, 'Clara', 'Kümpel', 'Frau', 'weiblich', to_date('13.11.2000', 'DD.MM.YYYY'), 1, 'CRM');
insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
values ('SNTU411STM9032151', 171896, 2020, 'Tesla Model X', 'Fahrzeug DB');
insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
values ('SNTU411STM9032151', 'S-AB 112', 'Fahrzeug DB');
insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
values (666, 'Almir', 'Omerovic', 'Herr', 'männlich', to_date('14.04.1999', 'DD.MM.YYYY'), 1, 'WBA');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
values ('WBAVB71070VA58073', 666, 2014, 'BMW 118i', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
values ('WBAVB71070VA58073', 'GP-AS 1404', 'Fahrzeug DB');
INSERT INTO staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle) VALUES (281756, 'Sven', 'Bauer', 'Herr', 'männlich', to_date('01.01.2000', 'DD.MM.YYYY'), 9, 'CRM');
INSERT INTO staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle) VALUES ('SCCX420STR1337187', 281756, 2021, 'Lotus Type 130', 'Fahrzeug DB');
INSERT INTO staging.kfzzuordnung (fin, kfz_kennzeichen, quelle) VALUES ('SCCX420STR1337187', 'S-RS 1337', 'Fahrzeug DB');insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
values (204983, 'Luke', 'Skywalker', 'Herr', 'männlich', to_date('25.09.1951', 'DD.MM.YYYY'), 1, 'CRM');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
values ('WPO1029UR4329081M', 204983, 1982, 'Porsche 1981 911', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
values ('WPO1029UR4329081M', 'S-KY 405', 'Fahrzeug DB');
insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
  values (532986, 'Lukas', 'Himmelsläufer', 'Herr', 'männlich', to_date('25.05.19787', 'DD.MM.YYYY'), 1, 'CRM');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
  values ('WVWIAmVeryRandom2', 532986, 2011, 'Seat Leon 1P', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
  values ('WVWIAmVeryRandom2', 'DIZ-B 165', 'Fahrzeug DB');
  
insert into staging.kunde (kunde_id, vorname, nachname, anrede, geschlecht, geburtsdatum, wohnort, quelle)
  values (171877, 'Skywalker', 'Luke', 'Herr', 'männlich', to_date('04.07.2000', 'DD.MM.YYYY'), 6, 'WPO');

insert into staging.fahrzeug (fin, kunde_id, baujahr, modell, quelle)
  values ('SNTU411STM9032152', 171877, 1988, 'Porsche 911', 'Fahrzeug DB');

insert into staging.kfzzuordnung (fin, kfz_kennzeichen, quelle)
  values ('SNTU411STM9032152', 'PE-LS 407', 'Fahrzeug DB');