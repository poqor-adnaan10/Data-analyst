-- 1. combain the muen_item and order_details tables into single table
select *
from order_details od  left join menu_items mi
on od.item_id = mi.menu_item_id;

-- 2.what are the least and most order items? what ctegoris were are in
	--- least
select item_name, category,count(order_details_id) as num_purchase
from order_details od  left join menu_items mi
on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchase;

	--- most
select item_name, category, count(order_details_id) as num_purchase
from order_details od  left join menu_items mi
on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchase desc;

-- 3.what are the to 5 most orders that spent the most money
select order_id, sum(price) as total_spend
from order_details od  left join menu_items mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc
limit 5;

-- 4. view the details of the highest spend order? what insight can you gather from the result
select category, count(order_id) as num_items
from order_details od  left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440
group by category;

-- 5. view the detailes of the top 5 highste spend orders?  what insight can you gather from the result
select order_id, category, count(order_id) as num_items
from order_details od  left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id in  (440,2075, 1957, 330, 2675)
group by order_id ,category;
