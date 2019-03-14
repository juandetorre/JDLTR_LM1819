



1.- Listar el nombre de los departamentos en los que en los que alguno de los salarios sea superior a 2000.
Select DEPARTMENT_NAME from DEPARTMENTS where DEPARTMENT_ID in (Select DEPARTMENT_ID from EMPLOYEES where salary > 2000);

2.- Listar el nombre de los departamentos que tengan algún empleado que gane más de 33000 al año. (Recuerda que el salario es mensual).
Select DEPARTMENT_NAME from DEPARTMENTS where DEPARTMENT_ID in (Select DEPARTMENT_ID from employees where salary * 12 > 33000);

3.- Listar todos los empleados que trabajen en el departamento con nombre Shipping .
Select first_name, last_name from EMPLOYEES where DEPARTMENT_ID in (Select DEPARTMENT_ID from DEPARTMENTS where DEPARTMENT_NAME = 'Shipping');

4.-Mostrar todos los datos de los empleados que trabajen en un departamento cuyo nombre contenga una l.
Select * from EMPLOYEES where DEPARTMENT_ID in (Select DEPARTMENT_ID from departments where DEPARTMENT_NAME like '%l%');

5.- Muestra los empleados que ganan más que Alexander Hunold.
Select first_name from EMPLOYEES where salary > (Select salary from employees where last_name like 'Hunold');

6.- Listar aquellos empleados que han entrado a trabajar en la empresa antes que Bruce Ernst.
Select first_name from employees where hire_date < (Select hire_date from EMPLOYEES where last_name like 'Ernst');

7.- Muestra los empleados del mismo departamento que Alexander Hunold.
Select first_name, DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID in (Select DEPARTMENT_ID from EMPLOYEES where last_name like 'Hunold');

8.- Muestra los empleados que trabajan en un departamento ubicado en Seattle.
Select first_name, last_name from EMPLOYEES where DEPARTMENT_ID in (Select DEPARTMENT_ID from DEPARTMENTS where location_id in (Select location_id from locations where city like 'Seattle'));

9.- Muestra nombre y salario de los empleados del departamento Executive.
Select first_name, salary from EMPLOYEES where DEPARTMENT_ID in (Select DEPARTMENT_ID from departments where DEPARTMENT_NAME like 'Executive');

10.- Muestra el nombre, el salario y la comisión de los empleados que trabajan en el mismo departamento que Bruce Ernst.
Select first_name, salary, commission_pct from EMPLOYEES where DEPARTMENT_ID in (Select DEPARTMENT_ID from EMPLOYEES where last_name like 'Ernst');

11.- Muestra el nombre del departamento donde trabaja el empleado más antiguo la empresa.
Select DEPARTMENT_NAME from departments where DEPARTMENT_ID in (Select DEPARTMENT_ID from EMPLOYEES where hire_date = (Select min(hire_date) from EMPLOYEES));

12.- Muestra los nombres de los departamentos en los que trabaja alguien que gane menos que Bruce Ernst.
Select DEPARTMENT_NAME from DEPARTMENTS where DEPARTMENT_ID in (Select DEPARTMENT_ID from EMPLOYEES where salary < (Select salary from EMPLOYEES where last_name like 'Ernst'));

13.-Muestra todos los datos de los Programmer del Departamento 60.
Select * from employees where department_id = '60' and job_id in (Select job_id from jobs where job_title like 'Programmer');

14.- Obtener el sueldo medio de los empleados que trabajan en Seattle.
Select avg(salary) from EMPLOYEES where DEPARTMENT_ID in (Select DEPARTMENT_ID from DEPARTMENTS where location_id in (Select location_id from locations where city like 'Seattle'));

15.- Muestra la cantidad de empleados que trabajan en el departamento Shipping.
Select count(first_name) from EMPLOYEES where department_id in (Select department_id from departments where DEPARTMENT_NAME like 'Shipping');