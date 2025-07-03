# 🚖 OLA Data Analyst Project

This project simulates a real-world dataset for OLA ride bookings and provides end-to-end analysis using **SQL** and **Power BI**. It demonstrates data cleaning, exploratory analysis, and business insights visualization for a one-month period.

---

## 📊 Project Overview

- 📅 **Data Duration**: 1 month (with weekend & match day variations)
- 🚗 **Vehicle Types**: Auto, Prime Plus, Prime Sedan, Mini, Bike, eBike, Prime SUV
- 📍 **50 Dummy Pickup/Drop Locations**: Bangalore areas
- 💳 **Payment Modes**: UPI, Cash, Card
- ✅ **Booking Status Distribution**:
  - Successful Rides: ~62%
  - Cancelled by Customer: ≤7%
  - Cancelled by Driver: ≤18%
  - Incomplete Rides: ≤6%
- 📈 **Special Conditions**:
  - Higher order volume & value on weekends/match days
  - Ratings, VTAT, CTAT only for successful rides

---

## 🗄 Dataset Columns

| Column Name                         | Description                                |
|-------------------------------------|--------------------------------------------|
| Date                                | Booking date                               |
| Time                                | Booking time                               |
| Booking_ID                          | Unique 10-digit ID starting with `CNR`     |
| Booking_Status                      | Success, Cancelled by Customer, etc.       |
| Customer_ID                         | Unique customer identifier                 |
| Vehicle_Type                        | Auto, Prime Sedan, Bike, etc.              |
| Pickup_Location                     | Dummy Bangalore location                   |
| Drop_Location                       | Dummy Bangalore location                   |
| AvgVTAT                             | Time to arrive at vehicle                  |
| AvgCTAT                             | Time to arrive at customer                 |
| Cancelled_Rides_by_Customer         | 1/0                                        |
| Reason_for_cancelling_by_Customer   | Reason text                                |
| Cancelled_Rides_by_Driver           | 1/0                                        |
| Reason_for_cancelling_by_Driver     | Reason text                                |
| Incomplete_Rides                    | 1/0                                        |
| Incomplete_Rides_Reason             | Reason text                                |
| Booking_Value                       | Total fare amount                          |
| Payment_Method                      | UPI, Cash, Card                            |
| Ride_Distance                       | Ride distance in km                        |
| Driver_Ratings                      | 0–5 rating scale                           |
| Customer_Rating                     | 0–5 rating scale                           |

---

## 🛠 SQL Analysis

This project used SQL to explore, analyze, and generate insights from the OLA ride bookings dataset.  

### ✅ 1. Data Cleaning & Preparation
- Loaded the dataset into a MySQL database using `LOAD DATA LOCAL INFILE`.
- Converted boolean columns (e.g., Cancelled_Rides_by_Customer) into **TINYINT** for easy filtering.
- Replaced null values in ratings and reasons with defaults (`0`, `N/A`) for consistency.

### ✅ 2. Ride Success & Cancellations Analysis
- Retrieved all **successful bookings** for performance metrics.
- Measured success rate (~62%) and analyzed customer/driver cancellation rates.
- Identified top cancellation reasons for both customers and drivers.

### ✅ 3. Customer Insights
- Identified **top 5 customers** with the highest number of rides.
- Analyzed payment trends showing UPI as the most used method (~57%).

### ✅ 4. Vehicle Performance Metrics
- Calculated average ride distances and ratings per vehicle type.
- Analyzed driver and customer ratings correlations for service insights.

### ✅ 5. Revenue Analysis
- Computed total revenue from successful rides.
- Segmented revenue by payment methods for financial insights.

### ✅ 6. Operational Issues
- Listed all incomplete rides with reasons like vehicle breakdowns or customer demand.

---

## 📊 Power BI Dashboard

The Power BI dashboard provides interactive insights into OLA’s operations.

### 🔥 Key Visuals
- 📈 **Ride Volume Over Time**
- 🥧 **Booking Status Breakdown**
- 🚗 **Top 5 Vehicle Types by Ride Distance**
- ⭐ **Average Customer Ratings by Vehicle Type**
- ❌ **Cancellation Reasons (Customers & Drivers)**
- 💸 **Revenue by Payment Method**
- 👑 **Top 5 Customers by Booking Value**
- 📏 **Ride Distance Distribution per Day**
- 📦 **Driver Ratings Distribution**
- ⚖️ **Customer vs Driver Ratings Scatter Plot**

---

## 🖥 Demo  
📥 **[Download PBIX File](./dashboard/ola-dashboard.pbix)**  

---

## 📁 Repository Structure
📦 ola-bookings-analysis
├── data/
│ └── ola_rides_details.csv
├── sql/
│ └── analysis_queries.sql
├── powerbi/
│ └── OLA_Dashboard.pbix
├── screenshots/
│ ├── dashboard_overview.png
│ ├── booking_status_pie.png
│ └── revenue_by_payment.png
└── README.md



