Izvješće o projektu: Sustav upravljanja hotelom

1. Tim 5:
- Iva Batur
	- Lea Beletić
	- Tanja Gattin-Zebić
	- Marta Kralj
	- Marko Valečić

2. Uvod
•	U ovom izvješću opisujemo diskusiju i rezultat timskog projekta: Sustav upravljanja hotelom. Cilj projekta je osmisliti i realizirati bazu podataka koja će omogućiti uspješno i efikasno poslovanje jednog hotela ili više njih. Sustav sadrži razne informacije kao što su: rezervacije soba, evidencija gostiju, evidencija soba, upravljanje uslugama te mnoge druge podatke koji   učinkovito riješavaju svakodnevne zadatke.


3. Opis sastanka

•	Nakon saznanja projektnog zadatka te svih dostupnih tema, oformili smo grupu za članove tima, posvećenu tom projektu. Dogovorili smo prvi sastanak na kojem smo diskutirali o projektu i ponuđenim temama te potencijalno odabrali drugu temu koju smo predali na zahtjev za odobrenje. Temu smo detaljno razradili, identificirali entitete te njihove veze. Nakon što je tema odobrena, dogovorili smo drugi sastanak. Na drugom sastanku, također održanom online putem videopoziva, svatko od nas iznosi prijedloge kako bi usavršili naš projekt u budućnosti. Ovaj model ne predstavlja finalnu verziju, već će se mijenjati s vremenom kako budemo stjecali nova znanja. Na sastancima su aktivno sudjelovali svi članovi tima.
Sve datoteke su uploadane na github, kako bi bile dostupne svima.
Link: https://github.com/V-DevCode/BazePodatakaProjekt





5. Relacijski model
•	gosti(id_gost, ime, prezime, adresa, država, telefon, email)
•	tip_rezervacije(id_tip_rezervacije, naziv, web_stranica, oib, popust)
•	zaposlenici(id_zaposlenik, ime, prezime, telefon, spol, id_pozicija)
•	pozicija(id_pozicija, naziv_pozicije, plaća)
•	smjena(id_smjena, tip_smjene, pocetak_smjene, kraj_smjene)
•	tip_smještaja(id_tip, naziv)
•	vrsta_smještaja(id_vrsta_smještaja, naziv, cijena_noci, id_broj_kreveta, id_tip_smještaja)
•	broj_kreveta(id_broj_kreveta, vrsta, kolicina)
•	dodatne_usluge(id_dodatne_usluge, naziv, cijena)
•	dodaci_smjestaja(id_dodatak_smjestaja, id_vrsta_smjestaja, id_dodatak)
•	rezervacija(id_rezervacija, datum_prijave, datum_odjave, broj_gostiju, id_zaposlenik, id_agencija, id_gost, id_tip, id_racun)
•	racun(id_racun, bro_racuna, datum, vrijeme, vrsta_placanja, id_dodatne_usluge, cijena)


6. Opis relacijskog modela

Razvijamo relacijski model bez podataka za upravljanje hotelskim uslugama. U hotelu rade zaposlenici koji su podijeljeni po radnim pozicijama koje uključuju naziv pozicije i plaću, te njihovo radno vrijeme, odnosno naziv smjene, početak smjene i kraj smjene. Za svakog zaposlenika pratimo ime, prezime, telefon i spol. Prije samog dolaska, gosti sami odlučuju kako će rezervirati svoj smještaj, te za svaki odabir evidentiramo naziv, web, OIB i dodatni popust. Nakon toga upisujemo podatke za gosta koji rezervira smještaj, a to su ime, prezime, adresa, država, telefon i mail. Kada smo spremili sve podatke o korisniku, na red dolazi odabir smještaja. Nudimo razne vrste smještaja, od osnovnih do ekskluzivnih koji uključuju razne dodatke smještaja. Za svaki naš smještaj znamo broj ležećih mjesta, te prema tome našim gostima možemo brzo i jednostavno dodijeliti smještaj. Sada imamo sve spremno pa možemo naše podatke spremiti pod stavku rezervacija za koju pratimo datum prijave, datum odjave, broj gostiju, zaposlenika koji je rezervaciju napravio, te kako je smještaj rezerviran. Ukoliko tijekom boravka gost želi dodatne usluge, ni to nije problem, jer i za to vodimo evidenciju. Na samom kraju boravka korisniku izdajemo račun na kojem jasno piše broj računa, datum, vrijeme, vrsta plaćanja te ukupan iznos.
