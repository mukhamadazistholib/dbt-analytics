{{
  config(
    materialized='table'
  )
}}

SELECT
    *
FROM
    {{ ref('taxi_trips') }}
WHERE
    trip_start_timestamp is not null and trip_total is not null