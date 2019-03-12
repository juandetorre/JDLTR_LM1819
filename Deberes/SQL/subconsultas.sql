
tg
--Selecciona los empleados que se encuantran en el departamento 10 y otro más--
1- Select empno from employees where dept != 10 and empno in (select empno from employees where dept = 10);


Select ename, job, sal from emp where sal > (select avg(sal) from emp);








1.- Listar el nombre de los departamentos en los que en los que alguno de los salarios sea superior a 2000.
Select DEPARTMENT_NAME from DEPARTMENTS where DEPARTMENT_ID in (Select DEPARTMENT_ID from EMPLOYEES where salary > 2000);
2.- Listar el nombre de los departamentos que tengan algún empleado que gane más de 33000 al año. (Recuerda que el salario es mensual).

3.- Listar todos los empleados que trabajen en el departamento con nombre Shipping .

4.-Mostrar todos los datos de los empleados que trabajen en un departamento cuyo nombre contenga una l.

5.- Muestra los empleados que ganan más que Alexander Hunold.

6.- Listar aquellos empleados que han entrado a trabajar en la empresa antes que Bruce Ernst.

7.- Muestra los empleados del mismo departamento que Alexander Hunold.

8.- Muestra los empleados que trabajan en un departamento ubicado en Seattle.

9.- Muestra nombre y salario de los empleados del departamento Executive.

10.- Muestra el nombre, el salario y la comisión de los empleados que trabajan en el mismo departamento que Bruce Ernst.

11.- Muestra el nombre del departamento donde trabaja el empleado más antiguo la empresa.

12.- Muestra los nombres de los departamentos en los que trabaja alguien que gane menos que Bruce Ernst.

13.-Muestra todos los datos de los Programmer del Departamento 60.

14.- Obtener el sueldo medio de los empleados que trabajan en Seattle.

15.- Muestra la cantidad de empleados que trabajan en el departamento Shipping.