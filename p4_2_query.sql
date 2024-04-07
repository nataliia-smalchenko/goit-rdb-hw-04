USE mydb;
SELECT COUNT(*) AS rows_amount 
FROM order_details INNER JOIN orders ON order_details.order_id = orders.id 
    INNER JOIN customers ON orders.customer_id = customers.id
    INNER JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    INNER JOIN employees ON employees.employee_id= orders.employee_id
    INNER JOIN shippers ON shippers.id = orders.shipper_id
    RIGHT JOIN suppliers ON suppliers.id = products.supplier_id;


