-- TIM 5 - Projekt baza podataka, tema: Sustav upravljanja hotelom

DROP DATABASE IF EXISTS hotel;
CREATE DATABASE hotel;
USE hotel;


-- Svaka tablica ispod ima jedan INSERT, koristen samo za provjeru RELACIJA I UPITA, ostali podaci su uneseni kroz tablice!!! --
-- Svaka tablica za ID korisit AUTO INCREMENT, tako da se on automatski upisuje u tablicu, i ne navodimo ga kod INSERTA --

-- RELACIJE --

-- 1.Tablica raspored_ciscenja --
CREATE TABLE raspored_ciscenja (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    datum DATE NOT NULL,
    stanje VARCHAR(50) NOT NULL
);
#INSERT INTO raspored_ciscenja (datum, stanje)
#    VALUES ('2023-05-01', 'Završeno');


-- 2.Tablica radno_mjesto --
CREATE TABLE radno_mjesto (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naziv VARCHAR(100) NOT NULL,
    opis TEXT,
    odjel VARCHAR(50) NOT NULL
);
# INSERT INTO radno_mjesto (naziv, opis, odjel)
#    VALUES ('Čistač', 'Čišćenje prostorija', 'Odjel A');


-- 3.Tablica radnik--
CREATE TABLE radnik (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ime VARCHAR(50) NOT NULL,
    prezime VARCHAR(50) NOT NULL,
    odjel VARCHAR(50),
    telefon VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    datum_zaposlenja DATE NOT NULL,
    id_radno_mjesto INT NOT NULL,
    FOREIGN KEY (id_radno_mjesto) REFERENCES radno_mjesto(id)
);
#INSERT INTO radnik (ime, prezime, odjel, telefon, email, datum_zaposlenja, id_radno_mjesto)
#   VALUES ('Ivan', 'Horvat', 'Odjel A', '0123456789', 'ivan.horvat@example.com', '2023-01-15', 1);

-- 4.Tablica gost --
CREATE TABLE gost (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ime VARCHAR(50) NOT NULL,
    prezime VARCHAR(50) NOT NULL,
    datum_rodenja DATE NOT NULL,
    adresa VARCHAR(100),
    telefon VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE
);
#INSERT INTO gost (ime, prezime, datum_rodenja, adresa, telefon, email)
 #   VALUES ('Ana', 'Kovač', '1985-03-25', 'Ulica 1, Grad', '0912345678', 'ana.kovac@example.com');

-- 5.Tablica skaldiste--
CREATE TABLE skladiste (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    odjel VARCHAR(50),
    naziv_proizvoda VARCHAR(100) NOT NULL,
    kolicina_proizvoda INT 
);
INSERT INTO skladiste (odjel, naziv_proizvoda, kolicina_proizvoda)
    VALUES ('Skladiste A', 'Krastavci', 100);


-- 6.Tablica koja povezuje radnik-skladiste, rezultat odnosa "vise-na-vise" --
CREATE TABLE radnik_skladiste (
    id_radnik INT NOT NULL,
    id_skladiste INT NOT NULL,
    datum_provjere DATE,
    napomena TEXT,
    PRIMARY KEY (id_radnik, id_skladiste),
    FOREIGN KEY (id_radnik) REFERENCES radnik(id),
    FOREIGN KEY (id_skladiste) REFERENCES skladiste(id)
);
# INSERT INTO radnik_skladiste (id_radnik, id_skladiste, datum_provjere, napomena)
#    VALUES (1, 1, '2023-05-01', 'Sve u redu');


-- 7.Tablica dobavljac--
CREATE TABLE dobavljac (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naziv VARCHAR(100) NOT NULL,
    kontakt_osoba VARCHAR(100),
    telefon VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE
);
#INSERT INTO dobavljac ( naziv, kontakt_osoba, telefon, email)
#    VALUES ('Dobavljač A', 'Kontakt Osoba A', '0987654321', 'kontakt@example.com');


-- 8.Tablica koja povezuje skladiste-dobavljac, rezultat odnosa "vise-na-vise" --
CREATE TABLE skladiste_dobavljac (
    id_skladiste INT NOT NULL,
    id_dobavljac INT NOT NULL,
    datum_dostave DATE NOT NULL,
    napomena TEXT,
    PRIMARY KEY (id_skladiste, id_dobavljac),
    FOREIGN KEY (id_skladiste) REFERENCES skladiste(id),
    FOREIGN KEY (id_dobavljac) REFERENCES dobavljac(id)
);
# INSERT INTO skladiste_dobavljac (id_skladiste, id_dobavljac, datum_dostave, napomena)
 #   VALUES (1, 1, '2023-05-10', 'Dostava na vrijeme');


-- 9.Tablica smjena_radnika --
CREATE TABLE smjena_radnika (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naziv ENUM('Jutarnja smjena', 'Popodnevna smjena', 'Noćna smjena') NOT NULL,
    vrijeme_pocetka TIME NOT NULL,
    vrijeme_zavrsetka TIME NOT NULL
);
#INSERT INTO smjena_radnika (naziv, vrijeme_pocetka, vrijeme_zavrsetka)
#    VALUES ('Jutarnja smjena', '08:00:00', '16:00:00');


-- 10.Tablica koja povezuje radnik-smjena_radnik, rezultat odnosa "vise-na-vise" --
CREATE TABLE radnik_smjena_radnika (
    id_radnik INT NOT NULL,
    id_smjena INT NOT NULL,
    datum DATE NOT NULL,
    PRIMARY KEY (id_radnik, id_smjena),
    FOREIGN KEY (id_radnik) REFERENCES radnik(id),
    FOREIGN KEY (id_smjena) REFERENCES smjena_radnika(id)
);
# INSERT INTO radnik_smjena_radnika (id_radnik, id_smjena, datum)
#    VALUES (1, 1, '2023-05-01');

-- 15.Tablica racun --
CREATE TABLE racun (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    datum DATE NOT NULL,
    iznos DECIMAL(10, 2) DEFAULT 0.00 NOT NULL
);
#INSERT INTO racun (datum, iznos)
#   VALUES ('2023-05-10', 500.00);

-- 16.Tablica rezervacija --
CREATE TABLE rezervacija (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    datum_prijave DATE NOT NULL,
    datum_odjave DATE NOT NULL,
    broj_gostiju INT NOT NULL,
    id_gost INT NOT NULL,
    id_radnik INT NOT NULL,
    id_racun INT NOT NULL,
    FOREIGN KEY (id_gost) REFERENCES gost(id),
    FOREIGN KEY (id_radnik) REFERENCES radnik(id),
    FOREIGN KEY (id_racun) REFERENCES racun(id)
);
#INSERT INTO rezervacija (datum_prijave, datum_odjave, broj_gostiju, id_gost, id_radnik, id_racun)
#    VALUES ('2023-05-01', '2023-05-10', 2, 1, 1, 1);

-- 11.Tablica soba --
CREATE TABLE soba (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    broj_sobe VARCHAR(10) NOT NULL,
    tip VARCHAR(50) NOT NULL,
    opis TEXT,
    cijena_nocenja DECIMAL(10, 2) CHECK (cijena_nocenja >= 0),
    id_raspored_ciscenja INT NOT NULL,
    id_rezervacija INT NOT NULL,
    FOREIGN KEY (id_raspored_ciscenja) REFERENCES raspored_ciscenja(id),
    FOREIGN KEY (id_rezervacija) REFERENCES rezervacija(id)
);
#INSERT INTO soba (broj_sobe, tip, opis, cijena_nocenja, id_raspored_ciscenja, id_rezervacija)
#    VALUES (101, 'Jednokrevetna', 'Opis sobe', 50.00, 1);


-- 12.Tablica zahtjev_odrzavanja --
CREATE TABLE zahtjev_odrzavanja (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    opis TEXT NOT NULL,
    datum_zahtjeva DATE,
    stanje ENUM('U tijeku', 'Završeno', 'Otkazano') NOT NULL,
    id_soba INT NOT NULL,
    id_gost INT NOT NULL,
    FOREIGN KEY (id_soba) REFERENCES soba(id),
    FOREIGN KEY (id_gost) REFERENCES gost(id)
);
#INSERT INTO zahtjev_odrzavanja (opis, datum_zahtjeva, stanje, id_soba, id_gost)
#    VALUES ('Popravak slavine', '2023-05-01', 'U tijeku', 1, 1);



-- 13.Tablica sadrzaj --
CREATE TABLE sadrzaj (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naziv VARCHAR(100) NOT NULL,
    opis TEXT
);
#INSERT INTO sadrzaj (naziv, opis)
#    VALUES ('WiFi', 'Bežična internet veza');

-- 14.Tablica koja povezuje soba-sadrzaj, rezultat odnosa "vise-na-vise" --
CREATE TABLE soba_sadrzaj (
    id_soba INT NOT NULL,
    id_sadrzaj INT NOT NULL,
    kolicina INT,
    PRIMARY KEY (id_soba, id_sadrzaj),
    FOREIGN KEY (id_soba) REFERENCES soba(id),
    FOREIGN KEY (id_sadrzaj) REFERENCES sadrzaj(id)
);
#INSERT INTO soba_sadrzaj (id_soba, id_sadrzaj, kolicina)
#    VALUES (1, 1, 1);
    
    

    



-- 17.Tablica recenzija --
CREATE TABLE recenzija (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    datum DATE,
    ocjena ENUM ('1', '2', '3', '4', '5') NOT NULL,
    komentar TEXT,
    id_gost INT NOT NULL,
    id_rezervacija INT NOT NULL,
    FOREIGN KEY (id_gost) REFERENCES gost(id),
    FOREIGN KEY (id_rezervacija) REFERENCES rezervacija(id)
);
#INSERT INTO recenzija (datum, ocjena, komentar, id_gost, id_rezervacija)
#    VALUES ('2023-05-11', 5, 'Odlična usluga!', 1, 1);


-- 18.Tablica usluge --
CREATE TABLE usluge (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    naziv VARCHAR(100) NOT NULL,
    opis TEXT,
    cijena DECIMAL(10, 2) DEFAULT 0.00 NOT NULL
);
#INSERT INTO usluge (naziv, opis, cijena)
#    VALUES ('Room Service', 'Dostava hrane u sobu', 100.00);


-- 19.Tablica koja povezuje racun-usluge, rezultat odnosa "vise-na-vise" --
CREATE TABLE racun_usluge (
    id_racun INT NOT NULL,
    id_usluga INT NOT NULL,
    PRIMARY KEY (id_racun, id_usluga),
    FOREIGN KEY (id_racun) REFERENCES racun(id),
    FOREIGN KEY (id_usluga) REFERENCES usluge(id)
);
# INSERT INTO racun_usluge (id_racun, id_usluga)
#    VALUES (1, 1);


-- 20.Tablica vrsta_placanja --
CREATE TABLE vrsta_placanja (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nacin_placanja ENUM('Gotovina', 'Kreditna kartica', 'Debitna kartica', 'Kripto valute') NOT NULL NOT NULL
);
#INSERT INTO vrsta_placanja (nacin_placanja)
#    VALUES ('Kreditna kartica');


-- 21.Tablica restoran --
CREATE TABLE restoran (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ime VARCHAR(100) NOT NULL UNIQUE,
    tip VARCHAR(50),
    lokacija VARCHAR(100) NOT NULL,
    radno_vrijeme VARCHAR(50) NOT NULL
);
#INSERT INTO restoran (ime, tip, lokacija, radno_vrijeme)
#    VALUES ('Restoran A', 'Talijanski', 'Centar grada', '08:00-22:00');
    
    
-- 22.Tablica koja povezuje racun-restoran, rezultat odnosa "vise-na-vise" --
CREATE TABLE racun_restoran (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    datum DATE,
    cijena DECIMAL(10, 2) DEFAULT 0.00,
    id_restoran INT NOT NULL,
    FOREIGN KEY (id_restoran) REFERENCES restoran(id)
);
#INSERT INTO racun_restoran (datum, cijena, id_restoran)
#    VALUES ('2023-05-10', 200.00, 1);


-- 23.Tablica koja povezuje gost-restoran, rezultat odnosa "vise-na-vise" --
CREATE TABLE gost_restoran (
    id_gost INT NOT NULL,
    id_restoran INT NOT NULL,
    datum DATE,
    PRIMARY KEY (id_gost, id_restoran),
    FOREIGN KEY (id_gost) REFERENCES gost(id),
    FOREIGN KEY (id_restoran) REFERENCES restoran(id)
);
#INSERT INTO gost_restoran (id_gost, id_restoran, datum)
#    VALUES (1, 1, '2023-05-10');


-- 24.Tablica koja racun-vrsta_placanja, rezultat odnosa "vise-na-vise" --
CREATE TABLE racun_vrsta_placanja (
    id_racun INT NOT NULL,
    id_placanje INT NOT NULL,
    PRIMARY KEY (id_racun, id_placanje),
    FOREIGN KEY (id_racun) REFERENCES racun(id),
    FOREIGN KEY (id_placanje) REFERENCES vrsta_placanja(id)
);
#INSERT INTO racun_vrsta_placanja (id_racun, id_placanje)
#    VALUES (1, 1);
    
    
-- 25.Tablica koja radnik_raspored_ciscenja, rezultat odnosa "vise-na-vise" --
CREATE TABLE radnik_raspored_ciscenja (
    id_radnik INT NOT NULL,
    id_raspored_ciscenja INT NOT NULL,
    FOREIGN KEY (id_radnik) REFERENCES radnik(id),
    FOREIGN KEY (id_raspored_ciscenja) REFERENCES raspored_ciscenja(id)
);
#INSERT INTO radnik_raspored_ciscenja (id_radnik, id_raspored_ciscenja)
#    VALUES (1, 1);