select
cast(team_id as int) as team_id,
trim(cast(team_name as varchar)) as team_name,
trim(cast(city as varchar)) as city,
cast(founded_year as int) as founded_year

from {{ source('football_raw', 'raw_teams') }}