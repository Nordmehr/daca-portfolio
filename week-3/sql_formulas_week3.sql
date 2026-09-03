-- Kliendid, kes pole kunagi midagi ostnud
select
    c.customer_id, 
    c.first_name,
    c.last_name,
    c.email,
    c.city,
    c.registration_date
from customers as c
left join sales as s
    on c.customer_id = s.customer_id
where s.sale_id is null
order by c.registration_date desc;

-- Loe kokku mitu "kadunud" klienti on
select count(*) as kadunud_kliente
from customers as c 
left join sales as s
    on c.customer_id = s.customer_id
where s.sale_id is null;

-- 3. Kadunud kliendid linnade kaupa

SELECT
    c.city,
    COUNT(*) AS kadunud_kliente
FROM customers AS c
LEFT JOIN sales AS s
    ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY c.city
ORDER BY kadunud_kliente DESC;

-- Kadunud klientide Registreerimise kuupäevad
SELECT
    c.first_name || ' ' || c.last_name AS klient,
    c.registration_date,
    c.city,
    c.loyalty_tier
FROM customers AS c
LEFT JOIN sales AS s
    ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
ORDER BY c.registration_date DESC;

-- 5. Kadunud ja aktiivsete klientide võrdlus
SELECT
    CASE
        WHEN s.sale_id IS NULL
            THEN 'Kadunud (pole ostnud)'
        ELSE 'Aktiivne (on ostnud)'
    END AS staatus,
    COUNT(DISTINCT c.customer_id) AS kliente
FROM customers AS c
LEFT JOIN sales AS s
    ON c.customer_id = s.customer_id
GROUP BY
    CASE
        WHEN s.sale_id IS NULL
            THEN 'Kadunud (pole ostnud)'
        ELSE 'Aktiivne (on ostnud)'
    END;

-- 6. Lisaanalüüs: kadunud kliendid registreerimiskuu järgi
SELECT
    DATE_TRUNC(
        'month',
        c.registration_date
    ) AS registreerimiskuu,
    COUNT(*) AS kadunud_kliente
FROM customers AS c
LEFT JOIN sales AS s
    ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY
    DATE_TRUNC(
        'month',
        c.registration_date
    )
ORDER BY registreerimiskuu;