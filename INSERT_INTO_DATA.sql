USE hotel;

-- INSERT podaci za tablicu raspored_ciscenja
INSERT INTO raspored_ciscenja (datum, stanje)
VALUES 
    ('2023-05-02', 'Nije završeno'),
    ('2023-05-03', 'Nije završeno'),
    ('2023-05-04', 'Nije završeno'),
    ('2023-05-05', 'Nije završeno'),
    ('2023-05-06', 'Nije završeno'),
    ('2023-05-02', 'U tijeku'),
    ('2023-05-04', 'U tijeku'),
    ('2023-05-06', 'U tijeku'),
    ('2023-05-08', 'U tijeku'),
    ('2023-05-10', 'U tijeku'),
    ('2023-05-03', 'Završeno'),
    ('2023-05-05', 'Završeno'),
    ('2023-05-07', 'Završeno'),
    ('2023-05-09', 'Završeno'),
    ('2023-05-11', 'Završeno');


-- INSERT podaci za tablicu radno_mjesto
INSERT INTO radno_mjesto (naziv, opis, odjel)
VALUES 
    ('Recepcioner', 'Pružanje usluga gostima na recepciji', 'Recepcija'),
    ('Kuhar', 'Priprema jela u restoranu', 'Restoran'),
    ('Portir', 'Pomoć gostima pri nošenju prtljage', 'Recepcija'),
    ('Spa terapeut', 'Pružanje masaža i drugih tretmana', 'Wellness'),
    ('Voditelj konferencijskog centra', 'Organizacija konferencija i događaja', 'Konferencijski centar'),
    ('Čistač', 'Održavanje čistoće u hotelu', 'Odrzavanje'),
    ('Vrtlar', 'Održavanje vrtova i okoliša hotela', 'Odrzavanje'),
    ('Kuhar', 'Priprema jela u restoranu', 'Restoran');

-- INSERT podaci za tablicu radnik
INSERT INTO radnik (ime, prezime, odjel, telefon, email, datum_zaposlenja, id_radno_mjesto)
VALUES 
    ('Ana', 'Novak', 'Recepcija', '0987654312', 'ana.novak@example.com', '2023-02-10', 6),
    ('Marko', 'Kovačić', 'Restoran', '0912349678', 'marko.kovacic@example.com', '2023-03-15', 3),
    ('Petra', 'Horvat', 'Wellness', '0951789012', 'petra.horvat@example.com', '2023-04-20', 6),
    ('Ivan', 'Knežević', 'Konferencijski centar', '0923456789', 'ivan.knezevic@example.com', '2023-05-25', 5),
    ('Luka', 'Babić', 'Recepcija', '0978901234', 'luka.babic@example.com', '2023-06-30', 6),
    ('Marija', 'Petrović', 'Restoran', '0918765432', 'marija.petrovic@example.com', '2023-07-10', 3),
    ('Ante', 'Jurić', 'Wellness', '0986754321', 'ante.juric@example.com', '2023-08-15', 4),
    ('Ivana', 'Kovač', 'Recepcija', '0954321098', 'ivana.kovac@example.com', '2023-09-20', 6),
    ('Stjepan', 'Horvat', 'Konferencijski centar', '0921098765', 'stjepan.horvat@example.com', '2023-10-25', 8),
    ('Marta', 'Kralj', 'Recepcija', '0976543210', 'marta.kralj@example.com', '2023-11-30', 1),
    ('Iva', 'Vuković', 'Restoran', '0912345678', 'iva.vukovic@example.com', '2023-12-15', 2),
    ('Ivan', 'Marinović', 'Recepcija', '0956789112', 'ivan.marinovic@example.com', '2024-01-20', 6),
    ('Stipe', 'Horvat', 'Konferencijski centar', '0923453489', 'stipe.horvat@example.com', '2024-02-25', 5),
    ('Mia', 'Babić', 'Wellness', '0978901235', 'mia.babic@example.com', '2024-03-30', 4),
    ('Ivan', 'Barić', 'Recepcija', '0987654321', 'ivan.baric@example.com', '2024-04-05', 6),
    ('Iva', 'Kovačević', 'Recepcija', '0987654322', 'iva.kovacevic@example.com', '2024-05-10', 1),
    ('Ivan', 'Jurić', 'Restoran', '0912345679', 'ivan.juric@example.com', '2024-06-15', 2),
    ('Maja', 'Horvat', 'Wellness', '0956789013', 'maja.horvat@example.com', '2024-07-20', 4),
    ('Ivan', 'Kralj', 'Recepcija', '0923456780', 'ivan.kralj@example.com', '2024-08-25', 1),
    ('Ana', 'Babić', 'Konferencijski centar', '0978901236', 'ana.babic@example.com', '2024-09-30', 5);
    
    
SELECT * FROM radnik;
-- INSERT podaci za tablicu gost
INSERT INTO gost (ime, prezime, datum_rodenja, adresa, telefon, email)
VALUES 
    ('Martina', 'Vuković', '1978-08-15', 'Trg 1, Grad', '0913456789', 'martina.vukovic@example.com'),
    ('Ivana', 'Marinović', '1980-11-20', 'Ulica 2, Grad', '0987654321', 'ivana.marinovic@example.com'),
    ('Stjepan', 'Horvat', '1995-04-05', 'Avenija 3, Grad', '0916789012', 'stjepan.horvat@example.com'),
    ('Marin', 'Kovačić', '1987-07-10', 'Ulica 4, Grad', '0923456789', 'marin.kovacic@example.com'),
    ('Katarina', 'Babić', '2000-12-25', 'Trg 5, Grad', '0978901234', 'katarina.babic@example.com');

-- INSERT podaci za tablicu skladiste
INSERT INTO skladiste (odjel, naziv_proizvoda, kolicina_proizvoda)
VALUES 
    ('Skladište A', 'Ručnici', 500),
    ('Skladište B', 'Posteljina', 200),
    ('Skladište C', 'Čaše', 1000),
    ('Skladište D', 'Pribor za jelo', 800),
    ('Skladište E', 'Toaletni papir', 1000);

-- INSERT podaci za tablicu radnik_skladiste
INSERT INTO radnik_skladiste (id_radnik, id_skladiste, datum_provjere, napomena)
VALUES 
    (1, 1, '2023-05-01', 'Provjereno'),
    (2, 2, '2023-05-01', 'Provjereno'),
    (3, 3, '2023-05-01', 'Provjereno'),
    (4, 4, '2023-05-01', 'Provjereno'),
    (5, 5, '2023-05-01', 'Provjereno');

INSERT INTO soba (broj_sobe, tip, opis, cijena_nocenja, id_raspored_ciscenja)
VALUES 
    ('101', 'Jednokrevetna', 'Opis sobe 101', 50.00, 1),
    ('102', 'Jednokrevetna', 'Opis sobe 102', 50.00, 2),
    ('201', 'Dvokrevetna', 'Opis sobe 201', 80.00, 3),
    ('202', 'Dvokrevetna', 'Opis sobe 202', 80.00, 4),
    ('301', 'Apartman', 'Opis apartmana 301', 120.00, 5);
    
-- INSERT podaci za tablicu zahtjev_odrzavanja
INSERT INTO zahtjev_odrzavanja (opis, datum_zahtjeva, stanje, id_soba, id_gost)
VALUES 
    ('Zamjena žarulje', '2023-05-02', 'U tijeku', 2, 2),
    ('Popravak klime', '2023-05-03', 'Završeno', 3, 3),
    ('Čišćenje ventilacijskih otvora', '2023-05-04', 'Otkazano', 4, 4),
    ('Promjena posteljine', '2023-05-05', 'U tijeku', 5, 5),
    ('Popravak brave na vratima', '2023-05-06', 'Završeno', 1, 1);

-- INSERT podaci za tablicu sadrzaj
INSERT INTO sadrzaj (naziv, opis)
VALUES 
    ('TV', 'Televizor s kabelskim programima'),
    ('Mini bar', 'Hladnjak s napicima'),
    ('Klima uređaj', 'Individualno podešavanje temperature'),
    ('Balkon', 'Privatni balkon s pogledom'),
    ('Room service', 'Dostava hrane i pića u sobu');

-- INSERT podaci za tablicu soba_sadrzaj
INSERT INTO soba_sadrzaj (id_soba, id_sadrzaj, kolicina)
VALUES 
    (2, 1, 1),
    (3, 2, 1),
    (4, 3, 1),
    (5, 4, 1),
    (1, 5, 1);

-- INSERT podaci za tablicu racun
INSERT INTO racun (datum, iznos)
VALUES 
    ('2023-05-11', 150.00),
    ('2023-05-12', 200.00),
    ('2023-05-13', 300.00),
    ('2023-05-14', 100.00),
    ('2023-05-15', 250.00);

-- INSERT podaci za tablicu rezervacija
INSERT INTO rezervacija (datum_prijave, datum_odjave, broj_gostiju, id_gost, id_radnik, id_racun)
VALUES 
    ('2023-05-02', '2023-05-05', 2, 2, 2, 2),
    ('2023-05-03', '2023-05-06', 1, 3, 3, 3),
    ('2023-05-04', '2023-05-07', 3, 4, 4, 4),
    ('2023-05-05', '2023-05-08', 2, 5, 5, 5),
    ('2023-05-06', '2023-05-09', 1, 1, 1, 1);

-- INSERT podaci za tablicu recenzija
INSERT INTO recenzija (datum, ocjena, komentar, id_gost, id_rezervacija)
VALUES 
    ('2023-05-06', 4, 'Sveukupno dobro iskustvo.', 2, 1),
    ('2023-05-07', 5, 'Savršeno osoblje i čistoća.', 3, 2),
    ('2023-05-08', 3, 'Potrebna obnova nekih prostorija.', 4, 3),
    ('2023-05-09', 4, 'Udoban boravak, ali skuplje usluge.', 5, 4),
    ('2023-05-10', 5, 'Sve pohvale, nadmašili su očekivanja.', 1, 5);
    
-- INSERT podaci za tablicu usluge
INSERT INTO usluge (naziv, opis, cijena)
VALUES 
    ('Wellness centar', 'Ponuda različitih tretmana i masaža.', 80.00),
    ('Doručak', 'Buffet doručak s raznovrsnim jelima.', 15.00),
    ('Prijevoz do zračne luke', 'Udoban prijevoz do zračne luke.', 50.00),
    ('Rent-a-car', 'Iznajmljivanje automobila za razgledavanje grada.', 70.00),
    ('Bazen', 'Vanjski bazen s ležaljkama i pool barom.', 20.00);

-- INSERT podaci za tablicu vrsta_placanja
INSERT INTO vrsta_placanja (nacin_placanja)
VALUES 
    ('Gotovina'),
    ('Kreditna kartica'),
    ('Debitna kartica'),
    ('Kripto valute');

-- INSERT podaci za tablicu restoran
INSERT INTO restoran (ime, tip, lokacija, radno_vrijeme)
VALUES 
    ('Restoran B', 'Mediteranski', 'U blizini mora', '10:00-23:00'),
    ('Restoran C', 'International', 'U centru grada', '07:00-22:00'),
    ('Restoran D', 'Vegetarijanski', 'U mirnom okruženju', '09:00-21:00'),
    ('Restoran E', 'Fast food', 'Pokraj parka', '11:00-01:00'),
    ('Restoran F', 'Gurmanski', 'U sklopu hotela', '08:00-00:00');

-- INSERT podaci za tablicu racun_restoran
INSERT INTO racun_restoran (datum, cijena, id_restoran)
VALUES 
    ('2023-05-11', 120.00, 2),
    ('2023-05-12', 150.00, 3),
    ('2023-05-13', 180.00, 4),
    ('2023-05-14', 90.00, 5),
    ('2023-05-15', 200.00, 1);

-- INSERT podaci za tablicu gost_restoran
INSERT INTO gost_restoran (id_gost, id_restoran, datum)
VALUES 
    (2, 3, '2023-05-11'),
    (3, 4, '2023-05-12'),
    (4, 5, '2023-05-13'),
    (5, 1, '2023-05-14'),
    (1, 2, '2023-05-15');

-- INSERT podaci za tablicu racun_vrsta_placanja
INSERT INTO racun_vrsta_placanja (id_racun, id_placanje)
VALUES 
    (1, 2),
    (2, 3),
    (3, 1),
    (4, 4),
    (5, 2);
    
INSERT INTO radnik_raspored_ciscenja (id_radnik, id_raspored_ciscenja)
VALUES 
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (1, 1);
    
   
