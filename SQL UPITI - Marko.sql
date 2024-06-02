USE hotel;

### Marko Valečić ###

-- 1. UPIT: Dohvaćamo sve goste koji su ostavili za ocjenu recenzije 5 i id njihove rezervacije

SELECT gost.ime, gost.prezime, rezervacija.datum_prijave, rezervacija.datum_odjave, recenzija.ocjena
    FROM gost
        JOIN recenzija ON gost.id = recenzija.id_gost
        JOIN rezervacija ON recenzija.id_rezervacija = rezervacija.id
            WHERE recenzija.ocjena = '5';
            
-- 2. UPIT: Dohvaćanje svih radnika koji rade u jutarnjoj smjeni i njihove detalje o radnom mjestu

SELECT radnik.ime, radnik.prezime, radno_mjesto.naziv AS radno_mjesto, smjena_radnika.naziv AS smjena
FROM radnik
JOIN radnik_smjena_radnika ON radnik.id = radnik_smjena_radnika.id_radnik
JOIN smjena_radnika ON radnik_smjena_radnika.id_smjena = smjena_radnika.id
JOIN radno_mjesto ON radnik.id_radno_mjesto = radno_mjesto.id
WHERE smjena_radnika.naziv = 'Jutarnja smjena';

-- 3. UPIT: Dohvaćanje ukupnog iznosa potrošenog od strane svakog gosta

SELECT gost.ime, gost.prezime, SUM(racun.iznos) AS ukupno_potroseno
FROM gost
JOIN rezervacija ON gost.id = rezervacija.id_gost
JOIN racun ON rezervacija.id_racun = racun.id
GROUP BY gost.ime, gost.prezime;


SELECT * FROM gost;


SELECT radnik.ime, radnik.prezime, radno_mjesto.naziv
FROM radnik
JOIN radno_mjesto ON radnik.id_radno_mjesto = radno_mjesto.id;

SELECT gost.id, gost.ime, gost.prezime, SUM(racun.iznos) AS ukupan_racun
FROM gost
JOIN rezervacija ON gost.id = rezervacija.id_gost
JOIN racun ON rezervacija.id_racun = racun.id
GROUP BY gost.id, gost.ime, gost.prezime;


SELECT rezervacija.id_gost, rezervacija.datum_prijave, rezervacija.datum_odjave, 
       vrsta_placanja.nacin_placanja, SUM(racun.iznos) AS ukupan_iznos
FROM rezervacija
JOIN racun ON rezervacija.id_racun = racun.id
JOIN racun_vrsta_placanja ON racun.id = racun_vrsta_placanja.id_racun
JOIN vrsta_placanja ON racun_vrsta_placanja.id_placanje = vrsta_placanja.id
GROUP BY rezervacija.id_gost, rezervacija.datum_prijave, rezervacija.datum_odjave, vrsta_placanja.nacin_placanja;

SELECT rezervacija.id_gost, rezervacija.datum_prijave, rezervacija.datum_odjave, 
       soba.broj_sobe, vrsta_placanja.nacin_placanja, SUM(racun.iznos) AS ukupan_iznos
FROM rezervacija
JOIN racun ON rezervacija.id_racun = racun.id
JOIN racun_vrsta_placanja ON racun.id = racun_vrsta_placanja.id_racun
JOIN vrsta_placanja ON racun_vrsta_placanja.id_placanje = vrsta_placanja.id
JOIN soba ON rezervacija.id = soba.id_raspored_ciscenja  -- Promijenjen spoj na ID rezervacije
GROUP BY rezervacija.id_gost, rezervacija.datum_prijave, rezervacija.datum_odjave, soba.broj_sobe, vrsta_placanja.nacin_placanja;


SELECT gost.ime, gost.prezime, rezervacija.datum_prijave, rezervacija.datum_odjave, 
       soba.broj_sobe, vrsta_placanja.nacin_placanja, SUM(racun.iznos) AS ukupan_iznos
FROM rezervacija
JOIN racun ON rezervacija.id_racun = racun.id
JOIN racun_vrsta_placanja ON racun.id = racun_vrsta_placanja.id_racun
JOIN vrsta_placanja ON racun_vrsta_placanja.id_placanje = vrsta_placanja.id
JOIN soba ON rezervacija.id = soba.id_raspored_ciscenja
JOIN gost ON rezervacija.id_gost = gost.id
GROUP BY gost.ime, gost.prezime, rezervacija.datum_prijave, rezervacija.datum_odjave, soba.broj_sobe, vrsta_placanja.nacin_placanja;




SELECT rc.id AS 'ID rasporeda čišćenja', rc.datum AS 'Datum čišćenja', rc.stanje AS 'Stanje čišćenja',
       s.id AS 'ID sobe', s.broj_sobe AS 'Broj sobe', s.tip AS 'Tip sobe',
       r.id AS 'ID radnika', CONCAT(r.ime, ' ', r.prezime) AS 'Ime i prezime radnika', rm.naziv AS 'Radno mjesto'
FROM raspored_ciscenja rc
INNER JOIN soba s ON rc.id = s.id_raspored_ciscenja
LEFT JOIN radnik_raspored_ciscenja rrc ON rc.id = rrc.id_raspored_ciscenja
LEFT JOIN radnik r ON rrc.id_radnik = r.id
LEFT JOIN radno_mjesto rm ON r.id_radno_mjesto = rm.id;

SELECT rc.datum, CONCAT(r.ime, ' ', r.prezime) AS radnik, s.broj_sobe
FROM raspored_ciscenja rc
JOIN radnik_raspored_ciscenja rrc ON rc.id = rrc.id_raspored_ciscenja
JOIN radnik r ON rrc.id_radnik = r.id
JOIN soba s ON rc.id_soba = s.id
WHERE r.odjel = 'Cistaci';

SELECT radnik.id, raspored_ciscenja.id
FROM radnik
JOIN radno_mjesto ON radnik.id_radno_mjesto = radno_mjesto.id
JOIN raspored_ciscenja ON radno_mjesto.odjel = 'Odrzavanje';
