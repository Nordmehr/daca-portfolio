# Nädal 10 – UrbanStyle’i müügiandmete visualiseerimine Power BI-s

## Eesmärk

Koondada UrbanStyle’i müügiandmed visuaalseks ja interaktiivseks aruandeks, mille abil saab võrrelda müügikohti, tootekategooriaid ja ostnud klientide arvu.

Töö tugineb nädalate 5 ja 6 Power BI analüüsidele. Nädalal 10 keskendusin tulemuste koondamisele, aruande navigeerimisele ja visualiseerimise osa ettevalmistamisele grupi lõppesitluseks.

## Minu panus

Minu vastutus grupitöös oli Power BI visualiseerimise osa.

- Koostasin nelja vaatega aruande: **Ülevaade, Kliendid, Tooted ja Müük**.
- Lisasin vaadete vahetamiseks navigeerimisnupud ja järjehoidjad.
- Seadistasin diagrammide nähtavuse vastavalt valitud vaatele.
- Piirasin analüüsi aktiivse müügi perioodiga kuni **28.02.2025**.
- Vormindasin pealkirjad, andmesildid ja arvulised näitajad.
- Lisasin kohtspikritesse täiendavat infot.
- Valmistasin ette aruande kuvatõmmised, dokumentatsiooni ja oma esitluse teksti.
- Koostasin AI abiga HTML-esitlusvaate aruande tulemuste tutvustamiseks veebis.

## Andmed ja mõõdikud

Aruandes kasutatakse UrbanStyle’i müügi- ja tooteandmeid. Müügitehingute kaudu analüüsitakse ka ostnud klientide arvu.

Analüüs hõlmab perioodi **jaanuar 2023 – veebruar 2025**.

| Näitaja | Mida see kirjeldab? |
|---|---|
| Müügitulu | Müügi rahaline väärtus eurodes |
| Müüdud kogus | Müüdud toodete arv tükkides |
| Ostnud klientide arv | Müügikohas ostu teinud klientide arv |
| Kategooria osakaal | Tootekategooria panus müügitulusse või müüdud kogusesse |

Tulemusi võrreldakse müügikoha, tootekategooria ning aasta ja kuu järgi.

### Tulemuste tõlgendamine

- 2025. aasta sisaldab ainult jaanuari ja veebruari, mistõttu ei saa seda võrrelda varasemate täisaastatega.
- Sama klient võib osta mitmest müügikohast. Müügikohtade klientide arve ei tohi liita ettevõtte unikaalsete klientide koguarvuks.
- Suurem müügikogus ei tähenda automaatselt suuremat müügitulu.
- Müügitulu ei näita kasumit. Kasumlikkuse hindamiseks on vaja lisaks kulude ja marginaalide andmeid.
- Kaardil kujutatakse füüsilisi kauplusi. E-pood on kaasatud müügikohtade võrdlustesse.
- Allpool esitatud rahalised tulemused on ümardatud.

## Aruande ülesehitus

Power BI aruandes saab nelja nupu abil vahetada analüüsi fookust samal aruandelehel.

| Vaade | Võrdluse põhisisu | Äriline küsimus |
|---|---|---|
| Ülevaade | Müügitulu ajas, kategooriate ja müügikohtade lõikes | Kuidas müügitulu jaguneb ja muutub? |
| Kliendid | Ostnud klientide arv müügikohtade kaupa | Millistes müügikohtades on rohkem ostjaid? |
| Tooted | Müüdud kogus tootekategooriate kaupa | Milliseid tooteid ostetakse kõige rohkem? |
| Müük | Müüdud kogus müügikohtade kaupa | Kus müüakse kõige rohkem ühikuid? |

Ühised diagrammid säilitavad üldise konteksti. Vahetuv diagramm võimaldab keskenduda valitud äriküsimusele.

## 1. Ülevaade

Ülevaade koondab müügitulu muutumise ajas, tootekategooriate osakaalud ja müügikohtade võrdluse.

### Peamised tulemused

Analüüsiperioodi müügitulu oli ligikaudu **2,90 miljonit eurot**.

| Müügikoht | Müügitulu |
|---|---:|
| Tallinn | 1,09 mln € |
| E-pood | 1,00 mln € |
| Tartu | 0,52 mln € |
| Pärnu | 0,29 mln € |

Tallinn ja e-pood annavad kokku ligikaudu **72% müügitulust**.

Kuude võrdluses oli suurim müügitulu **2024. aasta detsembris**.

### Äriline tähendus

Tallinna ja e-poe toimimine mõjutab oluliselt ettevõtte kogutulemust. Nendes kanalites tasub jälgida kaupade saadavust, teeninduse kvaliteeti ja turunduse tulemuslikkust.

Detsembri kõrge müügitulu annab põhjuse valmistuda aasta lõpuks piisavate varude ja teenindusvõimekusega. Korduva hooajalisuse kinnitamiseks oleks vaja pikema perioodi andmeid.

![UrbanStyle’i Power BI ülevaade](powerbi_ylevaade.png)

## 2. Kliendid

Klientide vaade võrdleb ostnud klientide arvu müügikohtade kaupa.

Tallinn ja e-pood on suurimad kanalid nii müügitulu kui ka ostjate arvu poolest.

### Äriline tähendus

Ostjate arvu võrdlus aitab mõista, kui laia kliendibaasi iga müügikoht teenindab. Koos müügituluga annab see lähtekoha edasiseks analüüsiks, näiteks ostja kohta teenitud müügitulu võrdlemiseks.

Sama klient võib kasutada mitut müügikohta. Seetõttu ei saa kanalite klientide arve kokku liita ettevõtte klientide koguarvuks.

Järgmine analüüsisamm oleks uurida:

- kui paljud kliendid teevad kordusoste;
- kui paljud kasutavad nii e-poodi kui ka füüsilisi kauplusi;
- kuidas erineb klientide ostusagedus ja ostude väärtus müügikohtade vahel.

Need küsimused aitaksid kavandada klientide hoidmise ja kordusostude suurendamise tegevusi. Praegune vaade neid näitajaid eraldi ei mõõda.

![UrbanStyle’i Power BI klientide vaade](powerbi_kliendid.png)

## 3. Tooted

Toodete vaade võrdleb müüdud koguseid kategooriate kaupa. Müügitulu jaotus võimaldab selle kõrval eristada koguselist nõudlust ja rahalist panust.

### Peamised tulemused

Kokku müüdi **18 323 ühikut**.

| Tootekategooria | Müüdud kogus |
|---|---:|
| Meesterõivad | 4 099 |
| Jalatsid | 3 725 |
| Lasterõivad | 3 675 |
| Naisterõivad | 3 596 |
| Aksessuaarid | 3 228 |
| **Kokku** | **18 323** |

Jalatsid ja meesterõivad annavad kokku ligikaudu **52,3% müügitulust**.

### Äriline tähendus

Meesterõivad on müüdud ühikute arvu poolest suurim kategooria, kuid jalatsid annavad suurima müügitulu.

See näitab, miks tuleb tootevaliku ja varude planeerimisel vaadata nii kogust kui ka müügitulu. Ainult ühe näitaja põhjal võib kategooria tähtsusest tekkida ebatäielik pilt.

Kasumlikkuse hindamiseks tuleks lisada kategooriate ostukulud, marginaalid ja tagastused.

![UrbanStyle’i Power BI toodete vaade](powerbi_tooted.png)

## 4. Müük

Müügi vaade keskendub müüdud ühikute arvule müügikohtade kaupa.

Ülevaade võrdleb müügikohtade rahalist tulemust, müügivaade aga müügimahtu tükkides.

### Peamised tulemused

| Müügikoht | Müüdud kogus |
|---|---:|
| Tallinn | 6 914 |
| E-pood | 6 292 |
| Tartu | 3 288 |
| Pärnu | 1 829 |
| **Kokku** | **18 323** |

### Äriline tähendus

Tallinn ja e-pood on suurimad müügikanalid ka koguste järgi. Nende teenindamiseks tuleb tagada piisav kaubavaru ning arvestada tellimuste töötlemise ja tarnekoormusega.

Tartu ja Pärnu väiksem müügimaht ei tähenda automaatselt madalamat efektiivsust. Selle hindamiseks tuleks arvestada kaupluste suuruse, kulude ja kasumiga.

![UrbanStyle’i Power BI müügivaade](powerbi_myyk.png)

## Interaktiivsus

### Power BI aruanne

Aruandes on neli navigeerimisnuppu: **Ülevaade, Kliendid, Tooted ja Müük**.

Nupud on seotud järjehoidjatega, mis juhivad diagrammide nähtavust samal aruandelehel.

Diagrammi elemendi valimine võimaldab uurida seotud andmeid vastavalt aruandes seadistatud visuaalidevahelistele seostele. Andmesildid näitavad väärtusi ning kohtspikrid annavad täiendavat infot.

Power BI Desktopi redigeerimisvaates saab nuppude toiminguid kasutada **Ctrl-klahvi ja hiireklõpsuga**.

### HTML-esitlus

HTML-versioon on eraldi veebiesitlus aruande tulemuste tutvustamiseks.

Vahekaardid vahetavad näitajaid ja valitud graafikute sisu. Hiirega graafiku kohal liikudes saab vaadata täiendavaid väärtusi.

HTML-versioon ei sisalda PBIX-faili kogu funktsionaalsust ega ole Power BI teenusest manustatud aruanne. Selle võimalused sõltuvad HTML-is eraldi loodud toimingutest.

Siinses dokumendis olevad PNG-pildid on staatilised eelvaated.

## Kujundus ja loetavus

Kujunduse eesmärk oli muuta aruanne loetavaks ning toetada tulemuste võrdlemist ja suulist esitlust.

- Hele taust ja tume tekst tagavad selge kontrasti.
- Türkiisrohelised põhitoonid seovad visualiseerimise grupi veebiesitluse kujundusega.
- Power BI aruandes eristab oranž rõhuvärv vahetuvat võrdlusdiagrammi.
- Pealkirjad eristavad müügitulu eurodes, klientide arvu ja müüdud kogust tükkides.
- Arvude vormindamisel on eemaldatud ebavajalikud komakohad.
- Ühtne paigutus aitab vaadete vahel liikudes säilitada üldise konteksti.

## Soovitused ettevõttele

1. **Hoida Tallinna ja e-poe toimimine tugevana.**  
   Need kanalid annavad ligikaudu 72% müügitulust. Kaubapuudus või teenindusprobleemid võivad seal oluliselt mõjutada ettevõtte kogutulemust.

2. **Planeerida varusid nii koguse kui ka müügitulu järgi.**  
   Meesterõivaid müüakse kõige rohkem ühikuid, jalatsid annavad aga suurima müügitulu. Mõlemad näitajad on tootevaliku juhtimisel vajalikud.

3. **Valmistuda suurema müügimahuga perioodideks.**  
   2024. aasta detsembri tulemus annab põhjuse kontrollida aasta lõpu varude ja teenindusvõimekuse planeerimist.

4. **Täiendada klientide analüüsi kordusostude ja kanalite kasutamisega.**  
   Ostjate arv näitab kliendibaasi ulatust, kuid klientide hoidmise hindamiseks on vaja teada ka nende ostusagedust ja kordusoste.

5. **Lisada kasumlikkuse mõõdikud.**  
   Müügitulu ja koguste kõrval tuleks võrrelda kulusid, marginaale ja tagastusi, et hinnata kanalite ning kategooriate tasuvust.

## Mida õppisin

- Kuidas siduda mitu analüüsivaadet üheks terviklikuks aruandeks.
- Kuidas kasutada järjehoidjaid ja navigeerimisnuppe diagrammide nähtavuse juhtimiseks.
- Kuidas sõnastada pealkirju nii, et mõõdik ja ühik oleksid üheselt arusaadavad.
- Kuidas vormindada andmesilte, kohtspikreid ja arvulisi näitajaid.
- Miks tuleb eristada müügitulu, müüdud kogust ja ostnud klientide arvu.
- Miks ei saa eri müügikohtade unikaalsete klientide arve lihtsalt kokku liita.
- Kuidas arvestada mittetäielike perioodide ja analüüsi piirangutega.
- Kuidas selgitada visualiseerimise tulemusi ettevõtte ärilisest vaatenurgast.
- Mille poolest erinevad Power BI aruanne, staatiline kuvatõmmis ja HTML-esitlus.

## AI kasutamine

Kasutasin AI-d abilisena kujundusideede, Power BI seadistamise juhiste, HTML-esitlusvaate ja dokumentatsiooni koostamisel.

AI pakutud lahendused vajasid võrdlemist tegeliku aruandega. Eriti oluline oli kontrollida mõõdikute tähendust, kuupäevapiiranguid ning seda, kas esitluses kirjeldatud interaktiivsus vastab faili tegelikele võimalustele.

## Seos grupitööga

Visualiseerimine ühendab andmete analüüsi ja tulemuste esitamise.

- **SQL:** andmete pärimine, ühendamine ja koondamine.
- **Power BI:** tulemuste võrdlemine ja visuaalne esitamine.
- **Python:** andmetöötluse ning analüüsi kordamine ja automatiseerimine.

Minu osa keskendus sellele, kuidas muuta analüüsi tulemused otsustajale arusaadavaks ning võimaldada liikuda üldpildist konkreetse võrdluseni.

### Grupitöö viited

- [UrbanStyle’i 10. nädala grupitöö ja materjalid](https://github.com/andres-assukyll/urbanstyle-sales-analytics/tree/main/week10)
- [Meeskonna veebiesitlus](https://andres-assukyll.github.io/urbanstyle-sales-analytics/week10/)

## Artefaktid

Aruande nelja vaate kuvatõmmised on esitatud eespool vastavate tekstiosade juures.

- [Laadi alla Power BI aruanne – UrbanStyle_week10.pbix](UrbanStyle_week10.pbix)

Power BI aruande interaktiivseks kasutamiseks laadi PBIX-fail alla ja ava see Power BI Desktopis.