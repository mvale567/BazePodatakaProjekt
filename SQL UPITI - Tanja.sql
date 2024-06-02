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

