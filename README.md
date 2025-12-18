# Customer Demographics Analysis

## Goal
Understand customer demographics and data quality to inform high-level marketing and segmentation strategies.

## Data
- **Source:** Kaggle  
- **Size:** 25,000 rows × 5 columns (Age, Gender, City, Email, etc.)
- **Preliminary inspection:** No merged cells or subtotals

### Missing Data
- 496 blanks in the **Email** column  
- 298 `"???"` entries in the **Gender** column

## Tools Used
- **Excel:** Initial data cleaning, validation, and exploratory analysis using pivot tables
- **SQL:** Scalable aggregation, segmentation, and data quality checks on the cleaned dataset
Excel was used to inspect and validate the data manually, while SQL was used to perform structured, repeatable queries and cross-check key metrics.

## Data Cleaning (Excel)
- Converted the dataset into an **Excel Table** to enable consistent referencing and automatic updates in pivot tables and charts
- Standardised missing email values by filling blanks with `"None"` (assumed no email provided)
- Retained `"???"` values in the Gender column and treated them as **unknown** (assumed customers chose not to disclose)

### Identified Data Quality Issues
- **496** customers (~1.98%) have missing or invalid email addresses
- **298** customers have undefined gender values (`"???"`)
These issues were documented and retained to avoid introducing assumptions during analysis.

## Analysis

### Excel Analysis
Pivot tables and charts were created to analyse customer distribution by:
- **Age group**
- **City**
- **Gender**
- **Gender × City**
These views were used for exploratory analysis and visual validation.

### SQL Analysis
The cleaned dataset was loaded into a SQL database to perform scalable and reproducible analysis.  
Key analyses included:
- Data quality checks (email completeness)
- Geographic distribution of customers
- Age profiling by gender
- Age band segmentation
- Cross-segmentation by city and gender
SQL query logic is available in: sql/analysis_queries.sql

## Insights
- Customer distribution across cities is relatively balanced, with **Faro** having the highest share (~5,100 customers) and **Porto** the lowest (~4,850)
- The largest customer segment is aged **50+ (~9,200 customers)**, followed by relatively even distributions across the 20–49 age range
- Gender distribution among disclosed categories (Female, Male, Other) is broadly balanced, with no dominant group
- Customers with unknown gender values form a small but distinct subset and may represent a more heterogeneous segment

## Recommendations
- Prioritise marketing strategies targeting customers aged **50+**, as this is the largest and most consistent segment across cities
- Consider differentiated approaches for **Porto**, where customer representation is slightly lower
- Treat customers with **unknown gender** as a separate segment for testing, as their demographic patterns differ slightly from disclosed groups
