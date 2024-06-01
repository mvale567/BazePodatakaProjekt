USE hotel;
    -- UPITI Marta Kralj (JMBAG: 2225112019)

-- UPIT 1
CREATE VIEW kontakt_dobavljaci AS
SELECT d.naziv, d.email, s.naziv_proizvoda AS naziv_robe
FROM dobavljac AS d
JOIN skladiste AS s ON d.id = s.id
WHERE s.naziv_proizvoda LIKE 'Toneri%';

CREATE VIEW provjera_stanja AS
SELECT r.ime, r.prezime, rs.napomena
FROM radnik AS r
JOIN radnik_skladiste AS rs ON r.id = rs.id_radnik
WHERE rs.napomena LIKE '%toner%';

SELECT CONCAT(ps.ime, " ", ps.prezime) AS narucitelj, kd.naziv AS naziv_dobavljaca, kd.email, kd.naziv_robe
FROM provjera_stanja AS ps
CROSS JOIN kontakt_dobavljaci AS kd;
-- KRAJ UPITA 1

-- UPIT 2
CREATE VIEW preostali_radnici AS
SELECT *
FROM radnik
WHERE ime NOT LIKE 'Lidija' AND prezime NOT LIKE 'Perić' AND id=28;

SELECT id
FROM radnik
WHERE ime LIKE 'Lidija' AND prezime LIKE 'Perić';
-- KRAJ UPITA 2

-- UPIT 3
CREATE VIEW racun_Ana_Anković AS
SELECT CONCAT(g.ime, " ", g.prezime) AS platitelj, s.broj_sobe, s.cijena_nocenja, DATEDIFF(rez.datum_odjave, rez.datum_prijave) AS broj_dana, s.cijena_nocenja*DATEDIFF(rez.datum_odjave, rez.datum_prijave)  AS ukupno 
FROM rezervacija AS rez
JOIN gost AS g ON rez.id=g.id
CROSS JOIN soba AS s 
WHERE g.ime LIKE 'Ana' AND g.prezime LIKE 'Anković' AND s.id=3;
-- KRAJ UPITA 3

-- UPIT 4 (koliko je preostalo proizvoda, dobavljač i kontakt)
/*Voditelj nabave je zatražio evidenciju količine pojedinog proizvoda te kontakt
 dobavljača za svaki proizvod. To smo učinili na sljedeći način: kreirali smo pogled
 kolicina_proizvoda_i_dobavljaci te smo selektirali atribute naziv_proizvoda i
 kolicina_proizvoda iz tablice skladiste te atribute naziv, kontakt_osoba i telefon
 iz tablice dobavljac. Spojili smo tablice skladiste i skladiste_dobavljac
 operatorom LEFT JOIN (kako bi izbjegli duplikate proizvoda) na atributima
 id iz tablice skladiste i id_skladiste iz tablice skladiste_dobavljac. Operatorom 
 LEFT JOIN smo spojili i tablicu dobavljac na atributima id_dobavljac iz tablice
 skladiste_dobavljac i atribut id iz tablice dobavljac. Na kraju smo sortirali proizvode
 po količini proizvoda od najmanje količine do najveće pomoću operatora ORDER BY.
*/
CREATE VIEW kolicina_proizvoda_i_dobavljaci AS
SELECT s.naziv_proizvoda, s.kolicina_proizvoda, d.naziv, d.kontakt_osoba, d.telefon
FROM skladiste AS s
LEFT JOIN skladiste_dobavljac AS sd ON s.id = sd.id_skladiste
LEFT JOIN dobavljac AS d ON sd.id_dobavljac = d.id
ORDER BY s.kolicina_proizvoda;
-- KRAJ UPITA 4

-- UPIT 5( prosječna ocjena)
/*Voditelj marketinga je zatražio evidenciju koja je prosječna ocjena kojom 
gosti ocjenjuju hotel. To smo učinili na sljedeći način: selektirali smo atribut
ocjena iz tablice recenzija uz operator AVG kako bi dobili prosječnu ocjenu.
*/
SELECT AVG(ocjena)
FROM recenzija;
-- KRAJ UPITA 5

-- UPIT 6 ( ukupni prihod grupiran po godini i sortiran po mjesecima)
/*Hotel manager je zatražio evidenciju prihoda po godinama i mjesecima.
To smo učinili na sljedeći način: kreirali smo pogled prihod_po_godinama_i_mjesecima
i selektirali godinu i mjesec iz atributa datum pomoću operatora YEAR i MONTH te ih
preimenovali u godina i mjesec. Selektirali smo i sumu svoh iznosa pomoću operatora
SUM te ga preimenovali u ukupni_prihod pomoću operatora AS. Selektirali smo podatke 
projekcijom iz tablice racun. Na kraju smo grupirali podatke po godini i mjesecu iz atributa
datum pomoću operatora YEAR i MONTH te smo ih sortirali po redu od najstarije godine
i najstarijeg mjeseca u pojedinoj godini.
*/
CREATE VIEW prihod_po_godinama_i_mjesecima AS
SELECT YEAR(datum) AS godina, MONTH(datum) AS mjesec, SUM(iznos) AS ukupni_prihod
FROM racun
GROUP BY YEAR(datum), MONTH(datum)
ORDER BY YEAR(datum), MONTH(datum);
-- KRAJ UPITA 6

-- UPIT 7
/*Hotel manager je zatražio evidenciju gostiju po mjesecima. 
To smo učinili na sljedeći način: kreirali smo dva pogleda- broj_gostiju_po_mjesecima
i najmanje_prometni_mjeseci. Selektirali smo godinu i mjesec (pomoću operatora YEAR i
MONTH) iz atributa datum_prijave i zbrojili sve redove iz tablice rezervacija
pomoću operatora COUNT. Preimenovali smo atribute i kreirali nove uz pomoć operatora AS.
Na kraju smo sortirali podatke od najviše gostiju do najmanje uz pomoć operatora 
ORDER BY i DESC, a u drugom pogledu smo koristili samo ORDER BY kako bi dobili 
najmanje posjećen mjesec.
*/
CREATE VIEW broj_gostiju_po_mjesecima AS
SELECT YEAR(datum_prijave) AS godina, MONTH(datum_prijave) AS mjesec, COUNT(*) AS broj_gostiju
FROM rezervacija
GROUP BY YEAR(datum_prijave), MONTH(datum_prijave)
ORDER BY COUNT(*) DESC;

CREATE VIEW najmanje_prometni_mjeseci AS
SELECT YEAR(datum_prijave) AS godina, MONTH(datum_prijave) AS mjesec, COUNT(*) AS broj_gostiju
FROM rezervacija
GROUP BY YEAR(datum_prijave), MONTH(datum_prijave)
ORDER BY COUNT(*);
-- KRAJ UPITA 7

-- UPIT 8
/*Hotel manager je zatražio evidenciju koliko prosječno gosti odsjedaju u hotelu.
To smo učinili na sljedeći način: selektirali smo atribute datum_odjave i datum_prijave te nad njima
koristili operator DATEDIFF kako bi dobili broj dana koliko gost odsjeda u hotalu. 
Nad operatorom DATEDIFF smo koristili operator AVG kako bi saznali prosječne dane 
odsjedanja u hotelu. Projekciju smo radili iz tablice rezervacija.
*/
SELECT AVG(DATEDIFF(datum_odjave, datum_prijave)) AS prosjecna_duzina_boravka
FROM rezervacija;
-- KRAJ UPITA 8

-- UPIT 9
/*Hotel manager je zatražio informaciju kolika je prosječna cijena po rezervaciji.
To smo učinili na sljedeći način: selektirali smo atribut iznos iz tablice racun te
smo nad njim koristili operator AVG kako bi dobili prosječnu cijenu. Na kraju smo 
novokreirani atribut nazvali procjecna_cjena_po_rezervaciji pomoću operatora AS.
*/
SELECT AVG(iznos) AS prosjecna_cjena_po_rezervaciji
FROM racun;
-- KRAJ UPITA 9

-- UPIT 10
/* Voditelj recepcije je zatražio evidenciju koliko soba postoji u hotelu po
tipu sobe.
To smo učinili na sljedeći način: kreirali smo pogled evidencija_soba. Selektirali smo atribut tip
iz tablice soba te smo koristili operator COUNT kako bi prebrojali sve redove. Taj atribut smo nazvali broj_soba
pomoću operatora AS. Na kraju smo grupirali podatke pomoću GROUP BY po atributu tip kako bi dobili grupirane tipove soba, a sortirali
smo ih pomoću operatora ORDER BY po novom atributu broj_soba, no silazno ( od najveće količine soba do najmanje) pomoću operatora
DESC.
*/
CREATE VIEW evidencija_soba AS
SELECT tip, COUNT(*) AS broj_soba
FROM soba
GROUP BY tip
ORDER BY broj_soba DESC;
-- KRAJ UPITA 10
