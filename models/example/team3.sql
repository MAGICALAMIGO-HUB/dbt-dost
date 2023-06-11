with
    teams as (
        select {{ ref("team1") }} as team
        union all
        select {{ ref("team2") }} as team
    )

select *
from teams
