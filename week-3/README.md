# Week 3 – SQL JOIN-id ja kadunud klientide analüüs

## Eesmärk

Selle artefakti eesmärk oli õppida SQL-i `JOIN`-lausete abil erinevaid andmetabeleid ühendama. Analüüsisin tabelite `customers` ja `sales` põhjal kliente, kes on registreerunud, kuid pole teinud ühtegi ostu.

Analüüsi tegin Supabase’i PostgreSQL-andmebaasis.

## Analüüsi küsimused

Soovisin välja selgitada:

- mitu klienti pole kunagi ostnud;
- kes need kliendid on;
- millistes linnades nad elavad;
- millal nad registreerusid;
- kui palju on aktiivseid ja ostuta kliente;
- kuidas võiks turundus neid esimese ostuni suunata.

## Kasutatud tabelid

Analüüsis ühendasin kaks tabelit:

- `customers` – klientide andmed;
- `sales` – müügitehingute andmed.

Tabelid ühendasin veeru `customer_id` kaudu.

## Kadunud klientide leidmine

Kasutasin `LEFT JOIN` ühendust, et säilitada kõik kliendid, sealhulgas need, kellele ei leitud `sales` tabelist ühtegi müügitehingut.

```sql
SELECT COUNT(*) AS kadunud_kliente
FROM customers AS c
LEFT JOIN sales AS s
    ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;