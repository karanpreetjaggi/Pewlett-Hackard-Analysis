select count(t.title) as "count",t.title
into retiring_titles
from unique_titles as t
group by title
order by "count" desc;

select * from retiring_titles

--select * from dept_employee

select distinct on(e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
d.from_date,
d.to_date,
t.title
into mentorship_eligibilty
from employee as e
inner join dept_employee as d on d.emp_no = e.emp_no
inner join title as t on t.emp_no = d.emp_no
where (e.birth_date between '1965-01-01' AND '1965-12-31')
and (d.to_date = '9999-01-01')
order by e.emp_no;