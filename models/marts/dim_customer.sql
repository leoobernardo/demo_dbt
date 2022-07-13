with
source as (
    select
        *
    from
        {{ref('int_customer_nation__joined')}}
)

select 
    *
from
    source