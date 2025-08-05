use restaurant_db;

-- 1. view the order_details table
select * from order_details;

-- 2. what is the data range of the table
select * from order_details 
order by order_date; 

-- another way
select min(order_date), max(order_date)
from order_details;

-- 3. how manay orders were made wihin date rnge 
select count(distinct order_id) from order_details;

-- 4. how manay itams were made wihin this data range
select count(*) from order_details;

-- 5. which order ha the most number of items
select order_id , count(item_id) as num_items
from order_details
group by order_id
order by num_items desc; -- i use 'order by' to se the highes order id
-- 6.how many order had more then 12 items
select count(*) from 
-- this s subqueries
(select order_id , count(item_id) as num_items
from order_details
group by order_id
having num_items > 12) as num_orders; 






