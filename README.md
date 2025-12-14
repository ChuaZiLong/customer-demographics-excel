Customer Demographics Analysis

Goal
Understand the demographics of customers to inform marketing strategies.

Data
Source: Kaggle

25,000 rows, 5 columns (Age, Gender, City, Email, …)

Preliminary inspection: no merged cells or subtotals

Missing data:

496 blanks in the Email column

298 “???” entries in the Gender column

Data Cleaning
Converted dataset into an Excel Table to enable automatic updates in pivots/charts

Email blanks filled with “None” (assumed no email provided)

Gender “???” left as unknown (assumed customers chose not to disclose)

Analysis
Created pivot tables grouping Age Group, City, Gender and Gender → City

Generated column charts to visualize distribution of customers across these groups




Insights
Most of the customers (~9000) are 50+ years old with even distribution across known genders
Most of the customers (~5100) are from the city of Faro and the least (~4850) are from Porto
Customers are evenly distributed across known genders (Female, Male, Other), each contributing roughly one-third of customers who disclosed gender, suggesting no strong gender skew in the dataset.
Customers who did not disclose their gender show the most uneven average age distribution across cities, suggesting this group may represent a distinct or less homogeneous segment compared to customers who disclosed gender.

Recommendations
Craft marketing strategies primarily targeting customers aged 50+, as this group represents the largest customer segment across all cities and genders.

Consider segmenting strategies for customers from Porto and older or younger customers in the “unknown gender” group

