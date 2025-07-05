CREATE Database DSA_PROJECT

Select * from [dbo].[KMS Sql Case Study]

select * from [dbo].[Order_Status]




------JOIN TABLES------ AND CREATING VIEW-------

Create view KMSORDER
		AS
SELECT [KMS Sql Case Study].ORDER_ID,
       [KMS Sql Case Study].Order_Quantity,
	   [KMS Sql Case Study].Unit_Price,
	   [KMS Sql Case Study].Discount,
	   [KMS Sql Case Study].Product_Base_Margin,
        [KMS Sql Case Study].Order_Date,
		[KMS Sql Case Study].Ship_Date,
		[KMS Sql Case Study].Customer_Name,
		[KMS Sql Case Study].Customer_Segment,
		[KMS Sql Case Study].Province,
		[KMS Sql Case Study].Region,
		[KMS Sql Case Study].Order_Priority,
		[KMS Sql Case Study].Sales,
		[KMS Sql Case Study].Profit,
		[KMS Sql Case Study].Ship_Mode,
		[KMS Sql Case Study].Shipping_Cost,
	    [KMS Sql Case Study].Product_Container,
		[KMS Sql Case Study].Product_Category,
		[KMS Sql Case Study].Product_Sub_Category,
		[KMS Sql Case Study].Product_Name,
		Order_Status.Status
		from [KMS Sql Case Study]
		JOIN Order_Status
		ON Order_Status.Order_Id=[KMS Sql Case Study].Row_ID
		

		SELECT * FROM KMSORDER

		
----QUESTION 1 SOLVED----
-----HIGHEST PRODUCT CATEGORY-----

select top 1 Product_Category,
sum(sales) As total_sales
from  [dbo].[KMS Sql Case Study]
GROUP BY Product_Category
ORDER BY total_sales DESC


------QUESTION 2 SOLVED-----
-----TOP 3 and BOTTTOM 3 REGION IN TERMS OF SALES---

Select top 3 Region,
sum(sales) As Total_sales
from [KMS Sql Case Study]
group by region
order by total_sales desc



SELECT top 3 Region,
MIN(SALES) AS Total_sales
from [dbo].[KMS Sql Case Study]
group by region
order by total_sales desc


-------QUESTION 3 SOLVED------
------TOTAL SALES OF APPLIANCES IN ONTARIO-----

SELECT Region,
Sum(Sales) AS Total_Appliances
from[dbo].[KMS Sql Case Study]
Where region='Ontario'
Group by Region


-----------NO 4-----------
SELECT top 10 Customer_Name,
MIN(SALES) AS Total_sales
from [dbo].[KMSORDER]
group by Customer_Name
order by total_sales ASC



