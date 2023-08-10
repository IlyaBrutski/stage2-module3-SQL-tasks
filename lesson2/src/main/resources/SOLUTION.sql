INSERT INTO student (name, groupnumber) VALUES ('John', 1);
INSERT INTO student (name, groupnumber) VALUES ('Chris', 1);
INSERT INTO student (name, groupnumber) VALUES ('Carl', 1);
INSERT INTO student (name, groupnumber) VALUES ('Oliver', 2);
INSERT INTO student (name, groupnumber) VALUES ('James', 2);
INSERT INTO student (name, groupnumber) VALUES ('Lucas', 2);
INSERT INTO student (name, groupnumber) VALUES ('Henry', 2);
INSERT INTO student (name, groupnumber) VALUES ('Jacob', 3);
INSERT INTO student (name, groupnumber) VALUES ('Logan', 3);
INSERT INTO student (name, groupnumber) VALUES ('Danik', 4);
INSERT INTO student (name, groupnumber) VALUES ('Ilya', 5);

INSERT INTO subject (name, grade) VALUES ('Art', 1);
INSERT INTO subject (name, grade) VALUES ('music', 1);
INSERT INTO subject (name, grade) VALUES ('Geography', 2);
INSERT INTO subject (name, grade) VALUES ('history', 2);
INSERT INTO subject (name, grade) VALUES ('PE', 3);
INSERT INTO subject (name, grade) VALUES ('math', 3);
INSERT INTO subject (name, grade) VALUES ('Science', 4);
INSERT INTO subject (name, grade) VALUES ('IT', 4);
INSERT INTO subject (name, grade) VALUES ('C++', 5);
INSERT INTO subject (name, grade) VALUES ('Java', 5);

INSERT INTO paymenttype (name) VALUES ('DAILY');
INSERT INTO paymenttype (name) VALUES ('WEEKLY');
INSERT INTO paymenttype (name) VALUES ('MONTHLY');

INSERT INTO payment (name) VALUES ('MONTHLY');

INSERT INTO Payment (type_id, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'Weekly'), (SELECT id FROM student WHERE name = 'John'));
INSERT INTO Payment (type_id, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'Monthly'), (SELECT id FROM student WHERE name = 'Oliver'));
INSERT INTO Payment (type_id, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'Weekly'), (SELECT id FROM student WHERE name = 'Henry'));
INSERT INTO Payment (type_id, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'Daily'), (SELECT id FROM student WHERE name = 'James'));
INSERT INTO Payment (type_id, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'Daily'), (SELECT id FROM student WHERE name = 'Danik'));
INSERT INTO Payment (type_id, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'Monthly'), (SELECT id FROM student WHERE name = 'Ilya'));

INSERT INTO mark (mark, subject_id, student_id) VALUES (8, (SELECT id FROM subject WHERE name = 'Art'), (SELECT id FROM student WHERE name = 'Chris'));
INSERT INTO mark (mark, subject_id, student_id) VALUES (5, (SELECT id FROM subject WHERE name = 'History'), (SELECT id FROM student WHERE name = 'Oliver'));
INSERT INTO mark (mark, subject_id, student_id) VALUES (9, (SELECT id FROM subject WHERE name = 'Geography'), (SELECT id FROM student WHERE name = 'James'));
INSERT INTO mark (mark, subject_id, student_id) VALUES (4, (SELECT id FROM subject WHERE name = 'Math'), (SELECT id FROM student WHERE name = 'Jacob'));
INSERT INTO mark (mark, subject_id, student_id) VALUES (9, (SELECT id FROM subject WHERE name = 'PE'), (SELECT id FROM student WHERE name = 'Logan'));
INSERT INTO mark (mark, subject_id, student_id) VALUES (8, (SELECT id FROM subject WHERE name = 'C++'), (SELECT id FROM student WHERE name = 'Danik'));
INSERT INTO mark (mark, subject_id, student_id) VALUES (9, (SELECT id FROM subject WHERE name = 'Java'), (SELECT id FROM student WHERE name = 'Ilya'));






