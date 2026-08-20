--- Mitu toodet on kokku?
select
  COUNT(*) as product_count
from
  products;

select distinct
  category
from
  products
order by
  category;

select
  COUNT(distinct supplier) as supplier_count
from
  products;

-- Millised on kõige kallimad tooted?
select
  product_name,
  category,
  retail_price
from
  products
order by
  retail_price desc
limit
  10;

-- Kui suur on iga toote võimalik brutokasum?
select
  product_name,
  cost_price,
  retail_price,
  retail_price - cost_price as profit_per_unit
from
  products
order by
  profit_per_unit desc;

--Kui suur on juurdehindluse protsent?
select
  product_name,
  cost_price,
  retail_price,
  ROUND(
    (retail_price - cost_price) / nullif(cost_price, 0) * 100,
    2
  ) as markup_percent
from
  products
order by
  markup_percent desc;

-- Mitu toodet on igas kategoorias?
select
  category,
  COUNT(*) as product_count
from
  products;
  -- Millised veerud ja andmed tabelis on?    
select
  *
from
  products
limit
  10;

-- Kõik unikaalsed tootekategooriad
select distinct
  category
from
  products
  -- Puuduvad hinnad
select
  COUNT(*) - COUNT(retail_price) as puuduvad_kategooriad
from
  products;

-- Puuduvad kategooriad
select
  COUNT(*) - COUNT(category) as puuduvad_kategooriad
from
  products;

select
  COUNT(*) as column_count
from
  information_schema.columns
where
  table_schema = 'public'
  and table_name = 'products'

  -- Toodete arv ja hinnad kategooriate kaupa
SELECT
    category,
    COUNT(*) AS product_count,
    AVG(retail_price) AS average_retail_price,
    MIN(retail_price) AS minimum_retail_price,
    MAX(retail_price) AS maximum_retail_price,
    SUM(retail_price) AS total_retail_price
FROM products
WHERE retail_price IS NOT NULL
GROUP BY category
ORDER BY average_retail_price DESC;

-- Keskkonnasertifikaadiga ja alla 100 euro maksvad tooted
SELECT
    product_name,
    category,
    retail_price,
    eco_certified
FROM products
WHERE eco_certified = TRUE
  AND retail_price < 100
ORDER BY retail_price;

