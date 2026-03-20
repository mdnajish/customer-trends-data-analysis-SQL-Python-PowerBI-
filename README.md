**Customer Shopping Behavior Analysis**

**Project Overview**

This project analyzes customer shopping behavior to uncover patterns, identify key drivers of purchasing decisions, and provide actionable business insights. The goal is to help businesses improve customer engagement, optimize marketing strategies, and increase revenue.

**Business Problem**

A retail company aims to better understand customer behavior across demographics, product categories, and sales channels. The objective is to identify factors such as discounts, reviews, seasons, and payment preferences that influence purchasing decisions and repeat buying behavior.

**Key Objectives**

Analyze customer purchase patterns

Identify high-value customer segments

Understand factors driving repeat purchases

Provide data-driven business recommendations

Identify Top 3 product of each category

**Tools & Technologies**

Python (Pandas) – Data Cleaning & Preparation

SQL – Data Analysis & Querying

Power BI – Dashboard & Visualization


**Dataset Information**

**Total Records: 3,900**

**Columns: 18**

**Includes:**

Customer demographics

Purchase behavior

Subscription status

Product categories

**Data Processing**

Handled missing values

Standardized column names

Performed feature engineering

Prepared clean dataset for analysis

**Key Insights**

Subscribers spend significantly more than non-subscribers

Express shipping is associated with higher purchase value

Customer demographics (age & gender) impact revenue patterns

Repeat customers contribute heavily to overall sales

**SQL Analysis Example**

SELECT 
    subscription_status,
    COUNT(*) AS repeat_buyers
FROM 
    customer
WHERE 
    previous_purchases > 5
GROUP BY 
    subscription_status
ORDER BY 
    repeat_buyers DESC;
    
**Power BI Dashboard**

<img width="1413" height="772" alt="Screenshot 2026-03-20 172643" src="https://github.com/user-attachments/assets/322b5a39-52af-4eb9-96e5-f83e17ec22c2" />


The interactive dashboard includes:

Revenue analysis by gender and age

Customer segmentation

Subscription vs non-subscription comparison

Shipping preferences impact

Product performance insights

**Business Recommendations**

Introduce attractive subscription plans

Implement loyalty programs for repeat customers

Optimize discount strategies to improve profit margins

Target high-value customer segments with personalized marketing

**Project Outcome**

This project provides actionable insights into customer behavior, enabling businesses to make data-driven decisions, improve customer retention, and enhance overall sales performance.

**About Me :-**

Md Najish

B.Com(Hons.)| Aspiring Data Analyst

Email: mdnajish783@gmail.com

LinkedIn: https://www.linkedin.com/in/md-najish-uod3253
