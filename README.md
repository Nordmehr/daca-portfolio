# DACA Portfoolio
 
**Programm:** Data Analyst Career Accelerator (DACA)
**Osaleja:** [Evelyn Uusmaa]
**Algus:** [11.08.2026]
 
## Kirjeldus
 
See repositoorium sisaldab minu DACA õppeprojekte ja portfoolio.
 
## Projektid
 
### Week 0: Onboarding
- GitHub seadistamine ✅
- Supabase seadistamine ✅

**Artefakt:**

- [Team Members SQL – tabeli loomine Supabase’is](week-0/01-team-members-sql/README.md)
 
## Week 1: SQL põhitõed

Esimesel nädalal harjutasin SQL-i põhitõdesid ja andmebaasis olevate andmete uurimist. Õppisin koostama lihtsamaid päringuid, andmeid filtreerima, sorteerima ja rühmitama ning kasutama arvutusteks koondfunktsioone.

### Harjutatud oskused

- andmete pärimine käsuga `SELECT`
- ridade filtreerimine käsuga `WHERE`
- tulemuste sorteerimine käsuga `ORDER BY`
- andmete rühmitamine käsuga `GROUP BY`
- koondfunktsioonide `COUNT()`, `SUM()`, `AVG()`, `MIN()` ja `MAX()` kasutamine
- tingimuste kombineerimine operaatoritega `AND` ja `OR`
- tabeli struktuuri ja andmete kontrollimine

### Individuaalne artefakt

- [SQL põhitõed ja andmete analüüsimine](https://github.com/Nordmehr/daca-portfolio/blob/main/week-1/README.md)

### Grupitöö

- [Minu panus – Product Data Explorer](https://github.com/andres-assukyll/urbanstyle-sales-analytics/blob/main/week1/product-data-explorer.md)
- [UrbanStyle Sales Analytics – meeskonnaprojekt](https://github.com/andres-assukyll/urbanstyle-sales-analytics)

---

## Week 2: SQL-andmete puhastamine

Teisel nädalal kontrollisin `sales` tabeli andmekvaliteeti. Lõin algandmetest testkoopia, tuvastasin duplikaadid ja puuduvad väärtused ning dokumenteerisin kõik tehtud muudatused.

### Harjutatud oskused

- testtabeli loomine käsuga `CREATE TABLE AS SELECT`
- puuduvate väärtuste kontrollimine käsuga `IS NULL`
- duplikaatide leidmine käskudega `GROUP BY` ja `HAVING`
- alampäringute kasutamine
- duplikaatide eemaldamine käsuga `DELETE`
- puhastamise tulemuste kontrollimine ja dokumenteerimine

### Individuaalne artefakt

- [SQL-andmete puhastamine](https://github.com/Nordmehr/daca-portfolio/blob/main/week-2/README.md)

### Grupitöö

- [UrbanStyle Sales Analytics – meeskonnaprojekt](https://github.com/andres-assukyll/urbanstyle-sales-analytics)

## Week 3: SQL JOIN-id

Kolmandal nädalal ühendasin SQL-i abil klientide ja müügitehingute tabelid. Analüüsisin kliente, kes on registreerunud, kuid pole veel ühtegi ostu teinud, ning koostasin tulemuste põhjal turundussoovitused.

### Harjutatud oskused

- tabelite ühendamine käsuga `LEFT JOIN`
- tabelialiaste kasutamine
- tabelite sidumine veeru `customer_id` kaudu
- puuduvate vastete leidmine tingimusega `IS NULL`
- tulemuste rühmitamine ja sorteerimine
- kliendistaatuse määramine käsuga `CASE`
- SQL-tulemuste muutmine praktilisteks ärisoovitusteks

### Individuaalne artefakt

- [SQL JOIN-id ja kadunud klientide analüüs](week-3/README.md)

## Week 4: SQL agregatsioon

Neljandal nädalal õppisin SQL-i agregatsioonifunktsioone, andmete rühmitamist ja grupeeritud tulemuste filtreerimist. Kasutasin `GROUP BY`, `HAVING`, koondfunktsioone ja window function’e, et muuta detailsed andmeread kokkuvõtlikuks ja analüüsitavaks infoks.

Minu ülesanne grupitöös oli **Inventuuristatistika**. Analüüsisin UrbanStyle’i tootekategooriaid, hindu ja müügikoguseid ning järjestasin tooted kategooriate sees. Lisaülesandes leidsin iga kategooria kolm enim müüdud toodet ja nende osakaalu kategooria müügist.

### Harjutatud oskused

- andmete rühmitamine käsuga `GROUP BY`
- grupeeritud tulemuste filtreerimine käsuga `HAVING`
- koondfunktsioonide `COUNT()`, `SUM()`, `AVG()`, `MIN()` ja `MAX()` kasutamine
- erinevate toodete loendamine käsuga `COUNT(DISTINCT ...)`
- tabelite ühendamine käskudega `JOIN` ja `LEFT JOIN`
- puuduvate väärtuste asendamine funktsiooniga `COALESCE`
- toodete järjestamine funktsiooniga `ROW_NUMBER()`
- kategooriasiseste arvutuste tegemine käsuga `PARTITION BY`
- CTE-de ehk `WITH`-päringute kasutamine
- tulemuste põhjal äriliste soovituste koostamine

### Minu panus grupitöösse

- [Roll C: Inventuuristatistika](week-4/README.md)

### Grupitöö

- [UrbanStyle Sales Analytics – meeskonnaprojekt](https://github.com/andres-assukyll/urbanstyle-sales-analytics)

---
## Õpiteekond

| Nädal | Teema | Staatus |
| --- | --- | --- |
| Week 0 | Onboarding ja tööriistade seadistamine | ✅ Valmis |
| Week 1 | SQL põhitõed | ✅ Valmis |
| Week 2 | SQL-andmete puhastamine | ✅ Valmis |
| Week 3 | SQL JOIN-id |  ✅ Valmis |
| Week 4 | SQL koondamine |  ✅ Valmis |
| Week 5–6 | Andmete visualiseerimine | ⏳ Tulemas |
| Week 7–8 | Python | ⏳ Tulemas |
| Week 9–10 | Portfoolio ja karjäär | ⏳ Tulemas |
 
## Oskused
 
- **SQL:** PostgreSQL, Supabase
- **Python:** pandas, plotly (tulemas...)
- **Visualiseerimine:** Power BI / Streamlit (tulemas...)
- **Tööriistad:** Git, GitHub, VS Code
 
## Kontaktc
 
- **GitHub:** [github.com/Nordmehr](https://github.com/Nordmehr)
- **Email:** evelyn.uusmaal@gmail.com
