with source_sales as (
SELECT *
FROM {{ source("sourcename", "TABLE1") }}
)
select *
from source_sales
