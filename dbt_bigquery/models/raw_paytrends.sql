{{
  config(
    materialized='table'
  )
}}

SELECT
    trip_year
    , payment_type
    , round(sum(trip_total),2) as income
FROM
    {{ ref('raw_taxi_trips') }}
Group By 
    trip_year,payment_type
 