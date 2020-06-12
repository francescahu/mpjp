use me;

-- Salario corrente, corrente + 8.5%, delta
select salary, salary + (salary * 0.085), abs(salary - (salary * 0.085)) as delta
from employees;

-- Quanti giorni sono passati dall'assunzione a oggi
select hire_date, curdate(), datediff(now(), hire_date)
from employees;

-- Commissione di ognuno o 'no value'
select ifnull(commission_pct, "no value")
from employees;




-- >, <, +, avg di salary
select truncate(max(salary),0), min(salary), sum(salary), avg(salary)
from employees;

-- >, <, +, avg per ogni job_id
select job_id, max(salary), min(salary), sum(salary), avg(salary)
from employees
group by job_id;

-- Num dipendenti per ogni job_id
select job_id, count(job_id)
from employees
group by job_id;

-- Num IT_PROG
select job_id, count(job_id)
from employees
where job_id = "IT_PROG"; -- group by job_id having ...

-- Num Manager
select count(distinct manager_id)
from employees;

select count(*)
from (
	select manager_id, count(manager_id)
	from employees
    where manager_id is not null
	group by manager_id
) as e;

-- Nome dipendenti che non sono manager
select employee_id, first_name, last_name
from employees
where employee_id not in (
	select e.manager_id
	from employees e join employees m
	where e.manager_id = m.employee_id);
   
select employee_id, first_name, last_name
from employees
where employee_id not in (
	select distinct manager_id
	from employees
	where manager_id is not null);
    
-- Differenza tra salario maggiore e minore 
select (max(salary) - min(salary)) as "Diff"
from employees;

-- Come sopra, ma considerando job_id ******************* BOH ROCCO
select job_id, (max(salary) - min(salary)) as diff
from employees
group by job_id
having max(salary) - min(salary) > 0;

select max(salary) - min(salary) as diff
from employees
group by job_id
having max(salary) != min(salary);

-- Salario minimo con dipendenti raggruppati per manager  ********************************* BOH GIACOMO
-- (non considerare chi non ha manager, ne gruppi con min(salario) < 6000)
select manager_id, min(salary)
from employees
where salary > 6000
group by manager_id
having manager_id is not null;

select manager_id, min(salary) as salary 
from(
	select manager_id, salary 
    from employees 
    where salary > 6000) as s1
group by manager_id 
having manager_id is not null;


-- Indirizzi completi tra locations e countries
select *
from locations join countries
using(country_id);

-- Nome di tutti i dipendenti e loro department
select e.first_name, e.last_name, d.department_name, d.department_id
from employees e left outer join departments d
using(department_id);
-- a Toronto
select e.first_name, e.last_name, d.department_name, l.city
from employees e join departments d using(department_id)
join locations l using(location_id)
where city = "Toronto";

-- Chi è stato assunto dopo David Lee
select first_name, last_name, hire_date
from employees
where hire_date > (
	select hire_date
    from employees
    where first_name = "David" and last_name = "Lee");

-- Chi è stato assunto prima del proprio manager 			BOH
-- Paolo Di Federico
select e.first_name, e.last_name, e.hire_date, e.manager_id, m.employee_id, m.hire_date
from employees e, employees m
where e.manager_id = m.employee_id and e.hire_date < m.hire_date;
-- Zambo
select e.first_name, e.last_name, e.hire_date, e.manager_id, m.employee_id, m.hire_date
from employees e join employees m
where e.manager_id = m.employee_id and e.hire_date < m.hire_date;
-- Giacomo
select first_name, last_name
from employees as e
join (select employee_id, hire_date
from employees
where employee_id in (
	select distinct manager_id
    from employees
    where manager_id is not null)) as m 
    on e.manager_id = m.employee_id 
    where e.hire_Date < m.hire_date
    order by 1;
-- Rocco
select e.last_name, e.first_name, e.hire_date
from employees e
where e.hire_date < (
	select m.hire_date
    from employees m 
    where e.manager_id = m.employee_id and e.manager_id is not null);
        
-- data assunzione manager
-- data assunzione employee

--    from () as xxx
--    where a = xxx.ciao ...

-- mio
select distinct e.first_name, e.last_name
from employees e join employees m
on(m.employee_id = e.manager_id)
where e.hire_date < m.hire_date and e.manager_id is not null;

-- Chi ha lo stesso manager di Lisa Ozer
select first_name, last_name, manager_id
from employees
where manager_id = (
	select manager_id
    from employees
    where first_name = "Lisa" and last_name = "Ozer")
and first_name != "Lisa" and last_name != "Ozer";

-- Chi lavora in un department in cui c'è >= 1 employee con 'u' nel cognome
select first_name, last_name, department_id
from employees
where department_id in (
	select department_id -- last_name contiene la u
	from employees
	where regexp_like(last_name, '^.*u.*$')); -- where last_name like '%u%'

-- Chi lavora nel department Shipping
select first_name, last_name
from employees join departments 
using(department_id)
where department_name = "Shipping";

-- Chi ha come manager Steven King
select employee_id, first_name, last_name, manager_id
from employees
where manager_id = (
	select employee_id
	from employees
	where first_name = "Steven" and last_name = "King");
