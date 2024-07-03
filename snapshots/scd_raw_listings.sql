{% snapshot scd_raw_listings %}

{{
    config(
        target_schema = 'dev',
        unique_key = 'id',
        strategy = 'timestamp',
        updated_at = 'updated_at',
        invalidate_hard_delete = True
    )
}}

SELECT *
FROM {{ source( 'airbnb', 'listings' ) }}

{% endsnapshot %}

SELECT *
FROM airbnb.dev.scd_raw_listings