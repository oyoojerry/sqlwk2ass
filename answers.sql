--QUESTION                     1
-- Select specific columns from the payments table
SELECT 
    checkNumber,   -- Retrieves the unique check number for the payment
    paymentDate,   -- Retrieves the date when the payment was made
    amount         -- Retrieves the amount of the payment
FROM 
    payments;      -- The table containing all payment records

--QUESTION                     2
-- Retrieve orderDate, requiredDate, and status 
-- from orders that are currently 'In Process'
SELECT 
    orderDate,      -- The date when the order was placed
    requiredDate,   -- The date by which the order is required to be delivered
    status          -- The current status of the order
FROM 
    orders          -- The table containing all orders
WHERE 
    status = 'In Process'  -- Filter to show only orders that are 'In Process'
ORDER BY 
    orderDate DESC; -- Sort results so the most recent orders appear first


--QUESTION                      3
-- Select the first name, last name, and email of employees
SELECT 
    firstName,        -- Employee's first name
    lastName,         -- Employee's last name
    email             -- Employee's email address
FROM 
    employees         -- The table containing employee details
WHERE 
    jobTitle = 'Sales Rep'   -- Filter to include only employees with the job title 'Sales Rep'
ORDER BY 
    employeeNumber DESC;     -- Sort results so employees with the highest employeeNumber appear first



--QUESTION                     4
-- Retrieve all columns and records from the offices table
SELECT 
    *               -- The asterisk (*) means select all columns
FROM 
    offices;        -- The table containing office location details



--QUESTION                     5
-- Retrieve productName and quantityInStock from the products table
SELECT 
    productName,       -- Name of the product
    quantityInStock    -- Current stock quantity of the product
FROM 
    products           -- The table containing product details
ORDER BY 
    buyPrice ASC       -- Sort results by buyPrice in ascending order (lowest price first)
LIMIT 5;               -- Limit the output to only the first 5 records
