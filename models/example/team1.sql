with
    teams as (
        select 'dev' as team
        union all
        select 'design' as team
    )

select *
from teams
