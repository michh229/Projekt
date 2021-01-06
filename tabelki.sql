Create database Restauracja;
use Restauracja;

Create table Pracownicy
(
id_pracownika int auto_increment primary key,
imie varchar(20),
nazwisko varchar(20),
telefon varchar(20),
pesel int,
rola varchar(20),
ZarobkiZaGodzine decimal
);

Create table Dania
(
id_dania int auto_increment primary key,
danie varchar(20),
rodzaj_dania varchar(20),
cena decimal not null,
czas_przygotowania_minut int,
srednia_zamowien_na_dzien int
);

create table klienci
(
id_klienta int auto_increment primary key,
imie varchar(30),
zamowienie varchar(20),
dzien varchar(20),
godzina time,
ocena varchar(20) 
);

create table pizze
(
nazwa_pizzy varchar(20),
skladnik1 varchar(20),
skladnik2 varchar(20),
skladnik3 varchar(20),
ostra varchar(5),
cena decimal not null
);

create table dostawy
(
id_dostawy int auto_increment primary key,
dostawa varchar(20),
dzien_dostawy varchar(20),
godzina_dostawy decimal,
dostarcza varchar(20)
);
