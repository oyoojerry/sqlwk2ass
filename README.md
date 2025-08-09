# SQL Queries README

This document provides explanations for five SQL queries that retrieve specific data from a database containing business information (payments, orders, employees, offices, and products).

## Query 1: Payment Details
**Purpose**: Retrieves basic payment information.  
**Columns Selected**:
- `checkNumber` (unique payment identifier)
- `paymentDate` (date of payment)
- `amount` (payment value)  

```sql
SELECT 
    checkNumber,   
    paymentDate,   
    amount         
FROM 
    payments;
```

---

## Query 2: In-Process Orders
**Purpose**: Gets details for orders currently being processed.  
**Filters & Sorting**:
- Only orders with `status = 'In Process'`
- Results sorted by `orderDate` (newest first)  

```sql
SELECT 
    orderDate,      
    requiredDate,   
    status          
FROM 
    orders          
WHERE 
    status = 'In Process'  
ORDER BY 
    orderDate DESC;
```

---

## Query 3: Sales Representatives
**Purpose**: Lists contact information for sales representatives.  
**Key Features**:
- Filters for `jobTitle = 'Sales Rep'`
- Orders results by `employeeNumber` (highest number first)  

```sql
SELECT 
    firstName,        
    lastName,         
    email             
FROM 
    employees         
WHERE 
    jobTitle = 'Sales Rep'   
ORDER BY 
    employeeNumber DESC;
```

---

## Query 4: Office Locations
**Purpose**: Retrieves complete office records.  
**Note**: Uses `SELECT *` to get all columns from the offices table.  

```sql
SELECT * FROM offices;
```

---

## Query 5: Low-Cost Products
**Purpose**: Shows the 5 cheapest products in stock.  
**Logic**:
- Orders products by `buyPrice` (lowest first)
- Limits results to top 5 entries  

```sql
SELECT 
    productName,       
    quantityInStock    
FROM 
    products           
ORDER BY 
    buyPrice ASC       
LIMIT 5;
```

---

## Database Schema Requirements
These queries require the following tables to exist in your database:
1. `payments`
2. `orders`
3. `employees`
4. `offices`
5. `products`

*Ensure your database contains these tables before executing the queries.*
