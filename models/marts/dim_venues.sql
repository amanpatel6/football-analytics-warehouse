select
{{ dbt_utils.generate_surrogate_key(['venue_id']) }} as venue_sk,
venue_id,
venue_name,
city,
capacity,
surface

from {{ ref('stg_venues') }}