
SELECT * FROM menu_items;
SELECT DISTINCT category FROM menu_items;
SELECT COUNT(menu_item_id) FROM menu_items;
SELECT price, item_name FROM menu_items
ORDER BY price DESC 
LIMIT 1;
SELECT price, item_name FROM menu_items
ORDER BY price
LIMIT 1;
SELECT COUNT(category) FROM menu_items
WHERE category='American';
SELECT ROUND(AVG(price),2) FROM menu_items;

SELECT * FROM order_details;
SELECT COUNT(DISTINCT order_id) FROM order_details;
SELECT order_id, COUNT(item_id) AS articulos
FROM order_details 
GROUP BY order_id
ORDER BY articulos DESC
LIMIT 5;

SELECT order_date FROM order_details
ORDER BY order_date DESC; 
SELECT COUNT(*) FROM order_details
WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';

SELECT * FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id;

SELECT mi.item_name, COUNT(od.item_id) AS total_vendido
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name
ORDER BY total_vendido DESC
LIMIT 5;

SELECT mi.item_name, COUNT(od.order_id) AS total_pedidos
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name
ORDER BY total_pedidos;

SELECT od.item_id, mi.item_name, SUM(mi.price) AS total_gastado
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
WHERE mi.item_name is not NULL 
GROUP BY 1, 2
ORDER BY total_gastado DESC;

SELECT od.item_id, mi.item_name, SUM(mi.price) AS total_gastado
FROM order_details AS od
LEFT JOIN menu_items AS mi
ON od.item_id = mi.menu_item_id
WHERE mi.item_name is not NULL 
GROUP BY 1, 2
ORDER BY total_gastado;

 




