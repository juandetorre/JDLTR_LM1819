1. Nombre de empleado y nombre de departamento de los empleados que superan la media de sueldo del departamento al que pertenecen.
select e.first_name, d.department_name
from employees e inner join departments d on e.department_id = d.department_id
where salary > (select avg(salary)
                from employees
                where e.department_id = d.department_id)
2. Nombre del empleado, y del departamento al que pertenece, que tiene la comisión más alta.
select e.first_name, e.last_name, d.department_name
from employees e inner join departments d on e.department_id = d.department_id
where commission_pct = (select max(commission_pct)
                        from employees)
3. Empleados, y departamentos al que pertenecen, con sueldos superiores a la media total de la empresa.
select e.first_name, e.last_name, d.department_name
from employees e inner join departments d on e.department_id = d.department_id
where salary > (select avg(salary)
                from employees)
4. Sueldo, nombre del empleado y nombre del departamento de los empleados con una antigüedad superior al empleado 107. (Cambiado)
select e.salary, e.first_name, e.last_name, d.department_name
from employees e inner join departments d on d.department_id = e.department_id
where hire_date < (select hire_date
                    from employees
                    where employee_id='107')
5. Empleados que, en cada departamento, tienen el sueldo máximo.
select e.first_name, e.last_name, d.department_name
from employees e inner join departments d on e.department_id = d.department_id
where salary = (select max(salary)
                from employees)
6. Empleados que trabajen en departamentos que están en Seattle o Southlake. (Cambiado para que hubiera datos).
select e.first_name, e.last_name
from employees e inner join departments d inner join locations l on d.location_id = l.location_id
where location_id = (select location_id
                    from locations
                    where city='Seattle' or 'Southlake')
7. De aquellos empleados de la empresa que tengan un sueldo superior al sueldo máximo del departamento de ventas (department_id 80) queremos saber su sueldo, su nombre y el departamento al que pertenecen. 

8. Empleados que trabajen en departamentos en los que nadie cobre comisiones.

Añadidas:

9. Empleados y nombre del departamento de empleados que trabajen en el departamento cuyo salario medio supere el salario medio total de la empresa.

10. Para cada departamento que tenga 3 o más trabajadores, calcular el total de salarios, el total de comisiones y el número de trabajadores. Mostrar el nombre del departamento y las 3 cantidades.