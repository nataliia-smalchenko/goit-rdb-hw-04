USE mydb;
SELECT categories.name AS category_name, AVG(order_details.quantity) AS average_quantity, COUNT(*) AS amount
FROM order_details INNER JOIN orders ON order_details.order_id = orders.id 
    INNER JOIN customers ON orders.customer_id = customers.id
    INNER JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    INNER JOIN employees ON employees.employee_id= orders.employee_id
    INNER JOIN shippers ON shippers.id = orders.shipper_id
    INNER JOIN suppliers ON suppliers.id = products.supplier_id
WHERE employees.employee_id > 3 and employees.employee_id <= 10
GROUP BY categories.name
HAVING average_quantity > 21
ORDER BY amount DESC
LIMIT 4 OFFSET 1;

