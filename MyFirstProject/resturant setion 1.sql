use restaurant_db;
-- 1. view the menu_items table?
select * from menu_items;

-- 2. find the number of items in the menu table
select count(menu_item_id) from menu_items;

-- 3. what are the least and most exbensive items on the menu
select price 
from menu_items
order by price desc;

-- 4. How many italian dishes are on the menu
select *
from menu_items
where category = 'italian';

-- 5. what are the least and most expensive italian dishes on the menu
-- least 
select price 
from menu_items
order by price;
-- expencive
select price 
from menu_items
order by price desc;

-- 6. how manay dishes are on each category
select category, count(category) as num_dishs
from menu_items
group by category;

-- 7. what is average dish price within each category
select category, avg(price) as avg_price
from menu_items
group by  category;

 



