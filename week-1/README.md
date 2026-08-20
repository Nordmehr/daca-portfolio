# Week 1 – SQL põhitõed

## Eesmärk

Selle artefakti eesmärk oli õppida SQL-i põhilisi käske ja kasutada neid `products` tabelis olevate andmete uurimiseks. Päringud koostasin ja käivitasin Supabase’i PostgreSQL-andmebaasis.

## Andmestik

Kasutasin `products` tabelit, mis sisaldab järgmisi veerge:

- `product_id`
- `product_name`
- `category`
- `subcategory`
- `supplier`
- `cost_price`
- `retail_price`
- `eco_certified`
- `created_at`

## Tehtud töö

Töö käigus harjutasin:

- vajalike veergude valimist käsuga `SELECT`;
- andmete filtreerimist käsuga `WHERE`;
- tulemuste sorteerimist käsuga `ORDER BY`;
- tulemuste arvu piiramist käsuga `LIMIT`;
- unikaalsete väärtuste leidmist käsuga `DISTINCT`;
- tabelis olevate ridade loendamist funktsiooniga `COUNT()`;
- arvutuste tegemist päringu sees;
- puuduvate ehk `NULL`-väärtuste kontrollimist.

## SQL-fail

Kõik kasutatud päringud asuvad failis:

- [week_1_sql_basics.sql](week_1_sql_basics.sql)

## Päringute tulemused

### Tulemuste sorteerimine kahanevas järjekorras

![ORDER BY DESC tulemus](01-order-by-desc-with-formula.png)

### Arvutatud väärtuse järgi sorteerimine

![Arvutuse ja sorteerimise tulemus](02-order-by-with-formula.png)

### Ridade arvu leidmine

![COUNT päringu tulemus](03-count-results.png)

### Tulemuste arvu piiramine

![LIMIT päringu tulemus](04-list-limit-results.png)

### Unikaalsete väärtuste leidmine

![DISTINCT päringu tulemus](05-distinct-results.png)

### Andmete filtreerimine

![WHERE päringu tulemus](06-filtering-results.png)

### NULL-väärtuste kontrollimine

![NULL-väärtuste kontroll](07-null-values-check.png)

## Mida õppisin?

Õppisin SQL-päringute abil andmebaasist vajalikku teavet leidma ning tulemusi filtreerima, sorteerima ja piirama. Sain harjutada ka unikaalsete väärtuste leidmist, ridade loendamist ja puuduvate väärtuste kontrollimist.

Samuti õppisin, et SQL-päring ei ole ainult tehniline käsk: enne päringu koostamist tuleb mõelda, millisele küsimusele soovin andmetest vastust saada.