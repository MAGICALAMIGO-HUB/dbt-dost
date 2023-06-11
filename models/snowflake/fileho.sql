-- with source_sales as (
-- select * from {{ source("sourcename", "TABLE1") }})
-- select *
-- from source_sales
with source_sales as (
SELECT a.TYPE, a.NAME, a.COUNTRY, a.DATE
FROM {{ source("sourcename", "TABLE1") }} as a
INNER JOIN {{ source("sourcename", "TABLE2") }} as b ON a.TYPE = b.TYPE

)
select *
from source_sales
