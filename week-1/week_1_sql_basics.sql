-- Mitu toodet on kokku?
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
  products
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