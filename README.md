# 🍫 Chocolate Sales EDA
*What can two years of chocolate sales tell us about a business?*
<p align="center">
<img width="500" height="250" alt="rosemary-williams-MUbR4H4UhAM-unsplash" src="https://github.com/user-attachments/assets/fc3c42b5-5a05-498a-8778-2c5263243a68" />

</p>

<br>

## 💼 Business Problem

**SweetBite Chocolates** is a global chocolate manufacturer selling products across 7 countries through Retail, Online, and Wholesale channels.

The company has collected two years of sales data, but management lacks a clear understanding of the factors driving sales performance.
Without a clear view of product performance, market trends, and sales patterns, it is difficult to make informed decisions on pricing, marketing, and inventory planning.

<br>

## 🎯 Objective
As a Data Analyst on the Analytics team, I was tasked with performing an exploratory data analysis (EDA) of two years of sales data using SQL. 

The objective is to assess data quality, explore key business metrics and dimensions, identify trends and anomalies, and generate actionable insights to support business decision-making.

<br>

## 🗂️ Dataset
This project uses an **order-level chocolate sales dataset** covering transactions from **January 2022 to December 2023** across **7 countries** and **Retail, Online, and Wholesale** sales channels.

**Key attributes include:**  Product, Country, Sales Channel, Order Date, Discount (%), Marketing Spend, Order Amount

<br>
 
## 📊 Analysis Approach
The analysis was conducted using a structured analytical framework, progressing from data understanding and validation to business insight generation.

<table>
  <thead>
    <tr>
      <th>Analysis</th>
      <th>Objective</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>📋 <strong>Data Overview</strong></td>
      <td>Understand the dataset, its structure, and key attributes.</td>
    </tr>
    <tr>
      <td>🧹 <strong>Data Quality Assessment</strong></td>
      <td>Assess data quality by identifying missing values, duplicates, inconsistencies, and outliers.</td>
    </tr>
    <tr>
      <td>📊 <strong>Dimension Analysis</strong></td>
      <td>Analyze performance across products, countries, channels, and salespeople.</td>
    </tr>
    <tr>
      <td>📅 <strong>Date & Time Analysis</strong></td>
      <td>Explore trends, seasonality, and changes over time.</td>
    </tr>
   <tr>
      <td>📈 <strong>Metric Analysis</strong></td>
      <td>Evaluate overall business performance using key metrics.</td>
    </tr>
    <tr>
      <td>🏷️ <strong>Categorical Analysis</strong></td>
      <td>Compare performance across different business categories.</td>
    </tr>
    <tr>
      <td>🏆 <strong>Ranking Analysis</strong></td>
      <td>Identify top and bottom performers across key dimensions.</td>
    </tr>
    <tr>
      <td>💡 <strong>Business Insights</strong></td>
      <td>Summarize key findings and actionable insights.</td>
    </tr>
  </tbody>
</table>

<br>

## 🔍 Key Findings
#### 📈 Overall Business Performance
   - The dataset contains **200K sales orders**, generating **$102.6M in revenue** from **27.9M boxes shipped** over a two-year period (2022–2023).
   - Average order value was **$512.86**, with an average discount of **13.08%**.

#### 📅 Sales Trends
   - Order volume remained highly consistent across both years (~**99K orders annually**), indicating minimal seasonality.
   - Monthly and quarterly order distribution was evenly spread, with **February** recording the lowest order activity, while **Q3 and Q4 consistently showed slightly higher demand than Q1 and Q2**.
#### 🍫 Product Performance
   - **70% Dark Bar** was the best-selling product, contributing **$26.36M (25.70%)** of total revenue.
   - The top three products:**70% Dark Bar, Mixed Assortment Box, and Truffle Gift Box**—generated approximately **64% of total revenue**, highlighting a strong reliance on a small group of flagship products.
   - **Hazelnut Milk Bar** was the lowest-performing product, contributing only **2.11%** of total revenue.

#### 🌍 Market Performance
   - **Australia** was the largest market (**41.37%** of revenue), followed by **Brazil (35.71%)**.
   - Together, Australia and Brazil generated approximately **77% of total revenue**.

#### 🛒 Channel Performance
   - **Retail** was the leading sales channel, contributing **52.44%** of total revenue, followed by **Wholesale (36.54%)**.
   - Retail and Wholesale together accounted for approximately **89% of total revenue**, while Online represented a smaller share (**11.01%**).

#### 👥 Salesperson Performance
   * **Arjun Mehta** was the top-performing salesperson, generating **$34.70M (33.83%)** of total revenue.
   * The **top five salespeople** contributed approximately **68% of total revenue**, indicating sales performance was concentrated among a few individuals.
   * **Laura Hoffmann** was the lowest-performing salesperson, contributing **0.70%** of total revenue.

<br>

## ✅ Recommendations
  - **Focus on your best-selling products.** Ensure top-performing products remain well-stocked and continue receiving strong marketing support.
  - **Increase sales in smaller markets.** Explore ways to grow sales in Germany, India, and Japan through local promotions and market-specific campaigns.
  - **Grow the online sales channel.** Invest in online marketing and improve the digital shopping experience to increase online sales.
  - **Review low-performing products.** Assess whether lower-selling products need better promotion, pricing adjustments, or changes to the product lineup.
  - **Learn from top-performing salespeople.** Share successful sales techniques and best practices with the rest of the sales team.
  - **Support lower-performing salespeople.** Provide additional coaching and review sales territories to help improve performance.
  - **Prepare for periods of higher demand.** Plan inventory and marketing activities in advance for quarters with slightly stronger sales.
<br>
<br>
<br>
Thanks for reading! 🍫
If you found this project interesting, feel free to ⭐ the repository or explore my other projects.
