select
cast(referee_id as integer) as referee_id,
trim(cast(referee_name as varchar)) as referee_name,
trim(cast(nationality as varchar)) as nationality

from {{ source('football_raw', 'raw_referees') }}