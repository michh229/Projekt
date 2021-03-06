--1. Pokaz w tabelce wszystkich kucharzy
--2. Pokaz wszytkie zamowienia klientow pomiedzy godzina 18 i 19
--3. Wszystkie dostawy o 13 lub przed 13
--4. Uloz wszytkie dania z tabelki dania ulozone alfabetycznie
--5. Pokaz w tabelce wszytkie polskie dania
--6. Pokaz w tabelce wszystkie pizze ktore sa ostre
--7. Pokaz w tabelce skladniki oraz zamowiena klientow ktore byly zamowione w ten sam dzien
--8. Pokaz minimalna i maksymalna cene pizzy
--9. Pokaz wszystkie oceny klientow ktorzy zamowili pizze
--10. Pokaz zamowienia klientow i zamowienia skladnikow do restauracji ktore wykonano w poniedzialek


create view kwerenda1 as
select * from pracownicy
where rola in ('kucharz');

create view kwerenda2 as
select * from klienci
where godzina between '18:00:00' and '19:00:00';

create view kwerenda3 as
select godzina_dostawy, dostawa, dzien_dostawy from dostawy
where godzina_dostawy <= 13
order by godzina_dostawy asc;

create view kwerenda4 as
select * from dania order by danie asc;

create view kwerenda5 as
select * FROM dania where rodzaj_dania like "polskie";

create view kwerenda6 as
select * FROM pizze where ostra like "tak";

create view kwerenda7 as
select dostawy.dostawa, dostawy.dzien_dostawy, klienci.dzien, klienci.zamowienie
from dostawy, klienci where dostawy.dzien_dostawy = klienci.dzien ;

create view kwerenda8 as
select min(cena), max(cena) from pizze;

create view kwerenda9 as
select imie, zamowienie, ocena from klienci
where zamowienie like "pizza%";

create view kwerenda10_1 as
select dostawy.dostawa, dostawy.dzien_dostawy, klienci.dzien, klienci.zamowienie
from dostawy inner join klienci where dostawy.dzien_dostawy = klienci.dzien and dostawy.dzien_dostawy = "poniedzialek";
