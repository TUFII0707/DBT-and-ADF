{{ config(materialized='table') }}

SELECT
    -- Convert MM/DD/YYYY to YYYY-MM-DD
    DATE(
        SUBSTR("Departure Date", 7, 4) || '-' ||  -- year
        SUBSTR("Departure Date", 1, 2) || '-' ||  -- month
        SUBSTR("Departure Date", 4, 2)            -- day
    ) AS departure_date,
    SUM(CAST(ticket_price AS FLOAT)) AS total_revenue
FROM {{ ref('updated_airline_dbt') }}
GROUP BY DATE(
        SUBSTR("Departure Date", 7, 4) || '-' ||
        SUBSTR("Departure Date", 1, 2) || '-' ||
        SUBSTR("Departure Date", 4, 2)
    )
ORDER BY departure_date