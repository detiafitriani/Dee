-- MONTHLY TOTAL SALES AND PIZZA PER PIZZA NAME
SELECT  month(o.order_DATE) as  Month_Of_Date_order,
pt.pizza_name,
sum(od.quantity) as TOTAL_PIZZA, 
sum(price) as TOTAL_SALES
FROM orders as o
left join order_details as od
on o.order_id = od.order_id
LEFT JOIN pizzas as p
on od.pizza_id = p.pizza_id
left join pizza_types as pt
on p.pizza_type_id = pt.pizza_type_id
group by 1,2
order by 1 asc;