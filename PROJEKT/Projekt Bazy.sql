drop database biblioteka;
create database biblioteka;
use biblioteka;

create table Autor(
Id integer primary key auto_increment not null,
Imie varchar(40) not null,
Nazwisko varchar(50) not null
);

create table Ksiazka(
Id integer primary key auto_increment not null,
Tytul varchar(100) not null,
Rok integer not null,
Rodzaj varchar(45),
Sygnatura varchar(20) not null,
ISBN varchar(13) not null
);

create table Czytelnik(
Id integer primary key auto_increment not null,
Imie varchar(40) not null,
Nazwisko varchar(50) not null,
Miasto varchar(50) not null,
Ulica varchar(100) not null,
Kod varchar(7) not null,
Telefon integer not null
);

create table Wypozyczenia(
Id integer primary key auto_increment not null,
Data_wypozyczenia date not null,
Data_zwrotu date,
Czytelnik_id integer not null,
Ksiazka_id integer not null,
FOREIGN KEY (Czytelnik_id) REFERENCES Czytelnik(Id),
FOREIGN KEY (Ksiazka_id) REFERENCES Ksiazka(Id)
);

create table KsiazkiAutorzy(
idAutor integer not null ,
idKsiazka integer not null,
FOREIGN KEY (idAutor) REFERENCES Autor(Id),
FOREIGN KEY (idKsiazka) REFERENCES Ksiazka(Id)
);

insert into Czytelnik values ('1','Filip', 'Boski', 'Biała Podlaska', 'Słoneczna 45', '21-500', '111222333');
insert into Czytelnik values ('2','Michał', 'Boski', 'Chełm', 'Zachodnia 2', '22-100', '222333444');
insert into Czytelnik values ('3','Kacper', 'Sowa', 'Zamość', 'Lubelska 12', '62-312', '333444555');
insert into Czytelnik values ('4','Artur', 'Rak', 'Warszawa', 'Koszykowa 14', '00-001', '444555666');
insert into Czytelnik values ('5','Paweł', 'Kowalski', 'Lublin', 'Nadbystrzycka 101', '20-400', '555666777');
insert into Czytelnik values ('6','Paweł', 'Nowak', 'Lubartów', 'Wigilijna 11', '21-100', '666777888');
insert into Czytelnik values ('7','Piotr', 'Gołąb', 'Lublin', 'Balladyny 41', '20-400', '777888999');
insert into Czytelnik values ('8','Zbigniew', 'Łodyga', 'Lublin', 'Tomasza Zana 17', '20-400', '888999000');
insert into Czytelnik values ('9','Wacław', 'Grabiec', 'Kraśnik', 'Warszawska 60', '23-200', '999000111');
insert into Czytelnik values ('10','Ireneusz', 'Kopacz', 'Świdnik', 'Klonowa 77', '21-040', '123456789');
insert into Czytelnik values ('11','Klementyna', 'Pogoda', 'Świdnik', 'Szkolna 53', '21-040', '987654321');
insert into Czytelnik values ('12','Agnieszka', 'Radwańska', 'Lublin', 'Długa 5', '20-400', '112345678');
insert into Czytelnik values ('13','Wiktoria', 'Skuza', 'Lublin', 'Głęboka 81', '20-400', '198765432');
insert into Czytelnik values ('14','Anna', 'Kot', 'Lubartów', 'Lipowa 6', '21-100', '690690690');
insert into Czytelnik values ('15','Anna', 'Kowalska', 'Niemce', 'Topolowa 1', '21-025', '741852963');
insert into Czytelnik values ('16','Karolina', 'Wilk', 'Lublin', 'Lubartowska 1', '20-400', '852963741');
insert into Czytelnik values ('17','Regina', 'Duda', 'Łęczna', 'Kamienna 7', '21-010', '963852741');
insert into Czytelnik values ('18','Barbara', 'Łodyga', 'Łęczna', 'Sosnowa 9', '21-010', '112233445');
insert into Czytelnik values ('19','Maria', 'Wróblewska', 'Łuków', 'Zamkowa 14', '22-400', '123654789');
insert into Czytelnik values ('20','Martyna', 'Boska', 'Bełżyce', 'Lubelska 17', '24-200', '985632147');
insert into Czytelnik values ('21','Janina', 'Kochanek', 'Lublin', 'Pszenna 4', '20-400', '876678876');

insert into autor values('1',"Daniel","Kraus");
insert into autor values('2',"Guillermo","del Toro");
insert into autor values('3',"Oliver","Bowden");
insert into autor values('4',"Andrzej","Ziemiański");
insert into autor values('5',"Dmitrij","Głuchowski");
insert into autor values('6',"John Ronald Reuel","Tolkien");
insert into autor values('7',"Nate","Kenyon");
insert into autor values('8',"Robert J","Szmidt");
insert into autor values('9',"Dimitrij","Manasypow");
insert into autor values('10',"Leopoldo","Gout");
insert into autor values('11',"Gordon","Doherty");
insert into autor values('12',"Kirby","Matthew");
insert into autor values('13',"Charles","Soule");
insert into autor values('14',"Katarzyna","Barlińska");
insert into autor values('15',"Frank","Herbert");
insert into autor values('16',"Przemysław","Piotrowski");
insert into autor values('17',"Krzysztof","Stanowski");
insert into autor values('18',"Robert","Mazurek");
insert into autor values('19',"Magdalena","Kostyszyn");
insert into autor values('20',"Jennifer L","Armentrout");
insert into autor values('21',"Delia","Owens");
insert into autor values('22',"Joanna","Gierak-Onoszko");
insert into autor values('23',"Hervé","Le Tellier");
insert into autor values('24',"Izabela","Janiszewska");
insert into autor values('25',"Ken","Follett");
insert into autor values('26',"Remigiusz","Mróz");
insert into autor values('27',"Lucinda","Riley");
insert into autor values('28',"Joanna","Balicka");
insert into autor values('29',"J.T.","Geissinger");
insert into autor values('30',"Harlan","Coben");
insert into autor values('31',"Kate","Quinn");
insert into autor values('32',"Leigh","Bardugo");
insert into autor values('33',"Madeline","Miller");
insert into autor values('34',"Penelope","Douglas");
insert into autor values('35',"Mieczysław","Gorzka");
insert into autor values('36',"Wiktoria","Lange");

insert into Ksiazka values ('1', 'Troll Hunters', '2015', 'Fantasy', 'F1', '9788364297557');
insert into Ksiazka values ('2',"Renesans. Assassin's Creed. Tom 1",'2010','Fantasy','F2','9788361428329');
insert into Ksiazka values ('3',"Bractwo. Assassin's Creed. Tom 2",'2011','Fantasy','F3','55056801622KS');
insert into Ksiazka values ('4','Virion. Zamek. Szermierz natchniony. Tom 1','2021','Fantasy','F4','9788379646296');
insert into Ksiazka values ('5',"Objawienia. Assassin's Creed. Tom 4",'2012','Fantasy','F5','9788361428879');
insert into Ksiazka values ('6',"Tajemna krucjata. Assassin's Creed. Tom 3",'2012','Fantasy','F6','9788361428701');
insert into Ksiazka values ('7','Wyrocznia. Virion. Tom 1','2017','Fantasy','F7','9788379642601');
insert into Ksiazka values ('8','Metro 2033','2005','Fantasy','F8','9788365315175');
insert into Ksiazka values ('9','Metro 2034','2009','Fantasy','F9','9788361428602');
insert into Ksiazka values ('10','Metro 2035','2015','Fantasy','F10','9788361428596');
insert into Ksiazka values ('11','Futu.re','2013','Fantasy','F11','9788363944483');
insert into Ksiazka values ('12','Hobbit','1937','Fantasy','F12','52571302276KS');
insert into Ksiazka values ('13','Diablo Zakon','2012','Fantasy','F13','9788375747812');
insert into Ksiazka values ('14','Obława. Virion. Tom 2','2018','Fantasy','F14','9788379643578');
insert into Ksiazka values ('15','Virion. Adept. Tom 3','2019','Fantasy','F15','9788379644155');
insert into Ksiazka values ('16','Virion. Szermierz. Tom 4','2019','Fantasy','F16','9788379645169');
insert into Ksiazka values ('17','Uniwersum Metro 2033. Otchłań','2015','Fantasy','F17','9788363944971');
insert into Ksiazka values ('18','Uniwersum Metro 2033. Droga stali i nadziei','2021','Fantasy','F18','9788366575370');
insert into Ksiazka values ('19','Geniusz Przekręt','2017','Fantasy','F19','9788381254755');
insert into Ksiazka values ('20','Geniusz rewolucja','2019','Fantasy','F20','9788381255752');
insert into Ksiazka values ('21',"Porzuceni. Assassin's Creed. Tom 5",'2013','Fantasy','F21','9788363944148');
insert into Ksiazka values ('22',"Czarna bandera. Assassin's Creed. Tom 6",'2014','Fantasy','F22','9788363944384');
insert into Ksiazka values ('23',"Pojednanie. Assassin's Creed. Tom 7",'2014','Fantasy','F23','9788363944704');
insert into Ksiazka values ('24','Assassin’s Creed Origins. Pustynna przysięga','2018','Fantasy','F24','9788365743763');
insert into Ksiazka values ('25',"Odyssey. Assassin's Creed",'2018','Fantasy','F25','9788366071797');
insert into Ksiazka values ('26',"Assasin's Creed: Valhalla Saga Geirmunda",'2021','Fantasy','F26','9788366575509');
insert into Ksiazka values ('27','Diablo 3. Nawałnica światła','2014','Fantasy','F27','9788363944407');
insert into Ksiazka values ('28','Star Wars. Wielka Republika. Światło Jedi','2021','Science Fiction','SF1','9788382165630');
insert into Ksiazka values ('29','Geniusz Gra','2016','Fantasy','F28','9788381251693');
insert into Ksiazka values ('30','Start a fire. Runda pierwsza','2022','Romans','RM1','9788328380165');
insert into Ksiazka values ('31','Diuna','1965','Fantasy','F29','9788381881388');
insert into Ksiazka values ('32','Zaraza','2021','Kryminal','K1','9788382520705');
insert into Ksiazka values ('33','Kmioty polskie','2021','Poezja','P1','9788328194888');
insert into Ksiazka values ('34','Też tak mam','2021','Reportaż','R1','9788328094888');
insert into Ksiazka values ('35','Krew i popiół','2022','Fantasy','F30','9788328720220');
insert into Ksiazka values ('36','Gdzie śpiewają raki','2019','Poezja','P2','9788381392686');
insert into Ksiazka values ('37','27 śmierci Toby’ego Obeda','2019','Reportaż','R2','9788365970343');
insert into Ksiazka values ('38','Anomalia','2020','Fantasy','F31','9788396126481');
insert into Ksiazka values ('39','Niewybaczalne','2021','Kryminal','K2','9788366981065');
insert into Ksiazka values ('40','Nigdy','2021','Poezja','P3','9788382157222');
insert into Ksiazka values ('41','Przepaść','2021','Kryminal','K3','9788381957120');
insert into Ksiazka values ('42','Siedem sióstr','2015','Romans','RM2','9788381257947');
insert into Ksiazka values ('43','Korepetytor','2021','Romans','RM3','9788381786799');
insert into Ksiazka values ('44','Piękny gangster','2021','Kryminal','RM4','9788381787147');
insert into Ksiazka values ('45','Mów mi Win','2021','Kryminal','K4','9788382157079');
insert into Ksiazka values ('46','Kod róży','2021','Historia','H1','9788327719829');
insert into Ksiazka values ('47','Szóstka wron','2015','Fantasy','F32','9788374806664');
insert into Ksiazka values ('48','Pieśń o Achillesie','2011','Fantasy','F33','9788382155242');
insert into Ksiazka values ('49','Birthday Girl','2018','Romans','RM5','9788378898344');
insert into Ksiazka values ('50','Dziewięć','2021','Kryminal','K5','9788380743755');
insert into Ksiazka values ('51','Fałszywa narzeczona','2021','Romans','RM7','9788381787130');
insert into Ksiazka values ('52','Halny','2020','Kryminal','K6','9788381952972');
insert into Ksiazka values ('53','Kasacja','2015','Kryminal','K7','9788366431614');
insert into Ksiazka values ('54','Behawiorysta','2016','Kryminal','K8','9788380751606');

insert into KsiazkiAutorzy values ('1', '1');
insert into KsiazkiAutorzy values ('2', '1');
insert into KsiazkiAutorzy values ('3', '2');
insert into KsiazkiAutorzy values ('3', '3');
insert into KsiazkiAutorzy values ('4', '4');
insert into KsiazkiAutorzy values ('3', '5');
insert into KsiazkiAutorzy values ('3', '6');
insert into KsiazkiAutorzy values ('4', '7');
insert into KsiazkiAutorzy values ('5', '8');
insert into KsiazkiAutorzy values ('5', '9');
insert into KsiazkiAutorzy values ('5', '10');
insert into KsiazkiAutorzy values ('5', '11');
insert into KsiazkiAutorzy values ('6', '12');
insert into KsiazkiAutorzy values ('7', '13');
insert into KsiazkiAutorzy values ('4', '14');
insert into KsiazkiAutorzy values ('4', '15');
insert into KsiazkiAutorzy values ('4', '16');
insert into KsiazkiAutorzy values ('8', '17');
insert into KsiazkiAutorzy values ('9', '18');
insert into KsiazkiAutorzy values ('10', '19');
insert into KsiazkiAutorzy values ('10', '20');
insert into KsiazkiAutorzy values ('3', '21');
insert into KsiazkiAutorzy values ('3', '22');
insert into KsiazkiAutorzy values ('3', '23');
insert into KsiazkiAutorzy values ('3', '24');
insert into KsiazkiAutorzy values ('11', '25');
insert into KsiazkiAutorzy values ('12', '26');
insert into KsiazkiAutorzy values ('7', '27');
insert into KsiazkiAutorzy values ('13', '28');
insert into KsiazkiAutorzy values ('10', '29');
insert into KsiazkiAutorzy values ('14', '30');
insert into KsiazkiAutorzy values ('15', '31');
insert into KsiazkiAutorzy values ('16', '32');
insert into KsiazkiAutorzy values ('17', '33');
insert into KsiazkiAutorzy values ('18', '33');
insert into KsiazkiAutorzy values ('19', '34');
insert into KsiazkiAutorzy values ('20', '35');
insert into KsiazkiAutorzy values ('21', '36');
insert into KsiazkiAutorzy values ('22', '37');
insert into KsiazkiAutorzy values ('23', '38');
insert into KsiazkiAutorzy values ('24', '39');
insert into KsiazkiAutorzy values ('25', '40');
insert into KsiazkiAutorzy values ('26', '41');
insert into KsiazkiAutorzy values ('27', '42');
insert into KsiazkiAutorzy values ('28', '43');
insert into KsiazkiAutorzy values ('29', '44');
insert into KsiazkiAutorzy values ('30', '45');
insert into KsiazkiAutorzy values ('31', '46');
insert into KsiazkiAutorzy values ('32', '47');
insert into KsiazkiAutorzy values ('33', '48');
insert into KsiazkiAutorzy values ('34', '49');
insert into KsiazkiAutorzy values ('35', '50');
insert into KsiazkiAutorzy values ('36', '51');
insert into KsiazkiAutorzy values ('26', '52');
insert into KsiazkiAutorzy values ('26', '53');
insert into KsiazkiAutorzy values ('26', '54');

insert into Wypozyczenia values ('1','2020-05-16','2020-06-16','1','24');
insert into Wypozyczenia values ('2','2004-04-04','2004-06-06','2','24');
insert into Wypozyczenia values ('3','2020-03-14','2020-06-01','3','30');
insert into Wypozyczenia values ('4','2010-10-02','2011-01-02','4','8');
insert into Wypozyczenia values ('5','2012-12-17','2013-03-04','5','38');
insert into Wypozyczenia values ('6','1999-08-10','1999-09-09','6','21');
insert into Wypozyczenia values ('7','2012-12-12','2013-02-01','7','17');
insert into Wypozyczenia values ('8','2017-07-03','2017-09-07','8','7');
insert into Wypozyczenia values ('9','2008-08-08','2008-10-31','9','15');
insert into Wypozyczenia values ('10','2021-01-30','2021-04-30','10','1');
insert into Wypozyczenia values ('11','2007-03-11','2007-05-05','1','51');
insert into Wypozyczenia values ('12','2003-02-01','2003-03-04','8','52');
insert into Wypozyczenia values ('13','1997-05-04','1997-11-20','11','47');
insert into Wypozyczenia values ('14','1998-03-20','1998-09-27','12','42');
insert into Wypozyczenia values ('15','2003-02-11','2003-08-14','13','35');
insert into Wypozyczenia values ('16','2002-01-16','2002-07-25','14','53');
insert into Wypozyczenia values ('17','2000-04-05','2000-10-17','15','45');
insert into Wypozyczenia values ('18','2003-09-19','2004-03-27','16','26');
insert into Wypozyczenia values ('19','2002-02-16','2002-08-28','17','29');
insert into Wypozyczenia values ('20','2008-07-22','2009-01-28','18','33');
insert into Wypozyczenia values ('21','2006-09-03','2007-03-10','19','51');
insert into Wypozyczenia values ('22','2010-10-04','2011-04-17','20','11');
insert into Wypozyczenia values ('23','2007-06-14','2007-12-26','21','2');
insert into Wypozyczenia values ('24','2008-03-20','2008-09-27','20','11');
insert into Wypozyczenia values ('25','2013-03-11','2013-09-14','13','38');
insert into Wypozyczenia values ('26','2012-02-16','2012-08-25','4','54');
insert into Wypozyczenia values ('27','2010-05-05','2010-11-17','5','26');
insert into Wypozyczenia values ('28','2013-10-19','2014-04-27','16','45');
insert into Wypozyczenia values ('29','2012-03-16','2012-09-22','17','17');
insert into Wypozyczenia values ('30','2017-09-22','2018-03-21','8','21');
insert into Wypozyczenia values ('31','2016-09-07','2017-03-22','1','4');
insert into Wypozyczenia values ('32','2020-11-22','2021-05-14','19','37');
insert into Wypozyczenia values ('33','1999-11-04','2000-01-19','1','16');
insert into Wypozyczenia values ('34','1991-07-07','1991-11-11','2','38');
insert into Wypozyczenia values ('35','1995-05-08','1995-07-01','3','54');
insert into Wypozyczenia values ('36','2001-03-23','2001-05-16','4','9');
insert into Wypozyczenia values ('37','2002-02-02','2002-04-06','5','20');
insert into Wypozyczenia values ('38','2022-01-02','2022-01-24','6','28');
insert into Wypozyczenia values ('39','2019-09-12','2019-12-09','7','14');
insert into Wypozyczenia values ('40','2005-06-20','2005-08-09','8','8');
insert into Wypozyczenia values ('41','2006-04-07','2006-07-05','9','44');
insert into Wypozyczenia values ('42','2008-03-14','2008-05-16','10','50');
insert into Wypozyczenia values ('43','2005-11-01','2005-11-30','21','47');
insert into Wypozyczenia values ('44','2011-04-21','2011-07-01','5','11');
insert into Wypozyczenia values ('45','2000-01-01','2000-03-03','6','31');
insert into Wypozyczenia values ('46','2014-07-07','2014-07-10','7','37');
insert into Wypozyczenia values ('47','2016-05-02','2016-07-23','7','6');
insert into Wypozyczenia values ('48','2015-04-25','2015-02-25','9','10');
insert into Wypozyczenia values ('49','2010-06-16','2010-07-14','1','40');
insert into Wypozyczenia values ('50','2015-01-13','2015-02-01','2','12');
