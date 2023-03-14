{{
  config(
    materialized='table'
  )
}}

SELECT
    trip_year
    , company
    , round(sum(trip_total),2) as income
FROM
    {{ ref('raw_taxi_trips') }}
where company is not null    
Group By 
    trip_year,company
 