1.- Listar el salario medio de los empleados.
Select AVG(salary) from employees;

2.- Listar el id y apellidos de aquellos empleados que tengan un salario anual superior a 40000 (recordar que el salario de la BD es mensual).
Select employee_id, last_name from employees where (salary * 12) > 40000;

3.- Listar id y salario, incrementado en un 10%, de los empleados que ganen menos de 100000 euros al año.
Select employee_id, (salary + salary * 0.1) from employees  where (salary * 12) < 100000;

4.- Muestra el número de empleados que ganan más de 1400
Select count(employee_id) from employees where salary > 1400;

5.- Muestra los apellidos y oficio de los empleados, ordenados por salario.
Select last_name, job_id from employees order by salary;

6.-Muestra el gasto de personal total de la empresa, sumando salarios y comisiones.
Select sum(salary + commission_pct) from employees;

7.-Muestra los apellidos de los empleados y su salario (ordenado por el salario) con el siguiente formato:
Select concat(RPAD(last_name,9,'.'), salary) from employees order by salary;
        apellido1........ salario1

        apellidon.........salarion

8.-Muestra el número de trienios completos de cada empleado.
Select first_name, trunc(months_between(sysdate, hiredate)/36) as trienios from emp;

9.- Muestra el total de dinero ganado por el empleado desde que se incorporó a la empresa suponiendo que el salario no ha cambiado en todo ese tiempo.
Select first_name, salary*(trunc(months_between(sysdate, hire_date))) from employees;

10.- Muestra con dos decimales el salario diario de cada trabajador suponiendo que los meses tienen 30 días.
Select first_name, trunc(salary / 30,2) from employees;

11.- Muestra los empleados que tengan en su apellido al menos dos letras 'a'.
Select first_name 

12.- Muestra los datos de los empleados cuyo apellido tenga mas de cinco letras.


13.- Muestra un mensaje de saludo a cada empleado con el formato 'Hola apellido_empleado'.


14.- Muestra el apellido de cada empleado junto con el nombre del mes en el que entró en la empresa.


15.- Muestra el apellido del primer empleado por orden alfabético.


16.-. Muestra el número de directores que hay en la empresa.


17.- Muestra los empleados que llevan más de 6 años en la empresa.


18.- Muestra los empleados que fueron dados de alta entre el 01/03/1988 y el 30/06/1989.