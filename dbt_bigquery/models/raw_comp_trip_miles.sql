{{
  config(
    materialized='table'
  )
}}

SELECT
    trip_year
    , trip_month
    , company
    , round(sum(trip_miles),2) as trip_miles
FROM
    {{ ref('raw_taxi_trips') }}
where company is not null    
Group By 
    trip_year_month,trip_year,trip_month,company
 