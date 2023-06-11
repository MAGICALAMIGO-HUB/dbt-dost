
{{ config(
    materialized='incremental'
    , incremental_strategy='delete+insert'
    , unique_key='PASSENGERID'
)}}

select *
from titanic