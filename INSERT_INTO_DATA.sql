USE hotel;

INSERT INTO raspored_ciscenja (datum, stanje)
VALUES 
    ('2023-05-01', 'Završeno'),
    ('2023-05-02', 'U tijeku'),
    ('2023-05-03', 'Planirano'),
    ('2023-05-04', 'Planirano'),
    ('2023-05-05', 'U tijeku'),
    ('2023-05-06', 'Završeno'),
    ('2023-05-07', 'Planirano'),
    ('2023-05-08', 'U tijeku'),
    ('2023-05-09', 'Završeno'),
    ('2023-05-10', 'Planirano'),
    ('2023-05-11', 'U tijeku'),
    ('2023-05-12', 'Završeno'),
    ('2023-05-13', 'Planirano'),
    ('2023-05-14', 'U tijeku'),
    ('2023-05-15', 'Završeno'),
    ('2023-05-16', 'Planirano'),
    ('2023-05-17', 'U tijeku'),
    ('2023-05-18', 'Završeno'),
    ('2023-05-19', 'Planirano'),
    ('2023-05-20', 'U tijeku'),
    ('2023-05-21', 'Završeno'),
    ('2023-05-22', 'Planirano'),
    ('2023-05-23', 'U tijeku'),
    ('2023-05-24', 'Završeno'),
    ('2023-05-25', 'Planirano'),
    ('2023-05-26', 'U tijeku'),
    ('2023-05-27', 'Završeno'),
    ('2023-05-28', 'Planirano'),
    ('2023-05-29', 'U tijeku'),
    ('2023-05-30', 'Završeno');
    
INSERT INTO radno_mjesto (naziv, opis, odjel)
VALUES 
    ('Čistač', 'Čišćenje prostorija', 'Odjel A'),
    ('Recepcionar', 'Prijava gostiju i izdavanje ključeva', 'Recepcija'),
    ('Kuhar', 'Priprema jela', 'Restoran'),
    ('Sobarica', 'Održavanje čistoće soba', 'Odjel čistoće'),
    ('Administrator', 'Upravljanje sustavom', 'Uprava'),
    ('Vodoinstalater', 'Popravak vodovodnih instalacija', 'Održavanje');
    
INSERT INTO radnik (ime, prezime, odjel, telefon, email, datum_zaposlenja, id_radno_mjesto, id_raspored_ciscenja)
VALUES 
    ('Ivan', 'Horvat', 'Odjel A', '0123456789', 'ivan.horvat@example.com', '2023-01-15', 1, 1),
    ('Petra', 'Kovačević', 'Recepcija', '0987654321', 'petra.kovacevic@example.com', '2023-02-20', 2, 2),
    ('Marko', 'Marić', 'Restoran', '0912345678', 'marko.maric@example.com', '2023-03-10', 3, 3),
    ('Ana', 'Kovač', 'Odjel čistoće', '0956789012', 'ana.kovac@example.com', '2023-04-05', 4, 4),
    ('Matej', 'Novak', 'Uprava', '0923456789', 'matej.novak@example.com', '2023-05-15', 5, 5);
    
INSERT INTO gost (ime, prezime, datum_rodenja, adresa, telefon, email)
VALUES 
    ('Ana', 'Kovač', '1985-03-25', 'Ulica 1, Grad', '0912345678', 'ana.kovac@example.com'),
    ('Ivan', 'Babić', '1978-07-15', 'Trg 2, Grad', '0987654321', 'ivan.babic@example.com'),
    ('Petra', 'Kovačević', '1990-11-03', 'Prolaz 3, Grad', '0956789012', 'petra.kovacevic@example.com'),
    ('Marko', 'Horvat', '1982-09-18', 'Avenija 4, Grad', '0923456789', 'marko.horvat@example.com'),
    ('Lucija', 'Marić', '1995-05-12', 'Ulica 5, Grad', '0912345678', 'lucija.maric@example.com');
    
INSERT INTO skladiste (odjel, naziv_proizvoda, kolicina_proizvoda)
VALUES 
    ('Higijenske potrebstine', 'Toaletni papir', 200),
    ('Hrana', 'Riža', 150),
    ('Piće', 'Voda', 300),
    ('Higijenske potrebstine', 'Šampon', 100),
    ('Hrana', 'Tjestenina', 180),
    ('Piće', 'Gazirani sok', 250),
    ('Higijenske potrebstine', 'Gel za tuširanje', 150),
    ('Hrana', 'Konzervirana hrana', 200),
    ('Piće', 'Vino', 120),
    ('Higijenske potrebstine', 'Sapun', 180),
    ('Hrana', 'Meso', 100),
    ('Piće', 'Pivo', 200),
    ('Higijenske potrebstine', 'Dezinficijens', 150),
    ('Hrana', 'Voće', 180),
    ('Piće', 'Sok od voća', 100),
    ('Higijenske potrebstine', 'Pelene', 300),
    ('Hrana', 'Povrće', 150),
    ('Piće', 'Kava', 180);
    
    
