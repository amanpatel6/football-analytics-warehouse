{% snapshot players_snapshot %}

{{
    config(
        target_schema= 'main',
        unique_key="player_id",
        strategy='check',
        check_cols = ['current_team']
    )
}}


select * from {{ ref('stg_players') }}

{% endsnapshot %}