with
source as (
    select
        *
    from   
        {{source('src_tpch_sf1', 'nation')}}
)

select
    *
from
    source