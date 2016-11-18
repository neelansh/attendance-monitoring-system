CREATE TABLE usms_batch_allocation (//done
    batch_id INT,
    class_name VARCHAR(100),
    CONSTRAINT class_id_pk PRIMARY KEY (class_id)
);
CREATE TABLE lecture (//new table
    lecture_id INT,
    batch_id INT,
    subject_id int,
    lecture_dt DATE,
    lecture_duration INT,
    CONSTRAINT lecture_id_pk PRIMARY KEY (lecture_id),
    CONSTRAINT lecture_class_id_fk FOREIGN KEY (class_id) REFERENCES class (class_id)
);
CREATE TABLE student (//done
    enrollment_no INT,
    student_first_name VARCHAR(20),
    student_last_name VARCHAR(20),
    CONSTRAINT student_id_pk PRIMARY KEY (student_id)
);
CREATE TABLE attendance (//new table
    lecture_id INT ,
    enrollment_no INT,
    attendance_present INT CHECK (attendance_present in (0,1)),
    CONSTRAINT attendance_pk PRIMARY KEY (lecture_id, enrollment_no),
    CONSTRAINT att_lecture_id_fk FOREIGN KEY (lecture_id) REFERENCES lecture (lecture_id),
    CONSTRAINT att_student_id_fk FOREIGN KEY (student_id) REFERENCES student (student_id)
);