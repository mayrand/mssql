## Clustered and Nonclustered Indexes
- Clustered - sort and store the data rows in the table or view based on their key values. These are the columns included in the index definition. There can be only one clustered index per table, because the data rows themselves can be stored in only one order.

- Nonclustered - have a structure separate from the data rows. A nonclustered index contains the nonclustered index key values and each key value entry has a pointer to the data row that contains the key value.

Kolumny bitowe obok siebie bo i tak są trzymane w jednym bicie

SET STATISTICS IO ON - pokazuje odczyty dysk/pamięć

nie używać w zapytaniach, procedurach zmiennych wewn. (to samo do IFów) tylko parametrów bo będzie od nowa liczył exec. plan

parametr output szybszy dla scalarów od returna

CLUSTERED INDEX - domyślnie zakładany na primary key co np. dla ID jest nie potrzebne, tworzony jest w strukturze tabeli i ją sortuje, przyśpiesza order by between duplikaty

NON CLUSTERED INDEX - tworzy kopię zindeksowanych danych

select x from view (noexpand) - możliwość użycia planu z widoku zindeksowanego poza enterp. np. w express

TABELA TYMCZASOWA - trzymana 20 min od ostatniego użycia
#tabela - widoczna lokalnie
##tabela - widoczna globalnie

TRIGGER - jest wykonywany w tej samej transakcji co operacja na którą jest ustawiony, więc jak się wysypie to i operacja będzie zrollbackowana

STATYSTYKI - służą do tworzenia exec. planów, zawierają próbkę danych z tabeli i info o ilości rekordów. Trzeba je tworzyć ręcznie dla computed column i logicznie połączonych kolumn np miasto i woj.

insert z logowaniem:
INSERT INTO TABELA
OUTPUT INSERTED.ID, SUSER_NAME() INTO @INSERTLOG
VALUES (1,"TEKST")

NTILE - do paczkowania sortowania bąb.

RAISEERROR - wyrzucenie wyjątku z sqla

CLR - nie pisać typów danych i triggerów słaba wydajność

JOINY
NESTED LOOP - przelatuje każdy dla każdego
CROSS APPLY - join z funkcją zwracającą tablicę