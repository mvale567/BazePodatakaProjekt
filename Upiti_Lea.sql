-- UPIT 1:

/* Menadžer restorana zatražio je evidenciju o ukupnom prihodu restorana odvojenu po tipu restorana. Za izračun ukupnog prihoda korislitli smo funkciju SUM() za zbroj cijena iz tablice racun_restoran, grupirajući ih po tipu restorana. Kroz JOIN operaciju, povezujemo podatke o restoranima iz tablice restoran s odgovarajućim računima iz tablice “racun_restoran”, koristeći njihovu zajedničku vezu preko identifikatora restorana.
Pomoću operatora AS kreirali smo novi atribut “ukupni prihod”. */



CREATE VIEW prihod_restorana_po_tipu AS
SELECT restoran.tip, SUM(racun_restoran.cijena) AS ukupni_prihod
FROM restoran
JOIN racun_restoran ON restoran.id = racun_restoran.id_restoran
GROUP BY restoran.tip;



-- KRAJ UPITA 1


--  UPIT 2:

/* Menadžer restorana zatražio je evidenciju koji su gosti posjetili mediteranski tip restorana.
Upit koristi podatke iz više tablica. Prva je tablica gost gdje imamo informacije o gostima, poput imena i prezimena, tablica gost_restoran gdje smo uspostavili vezu između gostiju i restorana, koristeći ID gostiju i ID restorana i tablica restoran (koja nam sadrži informacije o restoranima, uključujući tip restorana.
Kroz fuknciju JOIN povezali smo podatke o gostima i restoranima, filtrirajući samo one goste koji su posjetili mediteranski restoran, što smo specificirali u WHERE uvjetu. Na kraju, rezultat sadrži ime i prezime gostiju (g.ime, g.prezime) te tip posjećenog restorana koji smo kreirali pomoću operatera AS (“posjeceni_restoran”). */

CREATE VIEW posjetitelji_mediteranskog_restorana AS
SELECT g.ime, g.prezime, r.tip AS posjeceni_restoran
FROM gost AS g
JOIN gost_restoran AS gr ON g.id = gr.id_gost
JOIN restoran AS r ON gr.id_restoran = r.id
WHERE r.tip = 'Mediteranski';


-- KRAJ UPITA 2


-- UPIT 3:

/* Menadžer restorana zatražio je evidenciju ukupnog prihoda po tipu sobe. Ovdje smo također koristili upite iz nekoliko tablica. Prva nam je tablica sobakoja sadrži informacije o sobama, uključujući tip svake sobe. Nadallje imamo tablicu zahtjev_odrzavanja koja povezuje zahtjeve održavanja sa sobama, koristeći ID sobe. Tablica rezervacija sadrži informacije o rezervacijama, uključujući ID gosta, a tablica racun ima informacije o računima, uključujući iznos plaćen za svaku rezervaciju.
Kroz JOIN operacije, upit povezuje podatke o sobama, zahtjevima održavanja, rezervacijama i računima. Pomoću funkcije SUM( izračunali smo ukupni prihod po tipu sobe, grupirajući ih po tipu sobe kroz GROUP BY funkciju. I ovdje smo koristili operater AS kako bi kreirali nove atribute */


CREATE VIEW Prihod_po_tipu_sobe AS
SELECT soba.tip AS tip_sobe, SUM(racun.iznos) AS ukupni_prihod
FROM soba
JOIN zahtjev_odrzavanja ON soba.id = zahtjev_odrzavanja.id_soba
JOIN rezervacija ON zahtjev_odrzavanja.id_gost = rezervacija.id_gost
JOIN racun ON rezervacija.id_racun = racun.id
GROUP BY soba.tip;



-- KRAJ UPITA 3


-- UPIT 4:

/* Gost je zatražio samo sobe sa TVom, a recepcioner ih je filtrirao pomoću upita koji funkcionira na sljedeći način. 
Kroz JOIN operacije, upit povezuje podatke o sobama i sadržaju iz nekoliko tablica, filtrirajući samo one sobe koje sadrže televizor, što je specificirano u WHERE uvjetu.Tablice koje su povezane su:
Tablica soba koja sadrži informacije o sobama, uključujući broj sobe i njen tip, Tablica soba_sadrzaj gdje je uspostavljena veza između soba i njihovih sadržaja, koristeći ID sobe.
Tablica sadrzaj sadrži informacije o dostupnom sadržaju u sobama, popout tv-a. */

CREATE VIEW soba_sa_tv AS
SELECT soba.broj_sobe, soba.tip, sadrzaj.naziv 
FROM soba 
JOIN soba_sadrzaj ON soba.id= soba_sadrzaj.id_soba 
JOIN sadrzaj ON soba_sadrzaj.id_sadrzaj = sadrzaj.id
WHERE sadrzaj.naziv = 'TV';


-- KRAJ UPITA 4