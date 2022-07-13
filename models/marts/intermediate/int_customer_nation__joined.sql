{{
  config(
    materialized = 'view',
    )
}}


with
customer AS (
    select
        *
    from 
        {{ ref('stg_tpch_sf1__customer') }}
),

nation AS (
    select
        *
    from 
        {{ ref('stg_tpch_sf1__nation') }}
)

select
    customer.c_custkey,
    customer.c_name,
    customer.c_address,
    nation.n_name,
    customer.c_phone
from 
    customer
left join
    nation
    on (customer.c_nationkey = nation.n_nationkey)