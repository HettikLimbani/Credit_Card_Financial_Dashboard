
## 📊 Credit Card Financial Weekly Dashboard  

### 📌 Project Overview  
This project involves developing a **Power BI dashboard** for analyzing **credit card financial performance** on a weekly basis. Using **SQL, Power BI, and DAX**, the dashboard provides real-time insights into revenue, transactions, customer trends, and key performance metrics to help stakeholders monitor and optimize credit card operations.  

---

### 📁 Data Source  
The dataset can be accessed via:  
📌 **Datasets Folder**: [[Credit Card Financial Dashboard](https://github.com/rishabhnmishra/Credit_Card_Financial_Dashboard)  ](https://github.com/HettikLimbani/Credit_Card_Financial_Dashboard/tree/main/Datasets)


---

### 🏗 Project Phases  

#### **🔹 Phase 1: Data Collection & Database Setup**  
1. **Prepare Data**: Download the dataset as a CSV file.  
2. **SQL Database Setup**:  
   - Create SQL tables.  
   - Import CSV data into the database.  
   - Execute SQL queries for data preprocessing.  

---

#### **🔹 Phase 2: Data Processing & DAX Implementation**  
1. **Data Cleaning & Transformation**:  
   - Handle missing values.  
   - Categorize customers by **age group & income level** using **DAX**:  
     ```DAX
     AgeGroup = SWITCH(
         TRUE(),
         'public cust_detail'[customer_age] < 30, "20-30",
         'public cust_detail'[customer_age] >= 30 && 'public cust_detail'[customer_age] < 40, "30-40",
         'public cust_detail'[customer_age] >= 40 && 'public cust_detail'[customer_age] < 50, "40-50",
         'public cust_detail'[customer_age] >= 50 && 'public cust_detail'[customer_age] < 60, "50-60",
         'public cust_detail'[customer_age] >= 60, "60+",
         "unknown"
     )
     ```
2. **Revenue Calculation**:  
   ```DAX
   Revenue = 'public cc_detail'[annual_fees] + 'public cc_detail'[total_trans_amt] + 'public cc_detail'[interest_earned]
   ```  
3. **Week-over-Week (WoW) Revenue Comparison**:  
   ```DAX
   Current_week_Revenue = CALCULATE(
       SUM('public cc_detail'[Revenue]),
       FILTER(ALL('public cc_detail'), 'public cc_detail'[week_num2] = MAX('public cc_detail'[week_num2])))
   ```  

---

#### **🔹 Phase 3: Dashboard & Insights**  
1. **Visualizations in Power BI**:  
   - **Revenue Trends** (WoW & YTD)  
   - **Customer Segmentation by Age & Income**  
   - **Transaction Volume & Spending Behavior**  
   - **State-wise Contribution (TX, NY, CA = 68% of total transactions)**  
   - **Credit Card Type Insights (Blue & Silver Cards = 93% of transactions)**  

2. **Key Insights (Week 53 – Dec 31st)**  
   - **Revenue Growth**: +28.8% WoW  
   - **Total Transactions & Customer Count**: Increased  
   - **Year-To-Date (YTD) Summary**:  
     - **Total Revenue**: $57M  
     - **Total Interest Earned**: $8M  
     - **Total Transaction Amount**: $46M  
     - **Activation Rate**: 57.5%  
     - **Delinquency Rate**: 6.06%  

---

### 🛠️ Technologies Used  
- **SQL** (Data Storage & Queries)  
- **Power BI** (Dashboard & Data Visualization)  
- **DAX** (Advanced Calculations & Measures)  

---

### 📥 Installation & Setup  
1. **Clone the repository**  
   ```bash
   git clone https://github.com/HettikLimbani/Credit_Card_Financial_Dashboard.git
   cd Credit_Card_Financial_Dashboard
   ```  
2. **Import dataset into SQL database**  
   - Run SQL queries to create tables.  
   - Import CSV data into SQL.  
3. **Open Power BI** and load the processed dataset.
 
---

### 📜 License  
This project is open-source and available under the MIT License.

---
  
### 🤝 Contributing  
Contributions are welcome! Feel free to submit issues or pull requests.  
