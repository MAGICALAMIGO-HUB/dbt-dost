{{ config(
  materialized='table',
  file_format='delta'
) }}

select TYPE,NAME,COUNTRY,DATE
from TABLE1
