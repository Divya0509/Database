-----Write a SQL query to find the second-highest salary.
select * from table order by salary desc limit 1 offset 1;
