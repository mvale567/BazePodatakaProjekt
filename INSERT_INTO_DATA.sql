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

<<<<<<< HEAD
-- INSERT podaci za tablicu radnik_skladiste
INSERT INTO radnik_skladiste (id_radnik, id_skladiste, datum_provjere, napomena)
VALUES 
    (1, 1, '2023-05-01', 'Provjereno'),
    (2, 2, '2023-05-01', 'Provjereno'),
    (3, 3, '2023-05-01', 'Provjereno'),
    (4, 4, '2023-05-01', 'Provjereno'),
    (5, 5, '2023-05-01', 'Provjereno');
=======
-- 4.Tablica koja povezuje radnik-skladiste, rezultat odnosa "vise-na-vise" --
INSERT INTO radnik_skladiste (id_radnik, id_skladiste, datum_provjere, napomena)
VALUES
(1, 1, '2024-01-01', 'Provjera stanja zaliha u glavnom skladištu.'),
(2, 1, '2024-01-02', 'Pregled kvalitete svježeg voća i povrća.'),
(3, 2, '2024-01-03', 'Provjera ispravnosti elektroničkih uređaja.'),
(4, 2, '2024-01-04', 'Ocjenjivanje stanja inventara kuhinjske opreme.'),
(5, 3, '2024-01-05', 'Provjera kvalitete posteljine i ručnika.'),
(6, 3, '2024-01-06', 'Pregled stanja mini barova u sobama.'),
(1, 1, '2024-02-01', 'Provjera stanja zaliha u glavnom skladištu.'),
(2, 1, '2024-02-02', 'Pregled kvalitete svježeg voća i povrća.'),
(3, 2, '2024-02-03', 'Provjera ispravnosti elektroničkih uređaja.'),
(4, 2, '2024-02-04', 'Ocjenjivanje stanja inventara kuhinjske opreme.'),
(5, 3, '2024-02-05', 'Provjera kvalitete posteljine i ručnika.'),
(6, 3, '2024-02-06', 'Pregled stanja mini barova u sobama.'),
(1, 1, '2024-03-01', 'Provjera stanja zaliha u glavnom skladištu.'),
(2, 1, '2024-03-02', 'Pregled kvalitete svježeg voća i povrća.'),
(3, 2, '2024-03-03', 'Provjera ispravnosti elektroničkih uređaja.'),
(4, 2, '2024-03-04', 'Ocjenjivanje stanja inventara kuhinjske opreme.'),
(5, 3, '2024-03-05', 'Provjera kvalitete posteljine i ručnika.'),
(6, 3, '2024-03-06', 'Pregled stanja mini barova u sobama.'),
(1, 1, '2024-04-01', 'Provjera stanja zaliha u glavnom skladištu.'),
(2, 1, '2024-04-02', 'Pregled kvalitete svježeg voća i povrća.'),
(3, 2, '2024-04-03', 'Provjera ispravnosti elektroničkih uređaja.'),
(4, 2, '2024-04-04', 'Ocjenjivanje stanja inventara kuhinjske opreme.'),
(5, 3, '2024-04-05', 'Provjera kvalitete posteljine i ručnika.'),
(6, 3, '2024-04-06', 'Pregled stanja mini barova u sobama.'),
(1, 1, '2024-05-01', 'Provjera stanja zaliha u glavnom skladištu.'),
(2, 1, '2024-05-02', 'Pregled kvalitete svježeg voća i povrća.'),
(3, 2, '2024-05-03', 'Provjera ispravnosti elektroničkih uređaja.'),
(4, 2, '2024-05-04', 'Ocjenjivanje stanja inventara kuhinjske opreme.'),
(5, 3, '2024-05-05', 'Provjera kvalitete posteljine i ručnika.'),
(6, 3, '2024-05-06', 'Pregled stanja mini barova u sobama.');


-- 5.Tablica dobavljac--
INSERT INTO dobavljac (naziv, kontakt_osoba, telefon, email)
VALUES
('Fresh Food d.o.o.', 'Ivan Horvat', '+385991234567', 'info@freshfood.com'),
('Meblo d.o.o.', 'Ana Kovač', '+385981234567', 'ana@meblo.hr'),
('Voće i povrće d.o.o.', 'Marko Novak', '+385971234567', 'marko@voceipovrce.hr'),
('Čistoća d.o.o.', 'Marija Knežević', '+385961234567', 'marija@cistoca.hr'),
('Elektronika Plus d.o.o.', 'Petar Horvat', '+385951234567', 'petar@elektronikaplus.hr'),
('Tekstilni svijet d.o.o.', 'Ivana Kovačević', '+385941234567', 'ivana@tekstilnisvijet.hr'),
('Agro voće d.o.o.', 'Antonio Maretić', '+385931234567', 'antonio@agrovoce.hr'),
('Majstor alat d.o.o.', 'Igor Matić', '+385921234567', 'igor@majstoralat.hr'),
('Gastro oprema d.o.o.', 'Martina Kovač', '+385911234567', 'martina@gastrooprema.hr'),
('Bio proizvodi d.o.o.', 'Ivana Horvat', '+385901234567', 'ivana@bioproizvodi.hr'),
('Novi namještaj d.o.o.', 'Petar Novak', '+385991234566', 'petar@novinamjestaj.hr'),
('Brza dostava d.o.o.', 'Ana Maretić', '+385981234566', 'ana@brzadostava.hr'),
('Voće iz domaćeg uzgoja d.o.o.', 'Marko Kovač', '+385971234566', 'marko@domacevoce.hr'),
('Čistoća i urednost d.o.o.', 'Marija Novak', '+385961234566', 'marija@uredno.hr'),
('Elektro oprema d.o.o.', 'Petra Knežević', '+385951234566', 'petra@elektrooprema.hr'),
('Tekstilne kreacije d.o.o.', 'Ivan Kovačević', '+385941234566', 'ivan@tekstilkreacije.hr'),
('Poljoprivredni proizvodi d.o.o.', 'Antonio Horvat', '+385931234566', 'antonio@poljoprivredni.hr'),
('Alati i oprema d.o.o.', 'Igor Maretić', '+385921234566', 'igor@alatioprema.hr'),
('Kuhinjska oprema d.o.o.', 'Martina Novak', '+385911234566', 'martina@kuhinjskaoprema.hr'),
('Organski proizvodi d.o.o.', 'Ivana Maretić', '+385901234566', 'ivana@organski.hr'),
('Nove stolice d.o.o.', 'Petar Knežević', '+385991234565', 'petar@novestolice.hr'),
('Brza isporuka d.o.o.', 'Ana Novak', '+385981234565', 'ana@brzaisporuka.hr'),
('Voće iz ekološkog uzgoja d.o.o.', 'Marko Knežević', '+385971234565', 'marko@eko.hr'),
('Čistoća bez kompromisa d.o.o.', 'Marija Kovač', '+385961234565', 'marija@bezkompromisa.hr'),
('Elektro instalacije d.o.o.', 'Petra Novak', '+385951234565', 'petra@elektroinstalacije.hr'),
('Tekstilna industrija d.o.o.', 'Ivan Maretić', '+385941234565', 'ivan@tekstilindustrija.hr'),
('Poljoprivreda i uzgoj d.o.o.', 'Antonio Kovačević', '+385931234565', 'antonio@poljoprivreda.hr'),
('Alat i pribor d.o.o.', 'Igor Novak', '+385921234565', 'igor@alati.hr'),
('Kuhinjski pribor d.o.o.', 'Martina Kovač', '+385911234565', 'martina@kuhinjskipribor.hr');


-- 6.Tablica koja povezuje skladiste-dobavljac, rezultat odnosa "vise-na-vise" --
INSERT INTO skladiste_dobavljac (id_skladiste, id_dobavljac, datum_dostave, napomena) 
VALUES
(1, 1, '2024-01-01', 'Dostava robe za popunjavanje zaliha.'),
(1, 2, '2024-01-05', 'Nova pošiljka namještaja za hotelske sobe.'),
(2, 3, '2024-01-10', 'Dostava svježeg voća i povrća za restoran.'),
(2, 4, '2024-01-15', 'Nabavka potrošnog materijala za čišćenje.'),
(3, 5, '2024-01-20', 'Dostava novih elektroničkih uređaja za sobe.'),
(3, 6, '2024-01-25', 'Nabavka dodatnih artikala za minibar u sobama.'),
(1, 1, '2024-02-01', 'Dostava svježeg mesa i ribe za restoran.'),
(1, 2, '2024-02-05', 'Nabavka potrošnog materijala za održavanje soba.'),
(2, 3, '2024-02-10', 'Dostava novih stolova i stolica za restoran.'),
(2, 4, '2024-02-15', 'Nabavka kuhinjskih aparata za restoran.'),
(3, 5, '2024-02-20', 'Dostava novih madraca za hotelske sobe.'),
(3, 6, '2024-02-25', 'Nabavka dodatnih ručnika i posteljine.'),
(1, 1, '2024-03-01', 'Dostava svježeg voća i povrća za restoran.'),
(1, 2, '2024-03-05', 'Nabavka novih sobnih ključeva za goste.'),
(2, 3, '2024-03-10', 'Dostava novih tepiha za hotelske sobe.'),
(2, 4, '2024-03-15', 'Nabavka potrošnog materijala za čišćenje bazena.'),
(3, 5, '2024-03-20', 'Dostava novih televizora za hotelske sobe.'),
(3, 6, '2024-03-25', 'Nabavka dodatnih mini barova za sobe.'),
(1, 1, '2024-04-01', 'Dostava svježeg mesa i ribe za restoran.'),
(1, 2, '2024-04-05', 'Nabavka potrošnog materijala za održavanje soba.'),
(2, 3, '2024-04-10', 'Dostava novih stolova i stolica za restoran.'),
(2, 4, '2024-04-15', 'Nabavka kuhinjskih aparata za restoran.'),
(3, 5, '2024-04-20', 'Dostava novih madraca za hotelske sobe.'),
(3, 6, '2024-04-25', 'Nabavka dodatnih ručnika i posteljine.'),
(1, 1, '2024-05-01', 'Dostava svježeg voća i povrća za restoran.'),
(1, 2, '2024-05-05', 'Nabavka novih sobnih ključeva za goste.'),
(2, 3, '2024-05-10', 'Dostava novih tepiha za hotelske sobe.'),
(2, 4, '2024-05-15', 'Nabavka potrošnog materijala za čišćenje bazena.'),
(3, 5, '2024-05-20', 'Dostava novih televizora za hotelske sobe.'),
(3, 6, '2024-05-25', 'Nabavka dodatnih mini barova za sobe.');


-- 8.Tablica smjena_radnika --
INSERT INTO smjena_radnika (naziv, vrijeme_pocetka, vrijeme_zavrsetka) 
VALUES
('Jutarnja smjena', '08:00:00', '16:00:00'),
('Popodnevna smjena', '16:00:00', '00:00:00'),
('Noćna smjena', '00:00:00', '08:00:00');

-- 9.Tablica koja povezuje radnik-smjena_radnik, rezultat odnosa "vise-na-vise" --
INSERT INTO radnik_smjena_radnika (id_radnik, id_smjena, datum) 
VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-02'),
(3, 3, '2024-01-03'),
(4, 4, '2024-01-04'),
(5, 5, '2024-01-05'),
(6, 6, '2024-01-06'),
(7, 7, '2024-01-07'),
(8, 8, '2024-01-08'),
(9, 9, '2024-01-09'),
(10, 10, '2024-01-10'),
(11, 11, '2024-01-11'),
(12, 12, '2024-01-12'),
(13, 13, '2024-01-13'),
(14, 14, '2024-01-14'),
(15, 15, '2024-01-15'),
(16, 16, '2024-01-16'),
(17, 17, '2024-01-17'),
(18, 18, '2024-01-18'),
(19, 19, '2024-01-19'),
(20, 20, '2024-01-20'),
(21, 21, '2024-01-21'),
(22, 22, '2024-01-22'),
(23, 23, '2024-01-23'),
(24, 24, '2024-01-24'),
(25, 25, '2024-01-25'),
(26, 26, '2024-01-26'),
(27, 27, '2024-01-27'),
(28, 28, '2024-01-28'),
(29, 29, '2024-01-29'),
(30, 30, '2024-01-30');


-- 11.Tablica soba --
INSERT INTO soba (broj_sobe, tip, opis, cijena_nocenja, id_raspored_ciscenja) 
VALUES
(101, 'Jednokrevetna', 'Soba s jednim krevetom i privatnom kupaonicom.', 50.00, 1),
(102, 'Jednokrevetna', 'Soba s jednim krevetom i pogledom na more.', 60.00, 2),
(103, 'Jednokrevetna', 'Soba s jednim krevetom i balkonom.', 55.00, 3),
(104, 'Dvokrevetna', 'Soba s bračnim krevetom i dodatnim ležajem.', 70.00, 4),
(105, 'Dvokrevetna', 'Soba s dva odvojena kreveta.', 65.00, 5),
(106, 'Dvokrevetna', 'Soba s bračnim krevetom i pogledom na planine.', 75.00, 6),
(107, 'Trokrevetna', 'Prostrana soba s bračnim krevetom i jednim odvojenim krevetom.', 85.00, 7),
(108, 'Trokrevetna', 'Soba s jednim bračnim krevetom i dva odvojena kreveta.', 80.00, 8),
(109, 'Trokrevetna', 'Soba s bračnim krevetom, jednim odvojenim krevetom i balkonom.', 90.00, 9),
(110, 'Obiteljska', 'Velika soba s bračnim krevetom, dva odvojena kreveta i balkonom.', 100.00, 10),
(111, 'Obiteljska', 'Soba s bračnim krevetom, dva odvojena kreveta i pogledom na more.', 110.00, 11),
(112, 'Obiteljska', 'Soba s dva bračna kreveta i dodatnim ležajem.', 120.00, 12),
(113, 'Suite', 'Elegantna soba s luksuznim namještajem i pogledom na rijeku.', 150.00, 13),
(114, 'Suite', 'Soba s prostranim dnevnim boravkom i panoramskim pogledom.', 160.00, 14),
(115, 'Suite', 'Luksuzna soba s bračnim krevetom, jacuzzijem i privatnim balkonom.', 180.00, 15),
(201, 'Jednokrevetna', 'Soba s jednim krevetom i privatnom kupaonicom.', 50.00, 16),
(202, 'Jednokrevetna', 'Soba s jednim krevetom i pogledom na more.', 60.00, 17),
(203, 'Jednokrevetna', 'Soba s jednim krevetom i balkonom.', 55.00, 18),
(204, 'Dvokrevetna', 'Soba s bračnim krevetom i dodatnim ležajem.', 70.00, 19),
(205, 'Dvokrevetna', 'Soba s dva odvojena kreveta.', 65.00, 20),
(206, 'Dvokrevetna', 'Soba s bračnim krevetom i pogledom na planine.', 75.00, 21),
(207, 'Trokrevetna', 'Prostrana soba s bračnim krevetom i jednim odvojenim krevetom.', 85.00, 22),
(208, 'Trokrevetna', 'Soba s jednim bračnim krevetom i dva odvojena kreveta.', 80.00, 23),
(209, 'Trokrevetna', 'Soba s bračnim krevetom, jednim odvojenim krevetom i balkonom.', 90.00, 24),
(210, 'Obiteljska', 'Velika soba s bračnim krevetom, dva odvojena kreveta i balkonom.', 100.00, 25),
(211, 'Obiteljska', 'Soba s bračnim krevetom, dva odvojena kreveta i pogledom na more.', 110.00, 26),
(212, 'Obiteljska', 'Soba s dva bračna kreveta i dodatnim ležajem.', 120.00, 27),
(213, 'Suite', 'Elegantna soba s luksuznim namještajem i pogledom na rijeku.', 150.00, 28),
(214, 'Suite', 'Soba s prostranim dnevnim boravkom i panoramskim pogledom.', 160.00, 29),
(215, 'Suite', 'Luksuzna soba s bračnim krevetom, jacuzzijem i privatnim balkonom.', 180.00, 30);


-- 12.Tablica zahtjev_odrzavanja --
INSERT INTO zahtjev_odrzavanja (opis, datum_zahtjeva, stanje, id_soba, id_gost) 
VALUES
('Potrebno je popraviti slomljenu svjetiljku.', '2024-01-01', 'U tijeku', 1, 1),
('Zamijeniti dotrajalu klima uređaj.', '2024-01-02', 'U tijeku', 2, 2),
('Otkazati zahtjev za čišćenjem sobe.', '2024-01-03', 'Otkazano', 3, 3),
('Završiti renovaciju kupaonice.', '2024-01-04', 'Završeno', 4, 4),
('Otkazati zahtjev za dodatnim ručnicima.', '2024-01-05', 'Otkazano', 5, 5),
('Potrebno je popraviti slavinu u kupaonici.', '2024-01-06', 'U tijeku', 6, 6),
('Zamijeniti dotrajali tepih u sobi.', '2024-01-07', 'U tijeku', 7, 7),
('Popraviti vrata ormara koja se teško zatvaraju.', '2024-01-08', 'U tijeku', 8, 8),
('Završiti bojanje zidova u sobi.', '2024-01-09', 'Završeno', 9, 9),
('Otkazati zahtjev za dodatnim jastucima.', '2024-01-10', 'Otkazano', 10, 10),
('Potrebno je očistiti ventilacijske otvore.', '2024-01-11', 'U tijeku', 11, 11),
('Zamijeniti dotrajali madrac na krevetu.', '2024-01-12', 'U tijeku', 12, 12),
('Završiti montažu radnog stola u sobi.', '2024-01-13', 'Završeno', 13, 13),
('Otkazati zahtjev za dodatnim pokrivačima.', '2024-01-14', 'Otkazano', 14, 14),
('Potrebno je popraviti pokvareni televizor.', '2024-01-15', 'U tijeku', 15, 15),
('Zamijeniti dotrajale utičnice u sobi.', '2024-01-16', 'U tijeku', 1, 16),
('Otkazati zahtjev za dodatnim ručnicima.', '2024-01-17', 'Otkazano', 2, 17),
('Potrebno je popraviti slomljenu stolicu.', '2024-01-18', 'U tijeku', 3, 18),
('Zamijeniti dotrajali tepih u hodniku.', '2024-01-19', 'U tijeku', 4, 19),
('Završiti popravak rasvjete u sobi.', '2024-01-20', 'Završeno', 5, 20),
('Otkazati zahtjev za dodatnim jastucima.', '2024-01-21', 'Otkazano', 6, 21),
('Potrebno je očistiti ventilacijske otvore.', '2024-01-22', 'U tijeku', 7, 22),
('Zamijeniti dotrajali madrac na krevetu.', '2024-01-23', 'U tijeku', 8, 23),
('Završiti montažu radnog stola u sobi.', '2024-01-24', 'Završeno', 9, 24),
('Otkazati zahtjev za dodatnim pokrivačima.', '2024-01-25', 'Otkazano', 10, 25),
('Potrebno je popraviti pokvareni televizor.', '2024-01-26', 'U tijeku', 11, 26),
('Zamijeniti dotrajale utičnice u sobi.', '2024-01-27', 'U tijeku', 12, 27),
('Otkazati zahtjev za dodatnim ručnicima.', '2024-01-28', 'O


-- 13.Tablica sadrzaj --
INSERT INTO sadrzaj (naziv, opis) 
VALUES
('TV', 'Televizor s dostupnim TV programima.'),
('Klima uređaj', 'Klima uređaj za regulaciju temperature.'),
('Mini bar', 'Mini hladnjak s raznim pićima i grickalicama.'),
('Wi-Fi', 'Besplatan pristup bežičnom internetu.'),
('Radni stol', 'Radni stol za udobno radno okruženje.'),
('Kava i čaj', 'Besplatan čaj i kava u sobi.'),
('Sef', 'Sigurnosni sef za čuvanje vrijednih predmeta.'),
('Kupaonica', 'Privatna kupaonica s tušem i toaletom.'),
('Balkon', 'Privatni balkon s pogledom na okolinu.'),
('Besplatan doručak', 'Doručak uključen u cijenu smještaja.'),
('Room service', 'Usluga dostave hrane i pića u sobu.'),
('Fitness centar', 'Pristup fitness centru s modernom opremom.'),
('Wellness centar', 'Pristup wellness centru s saunom i bazenom.'),
('Spa tretmani', 'Razni spa tretmani i masaže.'),
('Bazen', 'Vanjski bazen za osvježenje i opuštanje.'),
('Parkiralište', 'Besplatno parkiralište za goste hotela.'),
('Restoran', 'Restoran unutar hotela s bogatim izborom jela.'),
('Bar', 'Bar unutar hotela s raznovrsnom ponudom pića.'),
('Recepcija 24/7', 'Recepcija otvorena 24 sata dnevno.'),
('Doručak u sobi', 'Mogućnost naručivanja doručka u sobu.'),
('Perilica rublja', 'Mogućnost korištenja perilice rublja.'),
('Sušilo za kosu', 'Sušilo za kosu u kupaonici.'),
('Besplatni toaletni pribor', 'Toaletni pribor dostupan u sobi.'),
('Usluga čišćenja', 'Redovna usluga čišćenja sobe.'),
('Glačalo', 'Glačalo i stol za glačanje na zahtjev.'),
('Soba za nepušače', 'Soba namijenjena nepušačima.'),
('Kućni ljubimci dozvoljeni', 'Dozvoljen boravak kućnih ljubimaca.'),
('Dječji krevetić', 'Dječji krevetić dostupan na zahtjev.'),
('Besplatna karta grada', 'Besplatna karta grada s turističkim informacijama.');

>>>>>>> 8e64b03f03391a8a945e5d5d58533f82d508df19

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
    
   
