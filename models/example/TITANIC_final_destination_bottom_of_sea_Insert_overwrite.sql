
{{ config(
    materialized='incremental'
    , incremental_strategy='insert_overwrite'
)}}

select *
from source_table