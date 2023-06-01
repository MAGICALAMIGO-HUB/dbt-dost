
{{ config(
    materialized='incremental'
    , incremental_strategy='merge'
    , unique_key='order_id'
)}}

select *
from titanic