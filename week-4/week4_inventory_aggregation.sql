SELECT
    table_name,
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name IN ('products', 'sales', 'inventory_movements')
ORDER BY table_name, ordinal_position;

--Mitu erinevat toodet on igas kategoorias ja millises hinnavahemikus need asuvad
SELECT
    p.category,
    COUNT(DISTINCT p.product_id) AS tooteid,
    ROUND(AVG(p.retail_price), 2) AS keskmine_hind,
    MIN(p.retail_price) AS min_hind,
    MAX(p.retail_price) AS max_hind
FROM products p
GROUP BY p.category
ORDER BY tooteid DESC;

-- Toodete arve ja hind tootegategooria kohta
SELECT
    p.category,
    COUNT(DISTINCT p.product_id) AS toodete_arv,
    ROUND(AVG(p.retail_price), 2) AS keskmine_hind,
    MIN(p.retail_price) AS min_hind,
    MAX(p.retail_price) AS max_hind
FROM products p
GROUP BY p.category
ORDER BY toodete_arv DESC;

-- müügi kogused
SELECT
    p.category,
    s.quantity
FROM products p
JOIN sales s
    ON p.product_id = s.product_id;

--Kategooriad, milles on kokku müüdud üle 100 ühiku
SELECT
    p.category,
    COUNT(DISTINCT p.product_id) AS müüdud_tooteid,
    SUM(s.quantity) AS müüdud_kogus,
    ROUND(
        SUM(s.quantity)::numeric
        / COUNT(DISTINCT p.product_id),
        2
    ) AS keskmine_kogus_toote_kohta
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY p.category
HAVING SUM(s.quantity) > 100
ORDER BY müüdud_kogus DESC;

--Järjesta iga kategooria tooted hinna järgi, alustades kallimast
SELECT
    p.product_name,
    p.category,
    p.retail_price,
    ROW_NUMBER() OVER (
        PARTITION BY p.category
        ORDER BY p.retail_price DESC
    ) AS koht_kategoorias
FROM products p
ORDER BY p.category, koht_kategoorias;

--Millised on müügikoguse järgi TOP 3 toodet igas kategoorias ja kui suure osa kategooria müügist igaüks moodustab
WITH toodete_myyk AS (
    SELECT
        p.product_id,
        p.product_name,
        p.category,
        COALESCE(SUM(s.quantity), 0) AS myydud_kogus
    FROM products p
    LEFT JOIN sales s
        ON p.product_id = s.product_id
    GROUP BY
        p.product_id,
        p.product_name,
        p.category
),

jarjestatud_tooted AS (
    SELECT
        product_name,
        category,
        myydud_kogus,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY myydud_kogus DESC
        ) AS koht_kategoorias,
        ROUND(
            100.0 * myydud_kogus
            / NULLIF(SUM(myydud_kogus) OVER (
                PARTITION BY category
            ), 0),
            2
        ) AS osakaal_kategooria_myygist
    FROM toodete_myyk
)

SELECT
    product_name,
    category,
    myydud_kogus,
    koht_kategoorias,
    osakaal_kategooria_myygist
FROM jarjestatud_tooted
WHERE koht_kategoorias <= 3
ORDER BY category, koht_kategoorias;
