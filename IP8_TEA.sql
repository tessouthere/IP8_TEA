-- selecting the database --
USE premier_products;
-- printing all rows and columns of the dataset --
SELECT * FROM customer;
SELECT * FROM order_line;
SELECT * FROM orders;
SELECT * FROM part;
SELECT * FROM sales_rep;
-- last name, first name, sales rep number, and city from sale rep table --
SELECT last_name, first_name, sales_rep_num, city
FROM sales_rep;
-- order & customer number from orders --
SELECT order_num, customer_num
FROM orders;
-- order & customer number, only 2 rows --
SELECT order_num, customer_num
FROM orders limit 2;
-- entries from customer where sales rep number is 20. --
SELECT * from customer
where sales_rep_num=20;
-- customer name, balance, credit limit where sales rep is 20 --
select customer_name,balance,credit_limit from customer where sales_rep_num=20;
-- part number, num ordered, quoted price, total price with conditions --
select part_num, quoted_price, num_ordered, num_ordered*quoted_price as "total price"
from order_line
where num_ordered=1 and order_num=21617;
-- all the orders from order date between '2010-10-20’ and '2010-10-22' --
SELECT * FROM orders
WHERE order_date BETWEEN '2010-10-20' AND '2010-10-22';
-- all of parts where the part description starts with ‘D’ and end with  ‘er’ --
select * from part where part_description like "D%" and part_description like "%er";
-- total balance from customer --
select sum(balance) from customer;
-- minimum balance from customer --
select balance from customer order by balance limit 1;
-- count number of customers in customer table -- 
select count(customer_num) from customer;
-- select order number where quote price is between 500 and 1000 --
select order_num from order_line where quoted_price between 500 and 1000;
-- new table of customer name (customer), last name and first name (sales_rep) --
select c.customer_name, s.last_name, s.first_name
from customer c 
join sales_rep s on c.sales_rep_num=s.sales_rep_num;