SELECT * FROM paymenttype WHERE name='MONTHLY';
SELECT mark FROM mark JOIN subject ON subject.id = mark.subject_id WHERE subject.name = 'Art';
SELECT student.* FROM student JOIN payment ON payment.student_id = student.id JOIN paymenttype ON paymenttype.id = payment.type_id WHERE paymenttype.name = 'WEEKLY';
SELECT student.* FROM student JOIN mark ON mark.student_id = student.id JOIN subject ON subject.id = mark.subject_id WHERE subject.name = 'Math';