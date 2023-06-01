"1. From the order_items table, find the price of the highest priced order and lowest price order.
2. From the order_items table, what is range of the shipping_limit_date of the orders?
3. From the customers table, find the states with the greatest number of customers.
4. From the customers table, within the state with the greatest number of customers, find the cities with the greatest number of customers.
5. From the closed_deals table, how many distinct business segments are there (not including null)?
6. From the closed_deals table, sum the declared_monthly_revenue for duplicate row values in business_segment and find the 3 business segments with the highest declared monthly revenue (of those that declared revenue).
7. From the order_reviews table, find the total number of distinct review score values.
8. In the order_reviews table, create a new column with a description that corresponds to each number category for each review score from 1 - 5, then find the review score and category occurring most frequently in the table.
9. From the order_reviews table, find the review value occurring most frequently and how many times it occurs."

-- 1. From the order_items table, find the price of the highest priced order and lowest price order.
SELECT * 
FROM order_items
ORDER BY price ASC;
-- 1. From the order_items table, find the price of the highest priced order and lowest price order.
select max(price) as highest_price_order, min(price) as lowest_price_order
from order_items
order by price desc;

-- 2. From the order_items table, what is the range of the shipping_limit_date of the orders?
SELECT
max(shipping_limit_date) as max_date,
min(shipping_limit_date) as min_date,
max(shipping_limit_date)- min(shipping_limit_date) as date_range,
datediff(max(shipping_limit_date), min(shipping_limit_date))
FROM olist.order_items;
-- 2. From the order_items table, what is the range of the shipping_limit_date of the orders?
select shipping_limit_date
from olist.order_items
limit 10;

-- 3. From the customers table, find the states with the greatest number of customers.
select customer_state, count(*) as num_of_customers
from olist.customers
group by customer_state
order by count(*) desc
limit 5
;
-- 3. From the customers table, find the states with the greatest number of customers.
select customer_state, count(*) as num_of_customers
from olist.customers
group by 1
order by 2 desc
limit 5
;

-- 4. From the customers table, within the state with the greatest number of customers, find the cities with the greatest number of customers.
select customer_city, count(*) as num_of_customers
from olist.customers
where customer_state = "SP"
group by 1
order by 2 desc
limit 5
;

-- 5. From the closed_deals table, how many distinct business segments are there (not including null)?
select distinct count(business_segment)
from olist.closed_deals;
-- 5. From the closed_deals table, how many distinct business segments are there (not including null)?
select count(distinct business_segment)
from olist.closed_deals;


-- 6. From the closed_deals table, sum the declared_monthly_revenue for duplicate row values in business_segment and find the 3 business segments with the highest declared monthly revenue (of those that declared revenue).
-- SKIPPED --

-- 7. From the order_reviews table, find the total number of distinct review score values.
select count(distinct review_score)
from olist.order_reviews;

-- 8. In the order_reviews table, create a new column with a description that corresponds to each number category for each review score from 1 - 5, then find the review score and category occurring most frequently in the table.
select review_score,
case when review_score = 1 then "Terrible"
when review_score = 2 then "Okayish"
when review_score = 3 then "Good enough"
when review_score = 4 then "Great"
when review_score = 5 then "Awesome"
else "Unexpected review score"
end
as review_description,
count(*)
from olist.order_reviews
group by 1,2
order by 3 desc;


-- 9. From the order_reviews table, find the review value occurring most frequently and how many times it occurs.
select distinct count(review_score) as value_freq
from olist.order_reviews

select review_score,
case when review_score = 1 then "Terrible"
when review_score = 2 then "Okayish"
when review_score = 3 then "Good enough"
when review_score = 4 then "Great"
when review_score = 5 then "Awesome"
else "Unexpected review score"
end
as review_description,
count(*)
from olist.order_reviews
group by 1,2