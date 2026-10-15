# Nädal 8 – API kaudu andmete pärimine ja pipeline

**Autor:** Evelyn Uusmaa  
**Roll:** A – API Query ja Data Automation  
**Töövahendid:** Python, Supabase API, pandas, python-dotenv, Plotly ja VS Code

## Artefakt ja eesmärk

Selle nädala artefakt on Supabase API kaudu andmete pärimise moodul ning eri tööetappe ühendav pipeline.

Ühistöö eesmärk oli luua UrbanStyle’i müügiandmete analüüsimiseks korratav töövoog: andmete pärimine, kontrollimine, töötlemine, näitajate arvutamine, visualiseerimine ja tulemuste salvestamine.

## Minu panus

Koostasin andmete pärimise mooduli algversiooni ja pipeline’i algversiooni.

Minu andmete pärimise lahendus:

- loob Supabase’i ühenduse `.env` faili väärtuste põhjal;
- pärib müügi-, kliendi- ja tooteandmed;
- laadib andmeid 1000 rea kaupa;
- järjestab tulemused lehekülgede järjepidevaks pärimiseks;
- võimaldab müügiandmeid filtreerida valikulise kuupäevavahemiku järgi;
- kaasab päringusse ka lõppkuupäeva terve päeva;
- tagastab andmed pandas DataFrame’idena;
- annab päringu ebaõnnestumisel vea edasi.

Minu pipeline ühendab andmete pärimise, valideerimise, töötlemise, graafikute loomise ja tulemuste ekspordi. Lisaks salvestab see edenemise logifaili, mõõdab töö kestust ning kontrollib tühje tabeleid ja korduvaid kliendi-ID-sid.

Andmete töötlemise, KPI-de arvutamise, visualiseerimise ja ekspordi funktsioonid valmisid grupikaaslaste panusena.

## Failid

| Fail | Sisu ja panus |
|---|---|
| [data_fetcher_e.py](data_fetcher_e.py) | Minu andmete pärimise algversioon |
| [pipeline2.py](pipeline2.py) | Minu pipeline’i algversioon |
| [data_fetcher.py](data_fetcher.py) | Meeskonna täiendatud andmete pärimise moodul |
| [pipeline.py](pipeline.py) | Meeskonna täiendatud pipeline |
| [transform.py](transform.py) | Grupikaaslase andmete kontrollimise, puhastamise ja arvutamise funktsioonid |
| [visualize_export.py](visualize_export.py) | Grupikaaslase graafikute loomise ja ekspordi funktsioonid |
| [notification.py](notification.py) | Meeskonna versiooni e-posti teavitused |
| [config.yaml](config.yaml) | Meeskonna versiooni seadistusfail |

Minu failide nimedes olevad tähised eristavad algversioone meeskonna täiendatud versioonidest.

## Andmete pärimise funktsioonid

| Funktsioon | Ülesanne |
|---|---|
| `get_client()` | Loob Supabase’i kliendi ja kontrollib ühenduse seadistuste olemasolu |
| `fetch_table()` | Laadib tabeli andmed lehekülgede kaupa |
| `fetch_sales(start_date, end_date)` | Pärib müügiandmed valitud kuupäevavahemikus |
| `fetch_customers()` | Pärib kliendiandmed |
| `fetch_products()` | Pärib tooteandmed |

Kuupäevi andmata pärib `fetch_sales()` kõik API kaudu ligipääsetavad müügiandmed. Kliendi- ja tooteandmed päritakse tervikuna.

## Ühenduse seadistamine

Loo `week-8` kausta `.env` fail ja lisa sinna oma Supabase’i projekti ühenduse andmed:

```dotenv
SUPABASE_URL=projekti_aadress
SUPABASE_KEY=api_võti
```

Tegelikku `.env` faili ega võtmeid GitHubi ei lisata. Fail on `.gitignore` abil välistatud.

Päringute õnnestumiseks peavad tabelid olema olemas ning kasutataval võtmel peavad olema vajalikud lugemisõigused.

## Käivitamine

Ava terminal `week-8` kaustas.

Paigalda minu algversiooni ja ühise töötlus- ning visualiseerimisosa jaoks vajalikud paketid:

```powershell
python -m pip install supabase pandas python-dotenv plotly
```

### Andmete pärimise kontroll

```powershell
python data_fetcher_e.py
```

Faili otse käivitamisel tehakse kontrollpäringud ning kuvatakse tabelite ridade ja veergude arv koos esimese viie reaga.

Kontrollpäringud asuvad `if __name__ == "__main__"` plokis, mistõttu need mooduli importimisel automaatselt ei käivitu.

### Minu pipeline’i käivitamine

Jaanuari 2023 analüüs:

```powershell
python pipeline2.py --start-date 2023-01-01 --end-date 2023-01-31
```

Kõigi ligipääsetavate müügiandmete analüüs:

```powershell
python pipeline2.py
```

Minu pipeline kasutab andmete pärimiseks moodulit `data_fetcher_e.py`.

## Kuupäevavahemiku valimine

Analüüsitava kuupäevavahemiku saab anda pipeline’i käivitamisel terminalist. Uue perioodi töötlemiseks ei ole vaja Python-koodi muuta.

Pipeline edastab algus- ja lõppkuupäeva fetcherile, mis filtreerib müügiandmed juba Supabase’i API-päringus.

Näiteks:

```python
sales = fetch_sales("2023-01-01", "2023-01-31")
```

See päring kaasab müügid 1. jaanuarist kuni 31. jaanuari lõpuni.

## Töövoog ja väljundid

Pipeline teeb järjest järgmised toimingud:

1. Pärib müügi-, kliendi- ja tooteandmed.
2. Kontrollib sisendandmeid.
3. Käivitab andmete puhastamise ja arvutamise funktsioonid.
4. Loob nädalase müügitulu graafiku ja KPI-de kokkuvõtte.
5. Salvestab nädalase koondtabeli CSV-failina ning visualiseeringud HTML-failidena.

Väljundid salvestatakse `output` kausta ning käivitamise logid `logs` kausta.

Pipeline’i käivitamine ühe käsuga automatiseerib tööetappide järjestuse. Regulaarseks automaatseks käivitamiseks on lisaks vaja seadistada ajastaja.

## Kontrollimise tulemused

Jaanuari 2023 kontrollpäringute tulemused:

| Andmestik | Ridade arv |
|---|---:|
| Müügid 01.01.2023–31.01.2023 | 261 |
| Kliendid | 3150 |
| Tooted | 362 |

Ühise töötlusloogikaga käivitamisel saadi järgmised näitajad:

| Näitaja | Tulemus |
|---|---:|
| Müügitulu | 79 735,03 € |
| Unikaalseid kliente | 217 |
| Keskmine tellimuse väärtus | 305,50 € |

Need on kontrollkäivituse tulemused. Valideerimine tuvastas seitse negatiivse müügisummaga rida ning 22 puuduva kliendi-ID-ga müügirida.

Kontrollitud töötlusversioon asendas puuduva kliendi-ID väärtusega `0`, mis võib minna unikaalsete klientide arvestusse ühe lisakliendina. Seetõttu vajab kliendinäitaja enne ärilist kasutamist täpsustamist. Samuti tuleb kokku leppida negatiivsete müükide käsitlemine.

## Veakäsitlus

Kui ühenduse seadistused puuduvad või tabeli pärimine ebaõnnestub, annab fetcher vea edasi.

Pipeline püüab vea kinni, märgib logisse ebaõnnestunud etapi ning lõpetab veakoodiga. See aitab eristada edukat käivitamist ebaõnnestunud töövoost.

Minu fetcheri algversioonis automaatseid korduskatseid ei olnud.

## Meeskonna täiendused

Meeskonna täiendatud versioonidesse lisatud korduskatsed, seadistusfaili kasutamine, mitme perioodi töötlemine ja e-posti teavitused on meeskonnakaaslase täiendused.

Need võimalused ei kuulu minu siin kirjeldatud algversiooni.

Ühine projekt: [UrbanStyle Sales Analytics – Week 8](https://github.com/andres-assukyll/urbanstyle-sales-analytics/tree/main/week8).

## Kasu ettevõttele

Lahendus vähendab andmete käsitsi allalaadimise ja raportite koostamise vajadust. Sama töövoogu saab kasutada eri perioodide analüüsimiseks, andes ettevõttele ühtse ülevaate müügitulust, klientidest ja nädalasest müügitrendist.

Logid aitavad märgata päringute ebaõnnestumist ja andmekvaliteedi probleeme.

## Mida õppisin?

- Supabase API kaudu andmeid pärima.
- Ühenduse andmeid keskkonnamuutujate abil seadistama.
- Andmeid lehekülgede kaupa laadima ja järjestama.
- Müügiandmeid kuupäevavahemiku järgi filtreerima.
- API vastuseid pandas DataFrame’ideks teisendama.
- Koodi korduvkasutatavateks funktsioonideks jagama.
- Eristama faili otse käivitamist ja mooduli importimist.
- Ühendama eri autorite mooduleid üheks pipeline’iks.
- Kasutama logimist ja veakäsitlust.
- Kontrollima, et edukalt töötav kood annaks ka sisuliselt õiged tulemused.

## AI kasutamine

Kasutasin ChatGPT-d koodi koostamise, selgitamise, vigade lahendamise ja dokumentatsiooni kirjutamise abiks. Koodi käivitasin ning tulemusi kontrollisin oma arvutis.