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

-- 4. UPIT: Pregled svih gostiju zajedno s njihovim rezervacijama i ukupnim iznosom računa--

CREATE VIEW gost_rezervacija_racun AS
SELECT g.ime, g.prezime, g.email, r.datum_prijave, r.datum_odjave, r.broj_gostiju, rc.iznos
FROM gost AS g
JOIN rezervacija AS r ON g.id = r.id_gost
JOIN racun AS rc ON r.id_racun = rc.id;

-- Korištenje pogleda za prikaz podataka
SELECT * FROM gost_rezervacija_racun;

-- 5. UPIT

SELECT 
    g.id AS 'ID Gosta',
    CONCAT(g.ime, ' ', g.prezime) AS 'Ime i Prezime Gosta',
    r.id AS 'ID Racuna',
    r.datum AS 'Datum Racuna',
    r.iznos AS 'Iznos Racuna',
    u.naziv AS 'Naziv Usluge',
    u.cijena AS 'Cijena Usluge'
FROM 
    gost AS g
JOIN 
    rezervacija AS re ON g.id = re.id_gost
JOIN 
    racun AS r ON re.id_racun = r.id
LEFT JOIN 
    racun_usluge AS ru ON r.id = ru.id_racun
LEFT JOIN 
    usluge AS u ON ru.id_usluga = u.id;

SELECT * FROM skladiste_dobavljac;


