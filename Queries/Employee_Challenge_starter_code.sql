-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title,
to_date

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
