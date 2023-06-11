
-- {{ config(materialized="incremental") }}

-- select *
-- from SOURCETTABLE
-- where order_ingestion_datetime > (select max(order_ingestion_datetime) from {{ this }})



-- {{ config(materialized="incremental") }}

-- select *
-- from sourcettable
-- where TO_DATE(order_ingestion_datetime) in (current_date() ,DATEADD(DAY, -1, CURRENT_DATE()))

-- {{ config(materialized="incremental") }}

-- select *
-- from sourcettable
-- where TO_DATE(order_ingestion_datetime) in({{var('today_and_yesterday')|join(',')}},DATEADD(DAY, -2, CURRENT_DATE()) ) 

select *
from MEROMAYA.ANISH.sourcettable
{% if is_incremental() %}
where TO_DATE(order_ingestion_datetime) in({{var('today_and_yesterday') | join(',')}} ) 
{% endif %}

