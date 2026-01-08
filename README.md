# HUL-Distribution-DBMS-Project
Hindustan Unilever Distribution Management System
# HUL Distribution DBMS Project

## Introduction
Hindustan Unilever Limited (HUL) operates one of the largest and most complex FMCG distribution networks in India. Managing products across factories, warehouses, distributors, retailers, and financial systems requires a **robust, well-structured database**.

This project presents a **comprehensive Database Management System (DBMS)** designed to model HUL’s **end-to-end distribution and supply chain operations**. The database is built using **relational database principles** and accurately reflects real-world business workflows such as manufacturing, inventory control, logistics, sales order processing, and payment management.


## Project Objectives
The primary objectives of this project are:

- To design a realistic and scalable database schema for an FMCG distribution network  
- To convert business processes into structured relational tables  
- To ensure data integrity, consistency, and minimal redundancy through normalization  
- To support tracking of products from factory to end retailer  
- To manage financial transactions, invoices, and tax records  


## Business Scope Covered
The database captures the following real-world business processes:

- Product creation, classification, packaging, pricing, and taxation  
- Factory-wise production with batch tracking and quality checks  
- Warehouse storage and internal stock movement  
- Distributor onboarding, agreements, and order fulfillment  
- Retailer sales order management  
- Delivery and transport logistics  
- Invoice generation and payment processing  


## Database Design Overview
The database is designed using an **Entity-Relationship (ER) Model** and later converted into a **Relational Schema**.

### Key Design Considerations
- Clear separation of **master data** and **transactional data**  
- Use of **primary keys** to uniquely identify records  
- Use of **foreign keys** to maintain relationships between entities  
- Implementation of **indexes** for faster data retrieval  
- Normalization up to **Third Normal Form (3NF)**  


## Module-wise Description

### 1. Product Management Module
This module handles all product-related master data.

**Tables Included:**
- Product  
- Product_Type  
- Product_SKU  
- Product_Pricing  
- Product_Tax  
- Product_Packaging  

**Functionality:**
- Stores detailed product information including SKU, weight, packaging type, and shelf life  
- Supports multiple price points and tax slabs  
- Enables tracking of product variations and categories  


### 2. Manufacturing & Factory Module
This module manages production-level operations.

**Tables Included:**
- Factory  
- Factory_Section  
- Machines  
- Production_Batch  
- Quality_Check  

**Functionality:**
- Tracks factory capacity and operational sections  
- Records batch-wise production data  
- Maintains quality check results for compliance and safety  
- Associates machines with factory sections  


### 3. Warehouse & Inventory Module
Responsible for stock storage and movement.

**Tables Included:**
- Warehouse  
- Warehouse_Section  
- Inventory  
- Stock_Movement  

**Functionality:**
- Maintains real-time inventory at warehouse and section level  
- Records inward and outward stock movement  
- Enables auditability of inventory changes  


### 4. Distribution & Logistics Module
Manages movement of goods across the supply chain.

**Tables Included:**
- Distributor  
- Distributor_Agreement  
- Delivery_Record  
- Transport  
- Vehicle  

**Functionality:**
- Stores distributor details and agreement terms  
- Tracks deliveries against orders  
- Records transport and vehicle allocation for shipments  


### 5. Sales & Order Management Module
Handles order lifecycle from placement to fulfillment.

**Tables Included:**
- Sales_Order  
- Order_Item  
- Retailer  
- Retailer_Type  

**Functionality:**
- Manages retailer profiles and segmentation  
- Records sales orders and line items  
- Links orders to distributors and deliveries  


### 6. Geographic Mapping Module
Supports location-based analysis and distribution planning.

**Tables Included:**
- Region  
- State  
- City  

**Functionality:**
- Organizes distributors and retailers geographically  
- Enables region-wise reporting and logistics optimization  


### 7. Finance & Payment Module
Manages billing and financial records.

**Tables Included:**
- Invoice  
- Tax_Invoice  
- Payment  
- Payment_Mode  
- Financial_Year  

**Functionality:**
- Generates invoices for sales orders  
- Tracks tax components and payment status  
- Records payment mode, amount, and date  
- Supports financial year-wise reporting  


## Relationships & Constraints

### One-to-Many Relationships
- One Factory → Many Production Batches  
- One Warehouse → Many Inventory Records  

### Many-to-Many Relationships
Resolved via junction tables:
- Sales Orders ↔ Products (`Order_Item`)  

### Constraints Used
- Primary Key (PK)  
- Foreign Key (FK)  
- NOT NULL  
- UNIQUE  
- Indexed columns for performance  

## ER Diagram
The ER diagram visually represents:
- All entities and attributes  
- Relationship cardinalities  
- Foreign key dependencies

- <img width="1282" height="820" alt="image" src="https://github.com/user-attachments/assets/4d06f575-79e3-43aa-925b-298d4d678498" />



