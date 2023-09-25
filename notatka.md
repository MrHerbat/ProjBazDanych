18.09.2023

Notatka 1.
______________________________________________________________
UML:
Notacja UML (ang. Unified Modeling Language) umożliwia tworzenie diagramów przedstawiających różne punkty widzenia systemu. Jest przeznaczona do specyfikowania modelu obiektowego systemu informatycznego oraz kontekstu, w jakim system będzie używany na wybranym poziomie szczegółowości.


ER:
Diagramy ER = diagramy związków-encji = entity-relationship diagrams.
Diagramy związków-encji pozwalają w sposób graficzny opisywać model konceptualny. Do podstawowych elementów diagramów ER należą:


BLOKI WYSTĘPUJĄCE W DIAGRAMIE ER


ENCJA:
Encją jest każdy przemiot, zjawisko, stan lub pojęcie, czyli każdy obiekt, który potrafimy odróżnić od innych obiektów (np. osoba, samochód, książka, stan pogody). Encje wzajemnie się wykluczają, co oznacza, że dana encja może reprezentować jeden, konkretny składnik rzeczywistości. Encje podobne do siebie (opisywane za pomocą podobnych parametrów) grupujemy w związki encji.
PRZYKŁAD:
```
+------------+--------------+---------+
|   Klient   |  Zamówienia  | Książka |
+------------+--------------+---------+
```

ATRYBUT:
Encje mają określone cechy, wynikające z ich natury. Cechy te nazywamy atrybutami. Zestaw atrybutów, które określamy dla encji, zależy od potrzeb bazy danych. Np. encja samochód ma atrybuty: kolor, prędkość, masa, przyspieszenie.
PRZYKŁAD:
```
+------------+
|   Klient   |
+------------+
| ID_klienta | 
|  Nazwisko  |
|    Imie    |
|    Pesel   |
+------------+
```

ZWIĄZEK LOGICZNY:
Związek, inaczej zwany RELACJĄ to logiczne powiązanie wystepująe pomiędzy poszczególnymi encjami (dwoma lub więcej). Każda z relacji musi zostać właściwie nazwana by modele ER były czytelne i zrozumiałe dla ludzi. Nazwe wpisujemy środku. Ważnym aspektem związku jest jego liczebność - inaczej nazywana typamni związku, a także opcjonalność. Związek w diagramach oznaczany jest najczęściej strzałką, bądź też linią przerywaną lub ciągłą, co jest zależne od cechy jaką jest opcjonalność. Dodatkowo do nich muszą zostać dopisane anzwy, a także określone zakończenia - zależne między innymi od typów danego związku (1:1, 1:N, N:N).

```
       ^
    /     \
  <         >
    \     /
       V
```


PROSTOKĄT - oznacza encję lub zbiory encji. W środku zawierać musi nazwę encji lub zbioru encji.
```
+------------------+
|     samochód     |
+------------------+
```

ELIPSA - zawiera atrybuty. W środku zawierać musi nazwę atrybutu lub zbioru atrybutów. Należy zapamiętać, że wewnątrz elipsy wpisujemy nazwę atrybutu, a nie jego wartość.
```
   _______________
 /                 \
(       kolor       ) 
 \ _______________ /
```

PRZYKŁAD POŁĄCZENIA ENCJI Z ATRYBUTAMI:
```
   _______________                       ______________
 /                 \                   /                \
(    pochodzenie    )                 (    kolor oczu    )
 \ _______________ /                   \ ______________ /
                \                         /
                  \                     /
                   +-------------------+
                   |      człowiek     |
                   +-------------------+

```

PRZYKŁAD POŁĄCZENIA Z ENCJAMI:
```

                                            ^
                                          /   \
       +-------------------+            /       \           +-----------+
       |      człowiek     |  - - - > <zamieszkuje> - - - > |    Dom    |
       +-------------------+            \       /           +-----------+
                                          \   /
                                            V

```
______________________________________________________________




Notatka 2.
______________________________________________________________

Związki mogą posiadać również atrybuty:

```

                         +-----------------+
                         |    Mieszkanie   |
                         +-----------------+
                                  |
                                  |
                                  V
                                 / \
                               /     \                   __________
+------------+               /         \               /            \
| Właściciel | ------->    <  Wynajmuje  >   <------- (   Od kiedy   )
+------------+               \         /               \ __________ / 
                               \     /
                                 \ /   

```

LICZEBNOSĆ:
Liczebność związku pozwala zdefiniować z iloma wystątpieniami danego obiektu (encji) można połączyć występowanie innego obiektu. Wyróżnić można wiele typów relacji, jednak do trzech podstawowych zalicza się:
- Jeden do jednego (1:1)
- Jeden do wielu (1:N)
- Wiele do wielu (N:N)

OZNACZENIE GRAFICZNE LICZEBNOŚCI W INNY SPOSÓB:

```
1:1
--|-------------|--
```

INNE POWIĄZANIA:
```

----|-     powiązanie jednokrotne (obowiązkowe, tylko jeden)
---0|-     powiązanie jednokrotne (opcjonalne, jeden lub zero)
---|<-     powiązanie wielokrotne (obowiązkowe, co najmniej jeden)
---0<-     powiązanie wielokrotne (opcjonalne, zero lub więcej)

```

Symbole należy traktować tak, że jedna encja może być powiązana z taką liczbą encji, na jaką wskazuja znak leżący przy drugim zbiorze encji.


PRZYKŁADY ILUSTRUJĄCE RÓŻNE KOMBINACJE:
```

                                ^   
+----------+                 /      \                 +---------+
| Przydent | -|--- - - - - < Urzęduje > - - - - ---|- | Państwo |
+----------+                 \      /                 +---------+
                                V

                                ^   
+----------+                 /     \                 +-----------+
| Przydent | -|--- - - - - < Wygrywa > - - - - --0|- | Zwycięzca |
+----------+                 \     /                 +-----------+
                                V

                                ^   
+----------+                 /     \                 +--------+
| Organizm | -|--- - - - - < Posiada > - - - - ---|< | Organy |
+----------+                 \     /                 +--------+
                                V

                                ^   
+----------+                 /     \                 +--------+
| śmietnik | -|--- - - - - < Zawiera > - - - - --0|< | śmieci |
+----------+                 \     /                 +--------+
                                V

```


TYPY ATRYBUTÓW:
```
- kluczowe
Atrybuty kluczowe tworzą klucz encji. Atrybuty kluczowe to atrybuty, które w sposób jednoznaczny identyfikują encję, która je posiada. znaczy to, że nie mogą występować dwie encje, które posiadają taką samą wartość kluczową.
KLUCZ może być pojedynczym atrybutem lub ich zbiorem. W drugim przypadku wymóg jednoznaczności odnosi się do zbioru jako całości, a nie poszczególnych atrybutów.
Oznacza się je podkreśleniem.
- pochodne
Używane jest do reprezentowania informacji, które mogą być obliczone na podstawie danych zgromadzonych w bazie, ale trzeba reprezentować je w modelu. Przykładem takiego atrybutu jest średnia ocena publikowanego materiału wyliczana na podstawie głosów oddanych przez czytelników. Owal rysowany jest przerywaną linią.
- częściowe
Pełnią taką samą rolę co zwykłe klucze, z tą różnicą, że samodzielnie nie identyfikują encji. Biora udział w kluczach, które tworzone są z atrybutów innych encji i występuja wyłącznie w słabych encjach. Oznacza się je linią przerywaną
```

SŁABE ENCJE to typ encji, w której składają się częściowo z atrybutów kluczowych innych encji.

```
++==============++
|| Słaba encja  ||
++==============++
```

ZWIĄZEK IDENTYFIKUJĄCY wskazuje zbiory encji, których klucze wykorzsytywane są przez zbiory słabych encji.
```
      // \\
    //     \\
  <<         >>
   \\      //
      \\ //
```
______________________________________________________________
