{{
  config(
    materialized='ephemeral'
  )
}}

SELECT
    *
    ,CAST(trip_start_timestamp AS STRING FORMAT 'YYYY-mm-dd') as trip_date
    ,CAST(trip_start_timestamp AS STRING FORMAT 'YYYY-mm') as trip_year_month
    ,CAST(trip_start_timestamp AS STRING FORMAT 'YYYY') as trip_year
    ,CAST(trip_start_timestamp AS STRING FORMAT 'MONTH') as trip_month
FROM
    {{ source('db_taxi_trips', 'chicago_taxi_trips') }}