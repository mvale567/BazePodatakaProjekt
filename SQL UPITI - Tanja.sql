USE hotel; 
-- UPITI Tanja Gattin Zebić (JMBAG: 0023003769)

-- UPIT 1
CREATE VIEW pregled_soba_ciscenja AS
SELECT s.broj_sobe, rc.datum, rc.stanje
FROM soba s
INNER JOIN raspored_ciscenja rc ON s.id_raspored_ciscenja = rc.id;
SELECT broj_sobe, stanje
FROM pregled_soba_ciscenja WHERE broj_sobe = 101;

-- KRAJ UPITA 1

-- UPIT 2
CREATE VIEW pregled_soba_ciscenja AS
SELECT s.broj_sobe, rc.datum, rc.stanje
FROM soba s
INNER JOIN raspored_ciscenja rc ON s.id_raspored_ciscenja = rc.id;
SELECT broj_sobe, stanje
FROM pregled_soba_ciscenja
WHERE stanje='Nije završeno';

-- KRAJ UPITA 2

-- UPIT 3

SELECT r.ime, r.prezime, s.naziv AS smjena
FROM radnik r
JOIN radnik_smjena_radnika rs ON r.id = rs.id_radnik
JOIN smjena_radnika s ON rs.id_smjena = s.id;

-- KRAJ UPITA 2

/*Šef recepcije zatražio je evidenciju je li očišćena soba 101. 
To je napravljeno na sljedeći način: 
Koristimo atribute iz tablica soba i raspored_ciscenja kako bi kreirali pogled pregled_soba_ciscenja koji sadrži podatke o broju sobe, datumu i stanju čišćenja. Korištenjem operatora INNER JOIN, CREATE VIEW, SELECT i WHERE, upit omogućava filtriranje i dohvaćanje specifičnih informacija, poput provjere je li soba 101 očišćena.
Kreirali smo pogled pregled_soba_ciscenja:
          
CREATE VIEW pregled_soba_ciscenja AS
SELECT s.broj_sobe, rc.datum, rc.stanje
FROM soba s
INNER JOIN raspored_ciscenja rc ON s.id_raspored_ciscenja = rc.id;

Taj pogled povezuje informacije o sobama s njihovim statusom čišćenja koristeći INNER JOIN.

Zatim se provjera statusa čišćenja sobe 101:

SELECT broj_sobe, stanje
FROM pregled_soba_ciscenja
WHERE broj_sobe = 101;

Ovaj upit vraća broj sobe i njen status čišćenja.

--Kraj upita 1

/*Upit 2 - Šef recepcije zatražio je evidenciju koje sve sobe nisu očišćene. 
To je napravljeno na sljedeći način: Koristimo atribute iz tablica soba i raspored_ciscenja kako bi kreirali pogled pregled_soba_ciscenja koji sadrži podatke o broju sobe, datumu i stanju čišćenja. Korištenjem operatora INNER JOIN, CREATE VIEW, SELECT i WHERE, upit omogućava filtriranje i dohvaćanje specifičnih informacija, poput provjere koje sobe nisu očišćene.
Kreirali smo pogled pregled_soba_ciscenja:
          
CREATE VIEW pregled_soba_ciscenja AS
SELECT s.broj_sobe, rc.datum, rc.stanje
FROM soba s
INNER JOIN raspored_ciscenja rc ON s.id_raspored_ciscenja = rc.id;

Taj pogled povezuje informacije o sobama s njihovim statusom čišćenja koristeći INNER JOIN.

Zatim se provjera koje sobe nisu očišćene:

SELECT broj_sobe, stanje
FROM pregled_soba_ciscenja
WHERE stanje='Nije završeno';

To nam omogućuje dohvaćanje samo onih soba koje nisu očišćene, odnosno čije je stanje čišćenja 'Nije završeno'. 

--Kraj upita 2

/*Upit 3 – Hotelski manager zatražio je evidenciju koji radnik radi u kojoj smjeni. To je napravljeno na sljedeći način: Da bi saznali koji radnik je u kojoj smjeni, trebamo spojiti tablice radnik i smjena_radnika koristeći tablicu koja povezuje radnike sa smjenama, tj. radnik_smjena_radnika. To se ostvaruje sa sljedećim SQL upitom:

SELECT r.ime, r.prezime, s.naziv AS smjena
FROM radnik r
JOIN radnik_smjena_radnika rs ON r.id = rs.id_radnik
JOIN smjena_radnika s ON rs.id_smjena = s.id;

Koristimo atribute r.ime za ime radnika, r.prezime za prezime radnika, s.naziv AS smjena za naziv smjene iz tablice smjena_radnika, koji se preimenuje u smjena. AS ključna riječ koristi se za preimenovanje stupca u rezultatu kao "smjena".
Operator SELECT bira specifične stupce koje želimo prikazati - atribute r.ime, r.prezime i s.naziv AS smjena.
Operator FROM identificira tablice iz kojih se podaci dohvaćaju,  to su radnik r koja sadrži informacije o radnicima, kao što su ime i prezime.
Operator JOIN kombinira redove iz više tablica prema određenom uvjetu - spaja tablice radnik i radnik_smjena_radnika prema id-u radnika, zatim spaja tablice radnik_smjena_radnika i smjena_radnika prema id_smjena.
       
Ovi atributi i operatori zajedno tvore SQL upit koji dohvaća informacije o radnicima i smjenama koje rade. Spajanjem tablica koristeći ključeve kao što su id_radnik i id_smjena, omogućuje se dobivanje kompletnih informacija o radnicima i njihovim smjenama.
