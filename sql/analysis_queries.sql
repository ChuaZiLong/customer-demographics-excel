/*
Customer Demographics Analysis
SQL Analysis Queries

Dataset: Customer master table
Table name: customers

Purpose:
- Validate data quality
- Perform scalable demographic segmentation
- Complement Excel-based cleaning and pivot analysis
*/

--------------------------------------------------
-- Query 1: Data quality check – email completeness
--------------------------------------------------
-- Business question:
-- How complete is our customer contact information?

SELECT
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN email IS NULL OR email = '' OR email = 'None'
            THEN 1 ELSE 0
        END
    ) AS missing_email_count,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN email IS NULL OR email = '' OR email = 'None'
                THEN 1 ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS missing_email_percentage
FROM customers;

--------------------------------------------------
-- Query 2: Customer distribution by city
--------------------------------------------------
-- Business question:
-- Where are customers geographically concentrated?

SELECT
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
ORDER BY customer_count DESC;

--------------------------------------------------
-- Query 3: Age profile by gender
--------------------------------------------------
-- Business question:
-- Are there meaningful age differences across gender groups?

SELECT
    gender,
    ROUND(AVG(age), 1) AS avg_age,
    MIN(age) AS min_age,
    MAX(age) AS max_age,
    COUNT(*) AS customer_count
FROM customers
GROUP BY gender;

--------------------------------------------------
-- Query 4: Age banding for interpretability
--------------------------------------------------
-- Business question:
-- How are customers distributed across meaningful age groups?

SELECT
    CASE
        WHEN age < 20 THEN '<20'
        WHEN age BETWEEN 20 AND 29 THEN '20–29'
        WHEN age BETWEEN 30 AND 39 THEN '30–39'
        WHEN age BETWEEN 40 AND 49 THEN '40–49'
        ELSE '50+'
    END AS age_band,
    COUNT(*) AS customer_count
FROM customers
GROUP BY age_band
ORDER BY customer_count DESC;

--------------------------------------------------
-- Query 5: City × gender cross-segmentation
--------------------------------------------------
-- Business question:
-- Does gender distribution vary meaningfully by city?

SELECT
    city,
    gender,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city, gender
ORDER BY city, customer_count DESC;
