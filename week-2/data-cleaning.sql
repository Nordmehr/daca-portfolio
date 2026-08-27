-- Loo algsest tabelist koopia ja leia duplikaadid
create table sales_test as select * from sales;
ALTER TABLE sales_test ADD COLUMN IF NOT EXISTS id SERIAL;
select count (*) as ridade_arve from sales_test;

SELECT invoice_id, COUNT(*) AS koopiate_arv
FROM sales_test
GROUP BY invoice_id
HAVING COUNT(*) > 1
ORDER BY koopiate_arv DESC;
SELECT COUNT(*) AS duplikaat_read
FROM sales_test
WHERE id NOT IN (
    SELECT MIN(id)
    FROM sales_test
    GROUP BY invoice_id
);

-- NULL väärtused kriitilistes väljades
SELECT
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customer_id,
    COUNT(*) FILTER (WHERE sale_date IS NULL) AS null_sale_date,
    COUNT(*) FILTER (WHERE total_price IS NULL) AS null_total_price
FROM sales_test;


SELECT COUNT(*) AS tuleviku_kuupaevad
FROM sales_test
WHERE sale_date > CURRENT_DATE;

-- Puuduva kliendita read eemaldatakse,
-- sest müüki ei saa kliendiga seostada
DELETE FROM sales_test
WHERE customer_id IS NULL;

-- Puuduva summaga read eemaldatakse,
-- sest neid ei saa müügitulu arvutamisel kasutada
DELETE FROM sales_test
WHERE total_price IS NULL;

-- Tulevikukuupäevaga read eemaldatakse
DELETE FROM sales_test
WHERE sale_date > CURRENT_DATE;

SELECT
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customer_id,
    COUNT(*) FILTER (WHERE sale_date IS NULL) AS null_sale_date,
    COUNT(*) FILTER (WHERE total_price IS NULL) AS null_total_price,
    COUNT(*) FILTER (WHERE sale_date > CURRENT_DATE) AS tuleviku_kuupaevad
FROM sales_test;

-- Kas duplikaate jäi?
SELECT invoice_id, COUNT(*) AS koopiate_arv
FROM sales_test
GROUP BY invoice_id
HAVING COUNT(*) > 1;

SELECT COUNT(*) AS eemaldatavad_duplikaatread
FROM sales_test
WHERE id NOT IN (
    SELECT MIN(id)
    FROM sales_test
    GROUP BY invoice_id
);

-- Duplikaadi eemaldamine
Delete from sales_test
where id NOT in (
    select min(id)
    from sales_test
    group by invoice_id
);

--Lõpeta, mitu rida jäi alles pärast puhastamist
SELECT COUNT(*) AS ridu_parast_puhastamist
FROM sales_test;