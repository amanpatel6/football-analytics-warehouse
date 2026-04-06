select
cast(match_id as integer) as match_id,
trim(cast(home_team as varchar))  as home_team,
trim(cast(away_team as varchar)) as away_team,
trim(cast(venue as varchar)) as venue,
cast(match_date as date) as match_date,
cast(kickoff_time as time) as kickoff_time,
cast(gameweek as integer) as gameweek,
cast(home_goals as integer) as home_goals,
cast(away_goals as integer) as away_goals,
trim(cast(referee as varchar)) as referee 

from {{ source('football_raw', 'raw_matches') }}