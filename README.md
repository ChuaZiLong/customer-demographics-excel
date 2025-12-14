# Customer Demographics Analysis

## Goal
Understand the demographics of customers to inform marketing strategies.

## Data
- **Source:** Kaggle  
- **Size:** 25,000 rows × 5 columns (Age, Gender, City, Email, etc.)
- **Preliminary inspection:** No merged cells or subtotals

### Missing Data
- 496 blanks in the **Email** column  
- 298 `"???"` entries in the **Gender** column  

## Data Cleaning
- Converted the dataset into an **Excel Table** to enable automatic updates in pivot tables and charts
- Filled blank values in the Email column with `"None"` (assumed no email provided)
- Left `"???"` values in the Gender column as **unknown** (assumed customers chose not to disclose)

## Analysis
- Created pivot tables grouping:
  - **Age Group**
  - **City**
  - **Gender**
  - **Gender → City**
- Generated column charts to visualise customer distribution across these dimensions

## Insights
- The largest customer segment is aged **50+ (~9,000 customers)**, with an even distribution across known genders
- **Faro** has the highest number of customers (~5,100), while **Porto** has the lowest (~4,850)
- Customers who disclosed gender (Female, Male, Other) are evenly distributed, indicating no strong gender skew
- Customers who did not disclose gender show the most uneven average age distribution across cities, suggesting this group may represent a more heterogeneous or distinct segment

## Recommendations
- Craft marketing strategies primarily targeting customers aged **50+**, as this group represents the largest customer segment across all cities and genders
- Consider segmenting strategies for customers from **Porto** and for age-specific segments within the **unknown gender** group
