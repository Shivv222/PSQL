-- Write your PostgreSQL query statement below
select stu.student_id, stu.student_name, sub.subject_name, COUNT(exm.subject_name) as attended_exams
from Students stu
cross join Subjects sub
left join Examinations exm
on stu.student_id = exm.student_id
and exm.subject_name = sub.subject_name
group by
stu.student_id, stu.student_name, sub.subject_name
order by
stu.student_id, sub.subject_name;