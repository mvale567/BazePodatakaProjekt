USE hotel;
    -- UPITI Marta Kralj (JMBAG: 2225112019)

-- UPIT 1 (kriva pošiljka tonera- tko je naručio i tko je dobavljač)
CREATE VIEW kontakt_dobavljaci AS
SELECT d.naziv, d.email, s.naziv_proizvoda AS naziv_robe
FROM dobavljac AS d
JOIN skladiste_dobavljac AS sd ON d.id = sd.id_dobavljac
JOIN skladiste AS s ON s.id = sd.id_skladiste
WHERE s.naziv_proizvoda LIKE 'Toner%';

CREATE VIEW provjera_stanja AS
SELECT r.ime, r.prezime, rs.napomena, rs.datum_provjere
FROM radnik AS r
JOIN radnik_skladiste AS rs ON r.id = rs.id_radnik
WHERE rs.napomena LIKE '%toner%'
ORDER BY rs.datum_provjere DESC;

SELECT CONCAT(ps.ime, " ", ps.prezime) AS narucitelj, kd.naziv AS naziv_dobavljaca, kd.email, kd.naziv_robe
FROM provjera_stanja AS ps
CROSS JOIN kontakt_dobavljaci AS kd;
-- KRAJ UPITA 1

-- UPIT 2 (prikaz preostalih radnika nakon sakrivanja radnika koji je dao otkaz)
CREATE VIEW preostali_radnici AS
SELECT *
FROM radnik
WHERE ime NOT LIKE 'Marta' AND prezime NOT LIKE 'Kralj' AND id!=10;

SELECT id
FROM radnik
WHERE ime LIKE 'Marta' AND prezime LIKE 'Kralj';
-- KRAJ UPITA 2

-- UPIT 3 (podatci za račun Ivane Marinović)
CREATE VIEW racun_Ivana_Marinović AS
SELECT CONCAT(g.ime, " ", g.prezime) AS platitelj, s.broj_sobe, s.cijena_nocenja, DATEDIFF(rez.datum_odjave, rez.datum_prijave) AS broj_dana, s.cijena_nocenja*DATEDIFF(rez.datum_odjave, rez.datum_prijave)  AS ukupno 
FROM rezervacija AS rez
JOIN gost AS g ON rez.id=g.id
CROSS JOIN soba AS s 
WHERE g.ime LIKE 'Ivana' AND g.prezime LIKE 'Marinović' AND s.id=2;
-- KRAJ UPITA 3

-- UPIT 4 (koliko je preostalo proizvoda, dobavljač i kontakt)
CREATE VIEW kolicina_proizvoda_i_dobavljaci AS
SELECT s.naziv_proizvoda, s.kolicina_proizvoda, d.naziv, d.kontakt_osoba, d.telefon
FROM skladiste AS s
LEFT JOIN skladiste_dobavljac AS sd ON s.id = sd.id_skladiste
LEFT JOIN dobavljac AS d ON sd.id_dobavljac = d.id
ORDER BY s.kolicina_proizvoda;
-- KRAJ UPITA 4

-- UPIT 5 (evidencija soba po tipu sobe)
CREATE VIEW evidencija_soba AS
SELECT tip, COUNT(*) AS broj_soba
FROM soba
GROUP BY tip
ORDER BY broj_soba DESC;
-- KRAJ UPITA 5
