ALTER TABLE student MODIFY COLUMN birthday DATE NOT NULL;

ALTER TABLE Mark MODIFY COLUMN mark int check(mark >= 1 and mark <= 10),
modify column student_id int not null,
modify column subject_id int not null;

ALTER TABLE Subject MODIFY COLUMN grade int check(grade >= 1 and grade <= 10);

ALTER TABLE PaymentType ADD CONSTRAINT unique_name unique (name);

ALTER TABLE Payment MODIFY COLUMN type_id int NOT NULL,
MODIFY COLUMN amount decimal NOT NULL,
MODIFY COLUMN date date NOT NULL;