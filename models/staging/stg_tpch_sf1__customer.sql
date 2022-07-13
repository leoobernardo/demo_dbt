with 
source as (
    select
        *
    from
        {{source('src_tpch_sf1', 'customer')}}
)

select
    *
from
    source