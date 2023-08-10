SELECT student.id, student.name FROM student
   JOIN mark ON student.id = mark.student_id
   GROUP BY student.id
   HAVING AVG(mark.mark) > 8;
SELECT student.id, student.name FROM student
   JOIN mark ON student.id = mark.student_id
   WHERE mark.mark > 7
   GROUP BY student.id;
SELECT student.id, student.name FROM student
   JOIN payment ON student.id = payment.student_id
   WHERE YEAR(payment.payment_date) = 2019
   GROUP BY student.id
   HAVING COUNT(*) > 2;