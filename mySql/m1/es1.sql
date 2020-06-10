use me;

select first_name, last_name, email, hire_date
from employees
order by last_name, first_name;

select first_name, last_name, email, hire_date
from employees
where first_name = "David" OR first_name = "Peter";

select first_name, last_name, email, hire_date
from employees
where department_id = 60;

select first_name, last_name, email, hire_date
from employees
where department_id in (30, 50);

select first_name, last_name, email, hire_date
from employees
where salary > 10000;

select first_name, last_name, email, hire_date, salary
from employees
where salary not between 4000 and 15000;

select first_name, last_name, email, hire_date, salary, department_id
from employees
where salary not between 4000 and 15000
AND department_id in (50, 80);
