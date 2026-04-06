select
{{ dbt_utils.generate_surrogate_key(['team_id']) }} as team_sk,
team_id,
team_name,
city

from {{ ref('stg_teams') }}


