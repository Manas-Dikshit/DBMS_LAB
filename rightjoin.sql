SELECT 
    students.student_id,
    students.student_name,
    departments.dept_name
FROM students
RIGHT JOIN departments
ON students.dept_id = departments.dept_id;