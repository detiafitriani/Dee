-- MONTHLY TOTAL PIZZA CUBE VER
SELECT pizza_name, --  Month_Of_Date_order,
 -- sum(TOTAL_PIZZA) AS PIZZA,
 sum(CASE WHEN  Month_Of_Date_order = '1' THEN  TOTAL_PIZZA ELSE NULL END) AS '1',
 sum(CASE WHEN  Month_Of_Date_order = '2' THEN  TOTAL_PIZZA ELSE NULL END) AS '2',
 sum(CASE WHEN  Month_Of_Date_order = '3' THEN  TOTAL_PIZZA ELSE NULL END) AS '3',
 sum(CASE WHEN  Month_Of_Date_order = '4' THEN  TOTAL_PIZZA ELSE NULL END) AS '4',
 sum(CASE WHEN  Month_Of_Date_order =  '5' THEN  TOTAL_PIZZA ELSE NULL END) AS '5',
 sum(CASE WHEN  Month_Of_Date_order = '6' THEN  TOTAL_PIZZA ELSE NULL END) AS '6',
sum(CASE WHEN  Month_Of_Date_order = '7' THEN  TOTAL_PIZZA ELSE NULL END) AS '7',
sum(CASE WHEN  Month_Of_Date_order = '8' THEN  TOTAL_PIZZA ELSE NULL END) AS '8',
sum(CASE WHEN  Month_Of_Date_order = '9' THEN  TOTAL_PIZZA ELSE NULL END) AS '9',
sum(CASE WHEN  Month_Of_Date_order = '10' THEN  TOTAL_PIZZA ELSE NULL END) AS '10',
sum(CASE WHEN  Month_Of_Date_order = '11' THEN  TOTAL_PIZZA ELSE NULL END)  AS '11',
sum(CASE WHEN  Month_Of_Date_order = '12' THEN  TOTAL_PIZZA ELSE NULL END) AS '12'

FROM
(
SELECT  pt.pizza_name,
 month(o.order_DATE) as  Month_Of_Date_order,
sum(od.quantity) as TOTAL_PIZZA
FROM orders as o
left join order_details as od
on o.order_id = od.order_id
LEFT JOIN pizzas as p
on od.pizza_id = p.pizza_id
left join pizza_types as pt
on p.pizza_type_id = pt.pizza_type_id
group by 1,2) as Total_Pizza
group by 1
