{{
  config(
    materialized='table'
  )
}}

SELECT
    company, 'description here ...' description
FROM
    {{ ref('raw_taxi_trips') }}
WHERE
    company is not null
Group By company
order by company asc