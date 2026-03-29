select
cast(player_id as integer) as player_id,
trim(cast(player_name as varchar)) as player_name,
trim(cast(nationality as varchar)) as nationality,
trim(cast(position as varchar)) as position,
trim(cast(current_team as varchar)) as current_team,
cast(date_of_birth as date) as date_of_birth


from {{ source('football_raw', 'raw_players') }}