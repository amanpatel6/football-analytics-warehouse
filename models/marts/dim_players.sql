select
{{ dbt_utils.generate_surrogate_key(['player_id']) }} as player_sk,
player_id,
player_name,
nationality,
position,
current_team,
date_of_birth


from {{ ref('stg_players') }}