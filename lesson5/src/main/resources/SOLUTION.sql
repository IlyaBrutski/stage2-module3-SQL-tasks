SELECT * FROM payment WHERE Amount >= 500;
SELECT * FROM student WHERE birthday <= DATEADD(YEAR, -20, '2000-10-10')
SELECT * FROM student WHERE groupnumber = 10 AND birthday >= DATEADD(YEAR, -20, '2000-10-10')
SELECT * FROM students WHERE (name = 'Mike' OR groupnumber IN (4, 5, 6));
SELECT * FROM payment WHERE payment_date >= DATEADD(MONTH, -8, '2023-01-01')
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE (name = 'Roxi' AND groupnumber = 4) OR (name = 'Tallie' AND groupnumber = 9);