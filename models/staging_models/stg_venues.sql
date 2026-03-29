select
cast(venue_id as integer) as venue_id,
trim(cast(venue_name as varchar)) as venue_name,
trim(cast(city as varchar)) as city,
cast(capacity as integer) as capacity,
lower(cast(surface as varchar)) as surface


from {{ source('football_raw', 'raw_venues') }}