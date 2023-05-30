-- my_model.sql
{% set varname = '\'ANISH\'' %}
select *
from TABLE1
where NAME ='{{ var ("VARIABLEglob") }}'
