{{
  config(
    materialized='table'
  )
}}

SELECT
    payment_type, 'description here ...' description
FROM
    {{ ref('raw_taxi_trips') }}
WHERE
    payment_type is not null
Group By payment_type
order by payment_type asc