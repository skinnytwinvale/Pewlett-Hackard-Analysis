
SELECT COUNT(ut.emp_no), ut.titles
INTO retiring_titles
FROM unique_titles as ut
GROUP BY titles
ORDER BY COUNT(titles) DESC;
select * from retiring_titles


SELECT
  titles.emp_no,
  first_name,
  last_name,
  titles
INTO unique_titles
FROM titles
JOIN retirement_info ON retirement_info.emp_no = titles.emp_no;


select * from current_emp
select * from dept_manager

SELECT DISTINCT ON(e.emp_no) e.emp_no, 
    e.first_name, 
    e.last_name, 
    e.birth_date,
    de.from_date,
    de.to_date,
    t.titles
INTO mentorship_eligibilty
FROM employees as e
Left outer Join dept_emp as de
ON (e.emp_no = de.emp_no)
Left outer Join titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

select* from retirement_info
select* from  departments

create table titles (
emp_no int NOT NULL,
titles VARCHAR NOT NULL,
from_date date not null,
to_date date NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
PRIMARY KEY (emp_no, titles, from_date));

select * from mentorship_eligibilty