create database project_p1;
use project_p1;
create table retail_sales( transactions_id int,
sale_date DATE	,sale_time TIME	,customer_id int	,gender Varchar(15),	age int	,category varchar(15),	quantiy int,	price_per_unit float,
	cogs float,	total_sale float );

select count(*) from retail_sales;
select * from retail_sales
where
     transactions_id is Null
     or
     
     sale_date is Null;
-- How many sales we have

select count(*) as total_sale from retail_sales;
-- How many customer we have

select count(distinct customer_id) as total_customer from retail_sales;
-- How many category

select Distinct category from retail_sales;

-- Data analysis and bisnuss key problem
-- Q1. Write a query to retrive all columns for sales made on '2022-11-05'

select * from retail_sales
where sale_date='2022-11-05';
-- Q2. Write a query to retrive all transactions where category is'clothing' and the quantity sold is more than 4 in the month of nov-2022
select * from retail_sales
where 
     category='Clothing'
     and
     To_char(sale_date,'yyyy-mm')='2022-11'
     and
     quantiy>=4;
-- Q.3. write a sql query to calculate the total sales for each category
select category,
sum(total_sale) as net_sale,
count(*) as total_orders
from retail_sales
group by 1;
-- Q4. write a sql query to find the averge age  of customers who purchased items from the 'Beauty' category.
select 
round(avg(age),2) as average_age

from retail_sales
where category='Beauty';
-- Q5. write a sql query to find all transactions where the total_sale is greater than 1000.
select * from retail_sales
where total_sale>1000;
-- write a sql query to find the total number of transactions (transaction_id) made by each gender in each category
select category,gender,count(*) as total_trans
from retail_sales
group by category,gender;

--  write a sql query to calculate the average sale for each month find out the best selling month in each year
select 
year(sale_date) as year,
month(sale_date) as month,
avg(total_sale) as total_sale,
RANK() OVER (
        ORDER BY AVG(total_sale) DESC
    ) AS sales_rank
from retail_sales
group by 1,2
order by 1,3 desc;
select 
customer_id,sum(total_sale) as total_sales
 from retail_sales
 group by 1
 order by 2 desc
 limit 5;
-- write a query identify unique customer that purchaes from each category
select
category,
count(distinct customer_id) as unique_customer
from retail_sales
group by category;
-- write a query to create each sift and number of order(morning<12, ofternoon<17 and evening>17)
WITH hourly_sales AS
(
    SELECT *,
        CASE
            WHEN HOUR(sale_time) < 12 THEN 'Morning'
            WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
            ELSE 'Evening'
        END AS shift
    FROM retail_sales
)

SELECT
    shift,
    COUNT(*) AS total_orders
FROM hourly_sales
GROUP BY shift;