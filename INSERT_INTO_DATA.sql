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
    ('Ana', 'Novak', 'Recepcija', '0987654412', 'ana.novaka@example.com', '2023-02-10', 6),
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
    ('Katarina', 'Babić', '2000-12-25', 'Trg 5, Grad', '0978901234', 'katarina.babic@example.com'),
    ('Petra', 'Petrović', '1992-03-10', 'Ulica 6, Grad', '0911234567', 'petra.petrovic@example.com'),
    ('Nikola', 'Novak', '1985-05-30', 'Avenija 7, Grad', '0921234567', 'nikola.novak@example.com'),
    ('Ana', 'Radić', '1998-09-15', 'Trg 8, Grad', '0931234567', 'ana.radic@example.com'),
    ('Marko', 'Jurić', '1983-01-20', 'Ulica 9, Grad', '0941234567', 'marko.juric@example.com'),
    ('Lucija', 'Matić', '1990-07-25', 'Avenija 10, Grad', '0951234567', 'lucija.matic@example.com'),
    ('Ivan', 'Grgić', '1989-11-11', 'Ulica 11, Grad', '0961234567', 'ivan.grgic@example.com'),
    ('Sara', 'Šimić', '1996-02-05', 'Trg 12, Grad', '0971234567', 'sara.simic@example.com'),
    ('Tomislav', 'Kralj', '1991-12-20', 'Avenija 13, Grad', '0981234567', 'tomislav.kralj@example.com'),
    ('Matej', 'Božić', '1997-06-18', 'Ulica 14, Grad', '0991234567', 'matej.bozic@example.com'),
    ('Tihana', 'Pranjić', '1988-10-08', 'Trg 15, Grad', '0912345678', 'tihana.pranjic@example.com');
    
-- INSERT podaci za tablicu skladiste
INSERT INTO skladiste (odjel, naziv_proizvoda, kolicina_proizvoda)
VALUES 
    ('Higijenske potrebštine', 'Ručnici', 500),
    ('Higijenske potrebštine', 'Posteljina', 200),
    ('Higijenske potrebštine', 'Sapuni', 300),
    ('Higijenske potrebštine', 'Šamponi', 400),
    ('Higijenske potrebštine', 'Toaletni papir', 1000),
    ('Higijenske potrebštine', 'Papuče', 150),
    ('Higijenske potrebštine', 'Četkice za zube', 200),
    ('Higijenske potrebštine', 'Pasta za zube', 250),
    ('Higijenske potrebštine', 'Kreme za ruke', 100),
    ('Higijenske potrebštine', 'Dezodoransi', 180),
    ('IT oprema', 'Toneri za pisač', 50),
    ('IT oprema', 'Papir za pisač', 500),
    ('IT oprema', 'Tipkovnice', 30),
    ('IT oprema', 'Miševi', 40),
    ('IT oprema', 'Monitori', 20),
    ('IT oprema', 'USB kablovi', 70),
    ('IT oprema', 'Laptopi', 10),
    ('IT oprema', 'Punjači za laptope', 25),
    ('IT oprema', 'Routeri', 15),
    ('IT oprema', 'Tvrdi diskovi', 60),
    ('Hrana', 'Kruh', 100),
    ('Hrana', 'Mlijeko', 200),
    ('Hrana', 'Jaja', 300),
    ('Hrana', 'Voće', 400),
    ('Hrana', 'Povrće', 500),
    ('Hrana', 'Meso', 600),
    ('Hrana', 'Riba', 150),
    ('Hrana', 'Tjestenina', 250),
    ('Hrana', 'Riža', 350),
    ('Piće', 'Voda', 1000),
    ('Piće', 'Sokovi', 800),
    ('Piće', 'Pivo', 600),
    ('Piće', 'Vino', 400),
    ('Piće', 'Žestoka pića', 300),
    ('Piće', 'Čaj', 200),
    ('Piće', 'Kava', 500),
    ('Piće', 'Mlijeko', 300),
    ('Piće', 'Energijska pića', 250),
    ('Piće', 'Mineralna voda', 150);

-- INSERT podaci za tablicu radnik_skladiste
INSERT INTO radnik_skladiste (id_radnik, id_skladiste, datum_provjere, napomena)
VALUES 
    (1, 1, '2023-05-01', 'Provjera skladišta, sve je u redu.'),
    (2, 2, '2023-05-08', 'Skladište pregledano, nema nepravilnosti.'),
    (3, 3, '2023-05-15', 'Provjereno i očišćeno, nema primjedbi.'),
    (4, 4, '2023-05-22', 'Sve je na svom mjestu, skladište je organizirano.'),
    (5, 5, '2023-05-29', 'Obavljena provjera inventara, sve je u redu, primijetio sam da nam nedostaje toner za pisač, trebamo naručiti novu zalihu.'),
    (6, 6, '2023-06-05', 'Provjera skladišta izvršena, stanje je zadovoljavajuće.'),
    (7, 7, '2023-06-12', 'Skladište pregledano, sve je na svom mjestu.'),
    (8, 8, '2023-06-19', 'Provjereno i očišćeno, nema nepravilnosti.'),
    (9, 9, '2023-06-26', 'Sve je organizirano i uredno.'),
    (10, 10, '2023-07-03', 'Obavljena provjera inventara, sve je u redu, primijetio sam da nam nedostaje toner za pisač, trebamo naručiti novu zalihu.');

-- INSERT podaci za tablicu racun
INSERT INTO racun (datum, iznos)
VALUES 
    ('2023-05-11', 150.00),
    ('2023-05-12', 200.00),
    ('2023-05-13', 300.00),
    ('2023-05-14', 100.00),
    ('2023-05-15', 250.00),
    ('2023-05-16', 180.00),
    ('2023-05-17', 220.00),
    ('2023-05-18', 280.00),
    ('2023-05-19', 190.00),
    ('2023-05-20', 270.00),
    ('2023-05-21', 210.00),
    ('2023-05-22', 320.00),
    ('2023-05-23', 230.00),
    ('2023-05-24', 290.00),
    ('2023-05-25', 175.00),
    ('2023-05-26', 205.00),
    ('2023-05-27', 260.00),
    ('2023-05-28', 180.00),
    ('2023-05-29', 240.00),
    ('2023-05-30', 310.00),
    ('2023-05-31', 195.00),
    ('2023-06-01', 225.00),
    ('2023-06-02', 285.00),
    ('2023-06-03', 195.00);

-- INSERT podaci za tablicu rezervacija
INSERT INTO rezervacija (datum_prijave, datum_odjave, broj_gostiju, id_gost, id_radnik, id_racun)
VALUES 
    ('2023-05-07', '2023-05-10', 2, 2, 2, 1),
    ('2023-05-08', '2023-05-11', 1, 3, 3, 2),
    ('2023-05-09', '2023-05-12', 3, 4, 4, 3),
    ('2023-05-10', '2023-05-13', 2, 5, 5, 4),
    ('2023-05-11', '2023-05-14', 1, 1, 1, 5),
    ('2023-05-12', '2023-05-15', 2, 2, 2, 6),
    ('2023-05-13', '2023-05-16', 1, 3, 3, 7),
    ('2023-05-14', '2023-05-17', 3, 4, 4, 8),
    ('2023-05-15', '2023-05-18', 2, 5, 5, 9),
    ('2023-05-16', '2023-05-19', 1, 1, 1, 10),
    ('2023-05-17', '2023-05-20', 2, 2, 2, 11),
    ('2023-05-18', '2023-05-21', 1, 3, 3, 12),
    ('2023-05-19', '2023-05-22', 3, 4, 4, 13),
    ('2023-05-20', '2023-05-23', 2, 5, 5, 14),
    ('2023-05-21', '2023-05-24', 1, 1, 1, 15),
    ('2023-05-22', '2023-05-25', 2, 2, 2, 16),
    ('2023-05-23', '2023-05-26', 1, 3, 3, 17),
    ('2023-05-24', '2023-05-27', 3, 4, 4, 18),
    ('2023-05-25', '2023-05-28', 2, 5, 5, 19),
    ('2023-05-26', '2023-05-29', 1, 1, 1, 20),
    ('2023-05-27', '2023-05-30', 2, 2, 2, 21),
    ('2023-05-28', '2023-05-31', 1, 3, 3, 22),
    ('2023-05-29', '2023-06-01', 3, 4, 4, 23),
    ('2023-05-30', '2023-06-02', 2, 5, 5, 24);



INSERT INTO soba (broj_sobe, tip, opis, cijena_nocenja, id_raspored_ciscenja, id_rezervacija)
VALUES 
    ('101', 'Jednokrevetna', 'Opis sobe 101', 50.00, 1, 1),
    ('102', 'Jednokrevetna', 'Opis sobe 102', 50.00, 2, 2),
    ('201', 'Dvokrevetna', 'Opis sobe 201', 80.00, 3, 3),
    ('202', 'Dvokrevetna', 'Opis sobe 202', 80.00, 4, 4),
    ('301', 'Apartman', 'Opis apartmana 301', 120.00, 1, 5),
    ('302', 'Apartman', 'Opis apartmana 302', 120.00, 2, 6),
    ('401', 'Jednokrevetna', 'Opis sobe 401', 55.00, 3, 7),
    ('402', 'Jednokrevetna', 'Opis sobe 402', 55.00, 4, 8),
    ('501', 'Dvokrevetna', 'Opis sobe 501', 85.00, 1, 9),
    ('502', 'Dvokrevetna', 'Opis sobe 502', 85.00, 2, 10),
    ('601', 'Apartman', 'Opis apartmana 601', 125.00, 3, 11),
    ('602', 'Apartman', 'Opis apartmana 602', 125.00, 4, 12),
    ('701', 'Jednokrevetna', 'Opis sobe 701', 60.00, 1, 13),
    ('702', 'Jednokrevetna', 'Opis sobe 702', 60.00, 2, 14),
    ('801', 'Dvokrevetna', 'Opis sobe 801', 90.00, 3, 15),
    ('802', 'Dvokrevetna', 'Opis sobe 802', 90.00, 4, 16),
    ('901', 'Apartman', 'Opis apartmana 901', 130.00, 1, 17),
    ('902', 'Apartman', 'Opis apartmana 902', 130.00, 2, 18),
    ('1001', 'Jednokrevetna', 'Opis sobe 1001', 65.00, 3, 19),
    ('1002', 'Jednokrevetna', 'Opis sobe 1002', 65.00, 4, 20),
    ('1101', 'Dvokrevetna', 'Opis sobe 1101', 95.00, 1, 21),
    ('1102', 'Dvokrevetna', 'Opis sobe 1102', 95.00, 2, 22),
    ('1201', 'Apartman', 'Opis apartmana 1201', 135.00, 3, 23),
    ('1202', 'Apartman', 'Opis apartmana 1202', 135.00, 4, 24);

    
-- INSERT podaci za tablicu zahtjev_odrzavanja--
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
    
INSERT INTO dobavljac ( naziv, kontakt_osoba, telefon, email)
 VALUES  ('CleanCo Supplies', 'Ivan Novak', '0912345678', 'ivan.novak@cleanco.com'),
        ('TechSolutions', 'Marija Kovač', '0912345679', 'marija.kovac@techsolutions.com'),
        ('FreshFoods Distribution', 'Ana Babić', '0912345680', 'ana.babic@freshfoods.com'),
        ('PureWater Inc.', 'Petar Horvat', '0912345681', 'petar.horvat@purewater.com'),
        ('Office Essentials', 'Jelena Jurić', '0912345682', 'jelena.juric@officeessentials.com'),
        ('GreenClean Products', 'Damir Perić', '0912345683', 'damir.peric@greenclean.com'),
        ('SmartTech Gadgets', 'Lana Radić', '0912345684', 'lana.radic@smarttech.com'),
        ('Gourmet Goods', 'Maja Matić', '0912345685', 'maja.matic@gourmetgoods.com'),
        ('Beverage Best', 'Ante Marković', '0912345686', 'ante.markovic@beveragebest.com'),
        ('Premium Supplies', 'Katarina Krpan', '0912345687', 'katarina.krpan@premiumsupplies.com');
   
INSERT INTO smjena_radnika (naziv, vrijeme_pocetka, vrijeme_zavrsetka) 
VALUES
    ('Jutarnja smjena', '08:00:00', '16:00:00'), -- Radnik 1
    ('Popodnevna smjena', '16:00:00', '00:00:00'), -- Radnik 2
    ('Noćna smjena', '00:00:00', '08:00:00'); -- Radnik 3
     
   
INSERT INTO radnik_smjena_radnika (id_radnik, id_smjena, datum) 
VALUES
    (1, 1, '2024-06-03'), -- Radnik 1 u jutarnjoj smjeni 2024-06-03
    (2, 2, '2024-06-03'), -- Radnik 2 u popodnevnoj smjeni 2024-06-03
    (3, 3, '2024-06-03'), -- Radnik 3 u noćnoj smjeni 2024-06-03
    (4, 1, '2024-06-04'), -- Radnik 4 u jutarnjoj smjeni 2024-06-04
    (5, 2, '2024-06-04'), -- Radnik 5 u popodnevnoj smjeni 2024-06-04
    (6, 3, '2024-06-04'), -- Radnik 6 u noćnoj smjeni 2024-06-04
    (7, 1, '2024-06-05'), -- Radnik 7 u jutarnjoj smjeni 2024-06-05
    (8, 2, '2024-06-05'), -- Radnik 8 u popodnevnoj smjeni 2024-06-05
    (9, 3, '2024-06-05'), -- Radnik 9 u noćnoj smjeni 2024-06-05
    (10, 1, '2024-06-05'), -- Radnik 10 u jutarnjoj smjeni 2024-06-05
    (11, 2, '2024-06-05'), -- Radnik 11 u popodnevnoj smjeni 2024-06-05
    (12, 3, '2024-06-05'), -- Radnik 12 u noćnoj smjeni 2024-06-05
    (13, 1, '2024-06-06'), -- Radnik 13 u jutarnjoj smjeni 2024-06-06
    (14, 2, '2024-06-06'), -- Radnik 14 u popodnevnoj smjeni 2024-06-06
    (15, 3, '2024-06-06'), -- Radnik 15 u noćnoj smjeni 2024-06-06
    (16, 1, '2024-06-03'), -- Radnik 16 u jutarnjoj smjeni 2024-06-03
    (17, 2, '2024-06-03'), -- Radnik 17 u popodnevnoj smjeni 2024-06-03
    (18, 3, '2024-06-03'), -- Radnik 18 u noćnoj smjeni 2024-06-03
    (19, 1, '2024-06-03'), -- Radnik 19 u jutarnjoj smjeni 2024-06-03
    (20, 2, '2024-06-03'); -- Radnik 20 u popodnevnoj smjeni 2024-06-03




SELECT * FROM smjena_radnika;
