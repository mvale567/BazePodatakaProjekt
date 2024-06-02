USE Hotel;

## Iva Batur ## 

#1.Najčešći način plaćanja  i mjesec u kojem je to plaćanje izvršeno najviše puta
SELECT 
    vp.nacin_placanja AS najcesci_nacin_placanja,
    MONTH(r.datum) AS mjesec,
    COUNT(*) AS broj_placanja
FROM 
    racun AS r
JOIN 
    racun_vrsta_placanja AS rvp ON r.id = rvp.id_racun
JOIN 
    vrsta_placanja AS vp ON rvp.id_placanje = vp.id
GROUP BY 
    najcesci_nacin_placanja, mjesec
ORDER BY 
    broj_placanja DESC
LIMIT 1;

#2.U kojem mjesecu je bio najveći broj rezervacija u hotelu 
SELECT MONTH(datum_prijave) AS mjesec, COUNT(*) AS broj_rezervacija
FROM rezervacija
GROUP BY mjesec
ORDER BY broj_rezervacija DESC
LIMIT 1;

#3. . Prikaz svih gostiju koju su ostavili recenziju s ocjenom većom od 3
SELECT 
	CONCAT(g.ime, ' ', g.prezime) AS ime_gosta,
    AVG(r.ocjena) AS prosjecna_ocjena
FROM 
    gost AS g
JOIN 
    recenzija AS r ON g.id = r.id_gost
GROUP BY 
    g.id
HAVING 
    AVG(r.ocjena) > 3;
    
    
#4. Prikaz svih gostiju koji su potrošili više od 150 eura u restoranu.

SELECT 
    CONCAT(g.ime, ' ', g.prezime) AS ime_gosta,
    SUM(rr.cijena) AS ukupni_iznos_restoran
FROM 
    gost AS g
JOIN 
    gost_restoran AS gr ON g.id = gr.id_gost
JOIN 
    racun_restoran AS rr ON gr.id_restoran = rr.id_restoran
GROUP BY 
    g.id
HAVING 
    ukupni_iznos_restoran > 150;

#5. Top 3 najčešće rezervirane sobe, prosječnu ocjenu i recenzije za njih 

SELECT soba.broj_sobe, COUNT(*) AS broj_rezervacija, AVG(recenzija.ocjena) AS prosjecna_ocjena
FROM soba
JOIN rezervacija ON soba.id_rezervacija = rezervacija.id
LEFT JOIN recenzija ON rezervacija.id = recenzija.id_rezervacija
GROUP BY soba.id
ORDER BY broj_rezervacija DESC
LIMIT 3;

#6.Radnici koji rade u popodnevnoj smjeni i njihove rezervacije

SELECT radnik.ime, radnik.prezime, rezervacija.datum_prijave, rezervacija.datum_odjave
FROM radnik
JOIN radnik_smjena_radnika ON radnik.id = radnik_smjena_radnika.id_radnik
JOIN smjena_radnika ON radnik_smjena_radnika.id_smjena = smjena_radnika.id
JOIN rezervacija ON radnik.id = rezervacija.id_radnik
WHERE smjena_radnika.naziv = 'Popodnevna smjena';
