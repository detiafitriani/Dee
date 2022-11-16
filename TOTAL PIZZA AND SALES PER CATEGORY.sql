-- TOTAL PIZZA AND SALES PER CATEGORY
SELECT  pt.category,
sum(od.quantity) as TOTAL_PIZZA, 
sum(price) as TOTAL_SALES
FROM order_details as od
LEFT JOIN pizzas as p
on od.pizza_id = p.pizza_id
left join pizza_types as pt
on p.pizza_type_id = pt.pizza_type_id
group by 1;