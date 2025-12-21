# Customer Demographics Analysis

## Goal
Understand customer demographics and data quality to inform high-level marketing and segmentation strategies, while demonstrating an end-to-end analytics workflow from data cleaning to stakeholder-ready reporting.


## Data
- **Source:** Kaggle (https://www.kaggle.com/datasets/vanpatangan/retail-fashion-data)
- **Size:** 25,000 rows × 5 columns (Age, Gender, City, Email, etc.)  
- **Granularity:** One row per customer  
- **Preliminary inspection:** No merged cells or subtotals  

### Missing Data
- 496 blanks in the **Email** column  
- 298 `"???"` entries in the **Gender** column  


## Tools Used
- **Excel:** Initial data cleaning, validation, and exploratory analysis using pivot tables  
- **SQL:** Scalable aggregation, segmentation, and data quality checks on the cleaned dataset  
- **Power BI:** Data modelling, metric definition, and interactive demographic analysis for stakeholder decision-making
- **Python (pandas):** Data cleaning, validation, standardisation, and feature engineering


## Data Cleaning (Excel)
- Converted the dataset into an **Excel Table** to enable consistent referencing and automatic updates in pivot tables and charts  
- Standardised missing email values by filling blanks with `"None"` (assumed no email provided)  
- Retained `"???"` values in the Gender column and treated them as **unknown** (assumed customers chose not to disclose)  

### Identified Data Quality Issues
- **496** customers (~1.98%) have missing or invalid email addresses  
- **298** customers have undefined gender values (`"???"`)  


## Analysis

### Excel Analysis
Pivot tables and charts were created to explore customer distribution by:
- **Age group**
- **City**
- **Gender**
- **Gender × City**

### SQL Analysis
The cleaned dataset was loaded into a SQL database to perform scalable and reproducible analysis.

Key analyses included:
- Data quality checks (email completeness)
- Geographic distribution of customers
- Age profiling by gender
- Age band segmentation
- Cross-segmentation by city and gender

SQL query logic is available in:  
`sql/analysis_queries.sql`

### Power BI Analysis
Power BI was used to transform the SQL-validated dataset into an **interactive reporting layer** suitable for non-technical stakeholders.

#### Data Model
- Single customer fact table  
- Customer-level granularity preserved to allow flexible aggregation  
- Age bands and demographic attributes used as dimensions  

#### Core Measures
- Total Customers  
- Customers with Email  
- Missing Email Percentage  
- Average Age  

#### Dashboard Structure
The Power BI report consists of three pages:

1. **Customer Overview**  
   - KPI cards for total customers and email completeness  
   - Customer distribution by city and gender  
   - Slicers for city, gender, and age band  

2. **Demographic Segmentation**  
   - Customer distribution by age band  
   - Average age by gender  
   - Cross-analysis of age and gender  

3. **City × Gender Deep Dive**  
   - Matrix view of customer counts by city and gender  
   - Gender distribution for selected cities  
   - Drill-down capability to compare locations
  

### Python Analysis
Key steps performed in the Jupyter notebook:
- Standardised missing values by converting blanks to strings    
- Validated numeric fields (e.g. setting age to numeric and flagging implausible values)
- Created a reusable derived field, age bands, for consistent segmentation


## Insights
- Customer distribution across cities is relatively balanced, with **Faro** having the highest share (~5,100 customers) and **Porto** the lowest (~4,850)  
- The largest customer segment is aged **50+ (~9,200 customers)**, followed by relatively even distributions across the 20–49 age range  
- Gender distribution among disclosed categories (Female, Male, Other) is broadly balanced, with no dominant group  
- Customers with unknown gender values form a small but distinct subset and may represent a more heterogeneous segment  


## Recommendations
- Prioritise marketing strategies targeting customers aged **50+**, as this is the largest and most consistent segment across cities  
- Consider differentiated approaches for **Porto**, where customer representation is slightly lower  
- Treat customers with **unknown gender** as a separate test segment, as their demographic patterns differ slightly from disclosed groups  
