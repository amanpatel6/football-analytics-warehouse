select
{{ dbt_utils.generate_surrogate_key(['referee_id']) }} as referee_sk,
referee_id,
referee_name,
nationality 

from {{ ref('stg_referees') }}