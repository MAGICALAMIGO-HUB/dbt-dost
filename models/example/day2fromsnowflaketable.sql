with source_sales as (
SELECT *
FROM {{ source("sourcename", "BOOKCSV") }}
)
select *
from source_sales
