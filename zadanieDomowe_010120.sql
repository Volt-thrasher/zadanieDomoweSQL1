/*1*/SELECT 
    first_name, last_name, hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND NOW();
/*2*/SELECT 
    COUNT(employees.emp_no)
FROM
    employees
WHERE
    gender LIKE 'F';
/*3*/SELECT 
    e.first_name, e.last_name, d.dept_name
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no;
/*4*/SELECT 
    first_name, last_name, birth_date
FROM
    employees
WHERE
    gender LIKE 'F'
ORDER BY REVERSE(birth_date)
LIMIT 1;
/*5*/SELECT 
    first_name, last_name, title
FROM
    employees,
    titles
WHERE
    employees.emp_no = titles.emp_no
        AND titles.emp_no = 10009;
/*6*/SELECT 
    first_name, last_name, title
FROM
    employees,
    titles
WHERE
    employees.emp_no = titles.emp_no
        AND titles.to_date > NOW();
/*7*/SELECT 
    first_name, last_name, salary
FROM
    employees e
        INNER JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    to_date > NOW()
        AND salary = (SELECT 
            MAX(salary)
        FROM
            salaries);
/*8*/SELECT 
    first_name, last_name, salary
FROM
    employees e
        INNER JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    to_date > NOW()
        AND salary = (SELECT 
            MAX(salary)
        FROM
            salaries)
        OR salary = (SELECT 
            MIN(salary)
        FROM
            salaries);
/*9 
select 
	first_name, last_name, manager_first_name, manager_last_name
    from employees e join dept_emp de on e.emp_no = de.emp_no*/
    
/*10*/ select distinct title from titles ;