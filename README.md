# DACA Portfoolio

**Programm:** Data Analyst Career Accelerator (DACA)  
**Osaleja:** Evelyn Uusmaa  
**Algus:** 11.08.2026

## Kirjeldus

See repositoorium koondab minu DACA õppeprojektid, praktilised tööd ja õpikogemused.

UrbanStyle’i simulatsiooniprojekti kaudu harjutasin andmeanalüüsi töövoogu: andmete pärimist ja puhastamist, analüüsimist, visualiseerimist ning tulemuste selgitamist ärilises kontekstis.

Portfoolio näitab minu arengut SQL-i põhitõdedest Pythoniga tehtud kliendianalüüsi, API-päringute ja interaktiivsete Power BI aruanneteni. Iga nädala juures on kirjeldatud minu panus, õpitud oskused ja valminud artefaktid.

## Projektid

## Nädal 0 – Sisseelamine ja tööriistade seadistamine

Seadistasin õppetööks GitHubi ja Supabase’i ning harjutasin esimese andmebaasitabeli loomist ja andmete sisestamist.

### Harjutatud oskused

- GitHubi repositooriumi loomine ja kasutamine
- Supabase’i keskkonna seadistamine
- tabeli loomine SQL-iga
- andmete sisestamine ja kontrollimine
- töö dokumenteerimine Markdownis

- **Artefakt:** [Team Members SQL – tabeli loomine Supabase’is](week-0/01-team-members-sql/README.md)

---

## Nädal 1 – SQL-i põhitõed

Esimesel nädalal harjutasin SQL-i põhitõdesid ja andmebaasis olevate andmete uurimist. Õppisin koostama lihtsamaid päringuid, andmeid filtreerima, sorteerima ja rühmitama ning kasutama arvutusteks koondfunktsioone.

### Harjutatud oskused

- andmete pärimine käsuga `SELECT`
- ridade filtreerimine käsuga `WHERE`
- tulemuste sorteerimine käsuga `ORDER BY`
- andmete rühmitamine käsuga `GROUP BY`
- koondfunktsioonide `COUNT()`, `SUM()`, `AVG()`, `MIN()` ja `MAX()` kasutamine
- tingimuste kombineerimine operaatoritega `AND` ja `OR`
- tabeli struktuuri ja andmete kontrollimine

- **Artefakt:** [SQL-i põhitõed ja andmete analüüsimine](week-1/README.md)
- **Grupitöö:** [Minu panus – Product Data Explorer](https://github.com/andres-assukyll/urbanstyle-sales-analytics/blob/main/week1/product-data-explorer.md)

---

## Nädal 2 – SQL-andmete puhastamine

Teisel nädalal kontrollisin `sales`-tabeli andmekvaliteeti. Lõin algandmetest testkoopia, tuvastasin duplikaadid ja puuduvad väärtused ning dokumenteerisin tehtud muudatused.

### Harjutatud oskused

- testtabeli loomine käsuga `CREATE TABLE AS SELECT`
- puuduvate väärtuste kontrollimine tingimusega `IS NULL`
- duplikaatide leidmine käskudega `GROUP BY` ja `HAVING`
- alampäringute kasutamine
- duplikaatide eemaldamine käsuga `DELETE`
- puhastamise tulemuste kontrollimine ja dokumenteerimine

- **Artefakt:** [SQL-andmete puhastamine](week-2/README.md)
- **Grupitöö:** [UrbanStyle Sales Analytics – meeskonnaprojekt](https://github.com/andres-assukyll/urbanstyle-sales-analytics)

---

## Nädal 3 – SQL JOIN-id

Kolmandal nädalal ühendasin SQL-i abil klientide ja müügitehingute tabelid. Analüüsisin kliente, kes on registreerunud, kuid pole veel ühtegi ostu teinud, ning koostasin tulemuste põhjal turundussoovitused.

### Harjutatud oskused

- tabelite ühendamine käsuga `LEFT JOIN`
- tabelialiaste kasutamine
- tabelite sidumine veeru `customer_id` kaudu
- puuduvate vastete leidmine tingimusega `IS NULL`
- tulemuste rühmitamine ja sorteerimine
- kliendistaatuse määramine avaldisega `CASE`
- SQL-tulemuste muutmine praktilisteks ärisoovitusteks

- **Artefakt:** [SQL JOIN-id ja ostudeta klientide analüüs](week-3/README.md)
- **Grupitöö:** [UrbanStyle Sales Analytics – 3. nädala SQL JOIN-id](https://github.com/andres-assukyll/urbanstyle-sales-analytics/tree/main/week3)

---

## Nädal 4 – SQL-i agregatsioon ja inventuuristatistika

Neljandal nädalal õppisin SQL-i agregatsioonifunktsioone, andmete rühmitamist ja grupeeritud tulemuste filtreerimist. Kasutasin ka aknafunktsioone, et muuta detailsed andmeread kokkuvõtlikuks ja analüüsitavaks infoks.

Minu ülesanne grupitöös oli **inventuuristatistika**. Analüüsisin UrbanStyle’i tootekategooriaid, hindu ja müügikoguseid ning järjestasin tooted kategooriate sees. Lisaülesandes leidsin iga kategooria kolm enim müüdud toodet ja nende osakaalu kategooria müügist.

### Harjutatud oskused

- andmete rühmitamine käsuga `GROUP BY`
- grupeeritud tulemuste filtreerimine käsuga `HAVING`
- koondfunktsioonide `COUNT()`, `SUM()`, `AVG()`, `MIN()` ja `MAX()` kasutamine
- erinevate toodete loendamine avaldisega `COUNT(DISTINCT ...)`
- tabelite ühendamine käskudega `JOIN` ja `LEFT JOIN`
- puuduvate väärtuste asendamine funktsiooniga `COALESCE`
- toodete järjestamine funktsiooniga `ROW_NUMBER()`
- kategooriasiseste arvutuste tegemine klausliga `PARTITION BY`
- CTE-de ehk `WITH`-päringute kasutamine
- tulemuste põhjal äriliste soovituste koostamine

- **Artefakt:** [Minu inventuuristatistika analüüs – roll C](week-4/README.md)
- **Grupitöö:** [UrbanStyle Sales Analytics – 4. nädala SQL-i agregatsioon](https://github.com/andres-assukyll/urbanstyle-sales-analytics/tree/main/week4)

---

## Nädalad 5–6 – Andmete visualiseerimine ja andmelood

Viiendal ja kuuendal nädalal õppisin müügiandmeid Power BI abil visualiseerima ning koostama eri sihtrühmadele mõeldud aruandeid.

Harjutasin oluliste mõõdikute valimist, müügitulemuste võrdlemist ajas ja asukohtade lõikes ning graafikutelt peamiste tähelepanekute leidmist. Õppisin ka andmelugu kirjutama: kuidas selgitada tulemust, selle ärilist tähendust ja võimalikku järgmist sammu.

Erilist tähelepanu pöörasin sellele, et puudulikke andmeid või oletatavaid põhjuseid ei esitaks kindlate järeldustena.

### Harjutatud oskused

- andmete ühendamine ja kasutamine Power BI-s
- tulemusnäitajate esitamine KPI-kaartidel
- müügitrendide kujutamine joondiagrammil
- kaupluste ja tootekategooriate võrdlemine
- eraldi vaadete koostamine tegevjuhile, Pärnu kauplusele ja e-poele
- filtrite kasutamine asukoha või müügikanali eristamiseks
- graafikute põhjal peamiste järelduste ja soovituste sõnastamine
- andmete täielikkuse kontrollimine enne tulemuste tõlgendamist

- **Artefakt:** [UrbanStyle’i CEO, Pärnu ja e-poe dashboard’id ning andmelood](week-6/README.md)
- **Grupitöö:** [UrbanStyle Sales Analytics – 6. nädala vaated](https://github.com/andres-assukyll/urbanstyle-sales-analytics/tree/main/week6)

---

## Nädal 7 – Python ja RFM-kliendianalüüs

**Eesmärk:** analüüsida UrbanStyle’i klientide ostukäitumist ning koostada soovitused klientide hoidmiseks ja kordusostude kasvatamiseks.

### Mida tegin?

- Laadisin ja ühendasin müügi- ning kliendiandmed pandasiga.
- Eemaldasin korduvad kirjed, kontrollisin puuduvaid väärtusi ja piirasin analüüsi aktiivse müügiperioodiga.
- Arvutasin klientide Recency, Frequency ja Monetary näitajad.
- Määrasin RFM-skoorid ning jagasin kliendid viide segmenti.
- Koostasin Plotlyga kolm graafikut ja sõnastasin ärilised soovitused.
- Lisasin märkmikule eestikeelsed koodikommentaarid.

### Mida õppisin?

Harjutasin pandasiga andmete ühendamist, puhastamist, kuupäevade töötlemist ja rühmitamist. Õppisin kasutama `qcut`-meetodit skoorimiseks, looma Plotly graafikuid ning selgitama analüüsi tulemusi ärilises kontekstis.

**Peamine tulemus:** analüüsi jäi **8923 müügikirjet ja 2540 ostnud klienti**. Suurim segment oli Potential ehk potentsiaalsed kliendid: **768 klienti ehk 30,2%** analüüsitud klientidest.

- **Artefakt:** [RFM-analüüs, graafikud ja kokkuvõte](week-7/README.md)
- **Kood:** [Jupyteri märkmik koos koodikommentaaridega](week-7/week7_rfm_complete.ipynb)
- **Grupitöö:** [Meeskonna ühine RFM-analüüs ja tulemused](https://github.com/andres-assukyll/urbanstyle-sales-analytics/tree/main/week7)

---

## Nädal 8 – API kaudu andmete pärimine ja automatiseerimine

**Eesmärk:** tuua UrbanStyle’i andmed API kaudu Pythonisse ning ühendada andmete pärimine ja töötlemine ühisesse töövoogu.

### Mida tegin?

- Koostasin funktsioonid müügi-, kliendi- ja tooteandmete pärimiseks.
- Lisasin müügiandmete päringule kuupäevavahemiku valiku.
- Rakendasin kuupäevafiltri API-päringus, et küsida müügiandmeid soovitud perioodi kohta.
- Kontrollisin funktsioonide tööd näidispäringutega.
- Vaatasin tagastatud tabelite ridu, veerge ja esimesi kirjeid.
- Valmistasin oma API-osa ette meeskonnaga jagamiseks.

### Mida õppisin?

Harjutasin API-päringute tegemist, vastuste töötlemist ja andmete toomist pandas-tabelitesse. Õppisin jagama koodi korduvkasutatavateks funktsioonideks ning kasutama `if __name__ == "__main__"` plokki, et kontrollpäringud käivituksid faili otse käivitamisel.

Samuti õppisin eristama API kaudu andmete pärimist järgnevast andmetöötlusest ning mõistma oma koodi rolli meeskonna ühises töövoos.

- **Artefakt:** [Minu API-päringute kood, pipeline ja käivitamisjuhend](week-8/README.md)
- **Grupitöö:** [UrbanStyle Sales Analytics – 8. nädala API ja automatiseerimine](https://github.com/andres-assukyll/urbanstyle-sales-analytics/tree/main/week8)

---

## Nädal 9 – Karjääriks valmistumine ja tehniliste oskuste hindamine

**Eesmärk:** valmistuda andmeanalüütiku kandideerimisprotsessiks ning mõtestada tehniliste oskuste hindamist.

Minu panus grupitöös oli **roll B – tehniliste oskuste hindamise juhendi koostamine ja tehnilise intervjueerija osa ettevalmistamine**.

### Mida tegin?

- Koostasin tehniliste oskuste hindamise juhendi.
- Valmistasin ette tehnilise intervjuu küsimused ja praktilised näited.
- Sidusin küsimused SQL-i, Pythoni, andmekvaliteedi ja visualiseerimise teemadega.
- Mõtestasin, kuidas hinnata lisaks vastuse õigsusele ka lahenduskäiku ja põhjendusi.
- Valmistasin ette oma osa grupi esitluseks.

### Mida õppisin?

Õppisin tehnilist ülesannet süsteemselt käsitlema: täpsustama eesmärki, kirjeldama lahenduskäiku, põhjendama valikuid ja kontrollima tulemust.

Intervjueerija vaatenurk aitas mõista, kuidas oma oskusi tööintervjuul selgelt näidata ning siduda tehniline lahendus ärilise küsimusega.

- **Artefakt:** [Tehniliste oskuste hindamise juhend](week-9/tech_int.md)
- **Grupitöö:** [UrbanStyle Sales Analytics – 9. nädala karjääriks valmistumine](https://github.com/andres-assukyll/urbanstyle-sales-analytics/tree/main/week9)

---

## Nädal 10 – UrbanStyle’i müügiandmete visualiseerimine Power BI-s

**Eesmärk:** koondada varasemate analüüside tulemused terviklikuks ja interaktiivseks aruandeks ning valmistada visualiseerimise osa ette grupi lõppesitluseks.

Minu vastutus grupitöös oli **Power BI visualiseerimise osa**. Töö tugines nädalate 5 ja 6 analüüsidele.

### Mida tegin?

- Koostasin nelja vaatega aruande: **Ülevaade, Kliendid, Tooted ja Müük**.
- Lisasin vaadete vahetamiseks navigeerimisnupud ja järjehoidjad.
- Seadistasin diagrammide nähtavuse samal aruandelehel.
- Piirasin analüüsi perioodiga **jaanuar 2023 – veebruar 2025**.
- Võrdlesin müügitulu, müüdud koguseid ja ostnud klientide arvu.
- Vormindasin pealkirjad, andmesildid, kohtspikrid ja arvulised näitajad.
- Valmistasin ette kuvatõmmised, dokumentatsiooni ja oma esitluse teksti.
- Koostasin AI abiga eraldi HTML-esitlusvaate tulemuste tutvustamiseks veebis.

### Peamised tulemused

- Analüüsiperioodi müügitulu oli ligikaudu **2,90 miljonit eurot**.
- Tallinn ja e-pood andsid kokku ligikaudu **72% müügitulust**.
- Kokku müüdi **18 323 ühikut**.
- Meesterõivaid müüdi kõige rohkem ühikuid, jalatsid andsid suurima müügitulu.

### Mida õppisin?

Õppisin siduma mitu analüüsivaadet üheks terviklikuks aruandeks ning kasutama järjehoidjaid ja navigeerimisnuppe diagrammide nähtavuse juhtimiseks.

Harjutasin mõõdikute ja ühikute selget esitamist ning tulemuste ärilise tähenduse sõnastamist. Samuti õppisin arvestama analüüsi piirangutega: mittetäielikku aastat ei saa võrrelda täisaastaga ning eri müügikohtade unikaalsete klientide arve ei saa lihtsalt kokku liita.

Eristasin Power BI aruande, staatiliste kuvatõmmiste ja eraldi HTML-esitluse võimalusi.

- **Artefakt:** [Power BI analüüs, tulemused ja neli aruandevaadet](week-10/power_bi.md)
- **Aruandefail:** [UrbanStyle_week10.pbix](week-10/UrbanStyle_week10.pbix)
- **Grupitöö:** [UrbanStyle Sales Analytics – 10. nädala materjalid](https://github.com/andres-assukyll/urbanstyle-sales-analytics/tree/main/week10)
- **Veebiesitlus:** [Meeskonna 10. nädala veebiesitlus](https://andres-assukyll.github.io/urbanstyle-sales-analytics/week10/)

---

## Õpiteekond

| Nädal | Teema | Peamised oskused |
|---|---|---|
| 0 | Sisseelamine ja seadistamine | GitHub, Supabase, dokumenteerimine |
| 1 | SQL-i põhitõed | SELECT, WHERE, GROUP BY, koondfunktsioonid |
| 2 | Andmete puhastamine | Duplikaadid, puuduvad väärtused, kontrollpäringud |
| 3 | Tabelite ühendamine | JOIN-id, ostudeta klientide analüüs |
| 4 | Agregatsioon ja inventuuristatistika | CTE-d, aknafunktsioonid, toodete järjestamine |
| 5–6 | Visualiseerimine ja andmelood | Power BI, KPI-d, trendid, ärilised järeldused |
| 7 | RFM-kliendianalüüs | pandas, kliendisegmendid, Plotly |
| 8 | API ja automatiseerimine | API-päringud, funktsioonid, kuupäevafiltrid |
| 9 | Karjääriks valmistumine | Tehniline intervjuu, lahenduskäigu selgitamine |
| 10 | Analüüsitulemuste esitamine | Power BI navigeerimine, interaktiivsus, veebiesitlus |

## Oskused

- **SQL:** PostgreSQL, tabelite ühendamine, agregatsioon, CTE-d ja aknafunktsioonid
- **Python:** pandas, andmete puhastamine ja ühendamine, RFM-analüüs, API-päringud
- **Visualiseerimine:** Power BI, Plotly, KPI-d, interaktiivsed analüüsivaated
- **Andmekvaliteet:** duplikaatide ja puuduvate väärtuste kontrollimine, tulemuste valideerimine
- **Analüüs ja suhtlus:** äriküsimuste sõnastamine, tulemuste tõlgendamine, soovitused ja andmelood
- **Tööriistad:** Git, GitHub, VS Code, Jupyter Notebook ja Supabase

## AI kasutamine

Kasutasin AI-d õppimise ja töö toetamiseks: mõistete selgitamisel, koodi ja päringute arutamisel, vigade lahendamisel ning dokumentatsiooni ja kujundusideede koostamisel.

Portfoolios eristan enda panust meeskonna ühisest tööst. AI pakutud lahenduste puhul pöörasin tähelepanu nende sobivusele, tulemuste kontrollimisele ja sellele, et oskaksin kasutatud lahenduskäiku selgitada.

## Meeskonnaprojekt

- [UrbanStyle Sales Analytics – meeskonna repositoorium](https://github.com/andres-assukyll/urbanstyle-sales-analytics)

## Kontakt

- **GitHub:** [github.com/Nordmehr](https://github.com/Nordmehr)
- **E-post:** evelyn.uusmaal@gmail.com
