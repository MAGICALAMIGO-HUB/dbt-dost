{{ config(
    materialized='incremental'
    , unique_key='PASSENGERID'
)}}

select *
from titanic