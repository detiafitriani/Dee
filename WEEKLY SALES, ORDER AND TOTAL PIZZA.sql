SELECT  WEEK(o.order_date) as WEEK,
COUNT(distinct O.ORDER_ID) AS TOTAL_ORDER,
SUM(OD.QUANTITY) AS TOTAL_PIZZA,
sum(price) as TOTAL_SALES
FROM orders as o
left join order_details as od
on o.order_id = od.order_id
LEFT JOIN pizzas as p
on od.pizza_id = p.pizza_id
left join pizza_types as pt
on p.pizza_type_id = pt.pizza_type_id
group by 1;