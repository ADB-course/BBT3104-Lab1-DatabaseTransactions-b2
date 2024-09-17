[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/r-tQZu0l)
# BBT3104-Lab1of6-DatabaseTransactions


| **Key**                                                               | Value                                                                                                                                                                              |
|---------------|---------------------------------------------------------|
| **Group Name**                                                               | B2 |
| **Semester Duration**                                                 | 19<sup>th</sup> August - 25<sup>th</sup> November 2024                                                                                                                       |

**## Flowchart**

![flowchart](https://github.com/user-attachments/assets/86e441bb-c15d-4efe-953c-a51d77d208a3)


**## Pseudocode**

BEGIN TRANSACTION
 1.Create order and update quantity in stock
    INSERT INTO orderdetails (OrderNumber, productcode, quantityOrdered, priceEach, orderLineNumber)
    VALUE(@OrderNumber, 1518_17491, 2724,'136', 1)

    UPDATE 'products' SET 'quantityinSTOCK
    =@quantityinstock-2724 WHERE 'productcode' ='518_1749

2. Receive payment for order made
   INSERT INTO payments
    (CustomerNumber, checkNumber, paymentDate, amount)

   IF ERROR OCCURS THEN
       ROLLBACK TRANSACTION
   ELSE
     COMMIT TRANSACTION

END TRANSACTION

**## Support for the Sales Departments' Report**

Add a new table: Payment Instalments

This table will store information about each instalment payment made by a client, including the order ID, payment date, payment amount, and a unique payment ID.
Modify the Orders table

Add a new column to the Orders table to store the total amount owed by the client for each order.
Add another column to store the total amount paid by the client for each order.
Modify the Order-Client relationship

Establish a many-to-many relationship between the Orders table and the Clients table, as one client can have multiple orders and one order can be associated with multiple clients (in case of joint payments).
Create a view or stored procedure

Create a view or stored procedure that calculates the balance remaining for each order by subtracting the total amount paid from the total amount owed.
This view or stored procedure can be used to generate the report required by the sales department, which will display orders with outstanding balances and the amount remaining to be paid.
By making these modifications, the database will be able to store and track payment instalments, and the sales department will be able to generate a report to follow up with clients who have outstanding balances.
