Create database customer_behaviour
use customer_behaviour
--- What are the revenue cintribution by Gender.

SELECT 
    gender as Gender,
    SUM(CAST(purchase_amount AS FLOAT)) AS Revenue
FROM customer
GROUP BY gender;

----Top 5 Product By Review Rating
SELECT TOP 5 
    item_purchased,
    round(AVG(TRY_CAST(review_rating AS float)),2) AS avg_review
FROM customer
GROUP BY item_purchased
ORDER BY avg_review DESC;

----- Which customers used a discount but still spent more than the average purchase amount? 

select customer_id,purchase_amount from customer
where discount_applied='Yes' and purchase_amount > = (select avg(cast(purchase_amount as float)) from customer);

----- Compare avg purchase_amount between Standard and Express Shipping.

select shipping_type,round(avg(cast(purchase_amount as float)),2) as avg_purchase from customer where shipping_type in 
('Standard','Express')group by shipping_type;

---- Do Subscriber Customer More , Compare total_revenue and avg_revenue between subscriber and Non-Subscriber Customers.

select subscription_status,count(customer_id) as total_customer, round(sum(cast(purchase_amount as float)),2) 
as total_revenue,round(avg(cast(purchase_amount as float)),2) 
as avg_revenue
from customer
group by subscription_status
order by total_customer,avg_revenue desc;

----- Which 5 products have the highest percentage of purchases with discounts applied?

select top 5  item_purchased,
round(100*sum(case when discount_applied = 'Yes' then 1 else 0 end)/count(*),2) as discount_rate
from customer
group by item_purchased
order by discount_rate desc;

----- Segment customers into New, Returning, and Loyal based on their total 
-- number of previous purchases, and show the count of each segment. 

with customer_type as (
select customer_id,purchase_frequency_days ,
case
when try_CAST(purchase_frequency_days AS int) = 1 then 'New Customer'
when try_CAST(purchase_frequency_days as float) between 2 and 10 then 'Returning'
else
'Loyal Customer'
end 
as customer_segemnt
from customer
)
select customer_segemnt,count(*) as total_customer from customer_type
group by customer_segemnt;



----- Top 3 products of each category

with item_rank AS 
(
select category,item_purchased,count(customer_id) as total_order,
ROW_NUMBER() over (partition by category order by count(customer_id) desc) as item_rank
from customer
group by category,item_purchased)

select item_rank ,category,item_purchased,total_order
from item_rank where item_rank <=3
;

----- Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?


select subscription_status ,
count(customer_id) as repeat_buyers
from customer
where previous_purchases>5 
group by subscription_status;

------ What is the revenue contribution of each age group? 

select age_group ,sum(cast(purchase_amount as float)) as revenue from customer
group by age_group;


