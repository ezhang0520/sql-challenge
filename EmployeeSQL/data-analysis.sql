-- List the following details of each employee: employee number, last name, first name, gender, and salary.
select employee.emp_no, employee.last_name, employee.first_name, employee.gender, salaries.salary
from employee
inner join salaries on 
employee.emp_no = salaries.emp_no
;

-- List employees who were hired in 1986.
select employee.emp_no,
	employee.first_name,
	employee.last_name,
	extract (year from hire_date) as year
from employee
where hire_date > '12/31/1985' and hire_date < '01/01/1987';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employee.first_name, employee.last_name, dept_manager.from_date, dept_manager.to_date
from dept_manager, departments, employee 
where dept_manager.dept_no = departments.dept_no 
and dept_manager.emp_no = employee.emp_no
;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select dept_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name 
from dept_emp, departments, employee 
where dept_emp.dept_no = departments.dept_no 
and employee.emp_no = dept_emp.emp_no
;

-- List all employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name from employee
where first_name = 'Hercules' 
and last_name like 'B%'
;

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
from employee, departments, dept_emp
where employee.emp_no = dept_emp.emp_no 
	and dept_emp.dept_no = departments.dept_no 
	and departments.dept_name = 'Sales'
	
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
from employee, departments, dept_emp
where employee.emp_no = dept_emp.emp_no 
	and dept_emp.dept_no = departments.dept_no 
	and departments.dept_name in ('Sales','Development')
;

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*)
from employee
group by last_name
order by count(*) desc, last_name;