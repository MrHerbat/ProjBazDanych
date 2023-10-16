# Notatka 1 - 18.09.2023
- UML:
Notacja UML (ang. Unified Modeling Language) umożliwia tworzenie diagramów przedstawiających różne punkty widzenia systemu. Jest przeznaczona do specyfikowania modelu obiektowego systemu informatycznego oraz kontekstu, w jakim system będzie używany na wybranym poziomie szczegółowości.


- ER:
Diagramy ER = diagramy związków-encji = entity-relationship diagrams.
Diagramy związków-encji pozwalają w sposób graficzny opisywać model konceptualny. Do podstawowych elementów diagramów ER należą:


## BLOKI WYSTĘPUJĄCE W DIAGRAMIE ER

- ### ENCJA:
Encją jest każdy przemiot, zjawisko, stan lub pojęcie, czyli każdy obiekt, który potrafimy odróżnić od innych obiektów (np. osoba, samochód, książka, stan pogody). Encje wzajemnie się wykluczają, co oznacza, że dana encja może reprezentować jeden, konkretny składnik rzeczywistości. Encje podobne do siebie (opisywane za pomocą podobnych parametrów) grupujemy w związki encji.
PRZYKŁAD:
```
+------------+--------------+---------+
|   Klient   |  Zamówienia  | Książka |
+------------+--------------+---------+
```

- ### ATRYBUT:
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

- ### ZWIĄZEK LOGICZNY:
Związek, inaczej zwany RELACJĄ to logiczne powiązanie wystepująe pomiędzy poszczególnymi encjami (dwoma lub więcej). 
Każda z relacji musi zostać właściwie nazwana by modele ER były czytelne i zrozumiałe dla ludzi. 
Nazwe wpisujemy środku. Ważnym aspektem związku jest jego liczebność - inaczej nazywana typamni związku, a także opcjonalność. 
Związek w diagramach oznaczany jest najczęściej strzałką, bądź też linią przerywaną lub ciągłą, co jest zależne od cechy jaką jest opcjonalność. 
Dodatkowo do nich muszą zostać dopisane anzwy, a także określone zakończenia - zależne między innymi od typów danego związku (1:1, 1:N, N:N).
```
       ^
    /     \
  <         >
    \     /
       V
```


- PROSTOKĄT - oznacza encję lub zbiory encji. W środku zawierać musi nazwę encji lub zbioru encji.
```
+------------------+
|     samochód     |
+------------------+
```

- ELIPSA - zawiera atrybuty. W środku zawierać musi nazwę atrybutu lub zbioru atrybutów. Należy zapamiętać, że wewnątrz elipsy wpisujemy nazwę atrybutu, a nie jego wartość.
```
   _______________
 /                 \
(       kolor       ) 
 \ _______________ /
```

- PRZYKŁAD POŁĄCZENIA ENCJI Z ATRYBUTAMI:
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

- PRZYKŁAD POŁĄCZENIA Z ENCJAMI:
```
                                            ^
                                          /   \
       +-------------------+            /       \           +-----------+
       |      człowiek     |  - - - > <zamieszkuje> - - - > |    Dom    |
       +-------------------+            \       /           +-----------+
                                          \   /
                                            V
```
___
&nbsp;
&nbsp;
&nbsp;

# Notatka 2 - 25.09.2023
```
                                  +------------+
                                  | Mieszkanie |
                                  +------------+
                                         |
                                         |
                                         ^
                                       /   \
    +-------------------+            /       \            +---------------+
    |    Właścicieal    |  - - - - < Wynajmuje > - - - -  |    Najemca    |
    +-------------------+            \       /            +---------------+
                                    /  \   /  \
                                  /      V      \
                                 /                \
                            ___________              ___________
                           /             \         /             \
                          (    Od Kiedy   )       (   Do Kiedy    )
                           \_____________/         \_____________/
```                                       
Liczebość określa z iloma wystąpieniami danego obiektu (encji) można połączyć występowanie innego obiektu. 
Wyróźnić można wiele typów relacji jednak do trzech podstawowych zalicza się:
- Jeden do jednego (1:1)
- Jeden do wielu (1:N)
- Wiele do wielu (N:N)
```
       --|-------------------|--
           jeden do jednego
```
#### Powiązania: 
- ` ---|- ` powiązanie jednokrotne, obowiązkowe (tylko jeden) 
- ` --0+- ` powiązanie jednokrotne, opcjonalen (jeden lub zero) 
- ` ---+< ` powiązanie wielokrotne, obowiązkowe (co najmniej jeden) 
- ` ---0< ` powiązanie wielokrotne, opcjonalne (zero lub więcej)

Symbole traktujemy następująco: encja -  może być powiązana z taką liczbą encji na jaką wskazuje znak leżący przy drugim zbiorze encji
##### Przykłady Ilustrujące kombinacje krotności:
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
#### Typy Atrybytów:
- Kluczowe - tworzy klucz encji, jedniznaczny identifikują encję. Nie mogą być dwie encje które posiadają te same atrybuty. Encja może mieć wiele kluczi. Wówczas jeden to klucz główny, pozostałe Klucze alternatywne 
```
         , - ~ ~ ~ - ,
     , '               ' ,
   ,                       ,
  ,                         ,
 ,                           ,
 ,          Klucz            ,
 ,                           ,
  ,                         ,
   ,                       ,
     ,                  , '
       ' - , _ _ _ ,  '
```
- Pochodne - Używa się je do przedstawienia informacji które można obliczyć z danych w bazie, ale trzeba re reprezontować w modelu np. średnia ocen
```
  /-------------------\
 -  Atrybut pochodny   -
  \-------------------/
```
- Częściowe - to samo co normalne klucze ale samodzielnie nie identifikują encji. Występują w kluczach które są tworzone z atrybutów innych encji i występują wyłącznie w słabych encjach
```
    ________________
  /                  \
 |  Klucz częściowy   |
  \ - - - - - - - -  /
    \______________/
```
- Słaba encja - to typ encji w której klucze składają się częściowo z atrybutów kluczowych innych części
```
_______________
---------------
||Słaba encja||
_______________
---------------
```
Związek indetyfikujące które klucze używane są przez zbiory słabych encji
```
              /^\
   //                    \\
 <<     identyfikujący     >>
   \\                    //
              \V/
```
Dobry seed factorio 4154540054
