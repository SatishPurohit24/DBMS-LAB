1. Create user d2 identified by sit;
(user d2 is created with password sit)
2. grant connect,resource to d2;
(permission granted)
3. alter user d2 identified by ***;(password)
(password can have only 0-9, a-z, A-Z Only, o special character are allowed)
4.emter username as: d2@D2Database
(user d2 is now connecting to database d2)


DATE:- 19/1/26
1. insert into st_info values(101,'abc',5,6,7); 
 insert into st_info values(102,'def',5,6,8);
 insert into st_info values(103,'ghi',5,6,9);
 insert into st_info values(104,'jkl',5,1,1);
 insert into st_info values(105,'mno',5,1,2);
 insert into st_info values(106,'pqr',5,1,3);
 insert into st_info values(107,'stu',5,1,4);
 insert into st_info values(108,'vwx',5,1,5);

DATE-:20/1/26

CREATE TABLE UNIVERSITY (
    university_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
INSERT INTO UNIVERSITY (university_id, name) VALUES  (1, 'Example University');
INSERT INTO UNIVERSITY (university_id, name) VALUES  (2, 'Another University');
INSERT INTO UNIVERSITY (university_id, name) VALUES  (3, 'Third University');
INSERT INTO UNIVERSITY (university_id, name) VALUES  (4, 'Fourth University');
INSERT INTO UNIVERSITY (university_id, name) VALUES  (5, 'Fifth University');
INSERT INTO UNIVERSITY (university_id, name) VALUES (6, 'Sixth University');
INSERT INTO UNIVERSITY (university_id, name) VALUES  (7, 'Seventh University');



CREATE TABLE DEPARTMENT (
    dept_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    building VARCHAR(50),
    budget DECIMAL(12, 2),
    university_id INT,
    FOREIGN KEY (university_id) REFERENCES UNIVERSITY(university_id)
);
INSERT INTO DEPARTMENT (dept_id, name, building, budget, university_id) VALUES 
(1, 'Computer Science', 'Taylor', 100000, 1);
INSERT INTO DEPARTMENT (dept_id, name, building, budget, university_id) VALUES 
(2, 'Mathematics', 'Watson', 90000, 1);
INSERT INTO DEPARTMENT (dept_id, name, building, budget, university_id) VALUES 
(3, 'Physics', 'Newton', 95000, 1);
INSERT INTO DEPARTMENT (dept_id, name, building, budget, university_id) VALUES 
(4, 'Biology', 'Darwin', 85000, 1);
INSERT INTO DEPARTMENT (dept_id, name, building, budget, university_id) VALUES 
(5, 'Chemistry', 'Curie', 92000, 1);
INSERT INTO DEPARTMENT (dept_id, name, building, budget, university_id) VALUES 
(6, 'English', 'Shakespeare', 80000, 1);
INSERT INTO DEPARTMENT (dept_id, name, building, budget, university_id) VALUES 
(7, 'History', 'Roosevelt', 78000, 1);
CREATE TABLE INSTRUCTOR (
    instructor_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    dept_id NUMBER,
    is_hod CHAR(1) DEFAULT 'N' CHECK (is_hod IN ('Y', 'N')),
    salary NUMBER(10, 2),
    CONSTRAINT fk_instructor_dept
        FOREIGN KEY (dept_id)
        REFERENCES DEPARTMENT(dept_id)
);    
INSERT INTO INSTRUCTOR (instructor_id, name, dept_id, is_hod, salary)
VALUES (1, 'John Doe', 1, 'Y', 80000);
INSERT INTO INSTRUCTOR (instructor_id, name, dept_id, is_hod, salary)
VALUES (2, 'Jane Smith', 1, 'N', 75000);
INSERT INTO INSTRUCTOR (instructor_id, name, dept_id, is_hod, salary)
VALUES (3, 'Bob Johnson', 2, 'Y', 82000);
INSERT INTO INSTRUCTOR (instructor_id, name, dept_id, is_hod, salary)
VALUES (4, 'Alice Brown', 2, 'N', 76000);
INSERT INTO INSTRUCTOR (instructor_id, name, dept_id, is_hod, salary)
VALUES (5, 'Charlie Davis', 3, 'Y', 81000);
INSERT INTO INSTRUCTOR (instructor_id, name, dept_id, is_hod, salary)
VALUES (6, 'Eva Wilson', 3, 'N', 77000);
INSERT INTO INSTRUCTOR (instructor_id, name, dept_id, is_hod, salary)
VALUES (7, 'Frank Miller', 4, 'Y', 79000);




CREATE TABLE COURSE (
    course_id VARCHAR(8) PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    dept_id INT,
    credits INT,
    FOREIGN KEY (dept_id) REFERENCES DEPARTMENT(dept_id)
);

INSERT INTO COURSE (course_id, title, dept_id, credits) VALUES 
('CS-101', 'Introduction to Programming', 1, 3);
INSERT INTO COURSE (course_id, title, dept_id, credits) VALUES 
('CS-201', 'Data Structures', 1, 4);
INSERT INTO COURSE (course_id, title, dept_id, credits) VALUES 
('MATH-101', 'Calculus I', 2, 4);
INSERT INTO COURSE (course_id, title, dept_id, credits) VALUES 
('MATH-201', 'Linear Algebra', 2, 3);
INSERT INTO COURSE (course_id, title, dept_id, credits) VALUES 
('PHY-101', 'Mechanics', 3, 4);
INSERT INTO COURSE (course_id, title, dept_id, credits) VALUES 
('PHY-201', 'Quantum Physics', 3, 4);
INSERT INTO COURSE (course_id, title, dept_id, credits) VALUES 
('BIO-101', 'Introduction to Biology', 4, 4);



CREATE TABLE SECTION (
    section_id INT PRIMARY KEY,
    course_id VARCHAR(8),
    sec_id INT,
    semester VARCHAR(6),
    year INT,
    building VARCHAR(50),
    room_number VARCHAR(10),
    time_slot_id VARCHAR(4),
    FOREIGN KEY (course_id) REFERENCES COURSE(course_id)
);

INSERT INTO SECTION (section_id, course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES  (1, 'CS-101', 1, 'Fall', 2023, 'Taylor', '3128', 'A');
INSERT INTO SECTION (section_id, course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES (2, 'CS-201', 1, 'Spring', 2024, 'Taylor', '3114', 'B');
INSERT INTO SECTION (section_id, course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES (3, 'MATH-101', 1, 'Fall', 2023, 'Watson', '2230', 'C');
INSERT INTO SECTION (section_id, course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES (4, 'MATH-201', 1, 'Spring', 2024, 'Watson', '2245', 'D');
INSERT INTO SECTION (section_id, course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES (5, 'PHY-101', 1, 'Fall', 2023, 'Newton', '1320', 'E');
INSERT INTO SECTION (section_id, course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES (6, 'PHY-201', 1, 'Spring', 2024, 'Newton', '1310', 'F');
INSERT INTO SECTION (section_id, course_id, sec_id, semester, year, building, room_number, time_slot_id) VALUES (7, 'BIO-101', 1, 'Fall', 2023, 'Darwin', '2110', 'G');



CREATE TABLE TEACHES (
    instructor_id INT,
    section_id INT,
    PRIMARY KEY (instructor_id, section_id),
    FOREIGN KEY (instructor_id) REFERENCES INSTRUCTOR(instructor_id),
    FOREIGN KEY (section_id) REFERENCES SECTION(section_id)
);
INSERT INTO TEACHES (instructor_id, section_id) VALUES (1, 1);
INSERT INTO TEACHES (instructor_id, section_id) VALUES (2, 2);
INSERT INTO TEACHES (instructor_id, section_id) VALUES (3, 3);
INSERT INTO TEACHES (instructor_id, section_id) VALUES (4, 4);
INSERT INTO TEACHES (instructor_id, section_id) VALUES (5, 5);
INSERT INTO TEACHES (instructor_id, section_id) VALUES (6, 6);
INSERT INTO TEACHES (instructor_id, section_id) VALUES (7, 7);




CREATE TABLE STUDENT (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    tot_cred INT
);
INSERT INTO STUDENT (student_id, name, tot_cred) VALUES (1, 'Mike Johnson', 60);
INSERT INTO STUDENT (student_id, name, tot_cred) VALUES (2, 'Sarah Lee', 45);
INSERT INTO STUDENT (student_id, name, tot_cred) VALUES (3, 'Tom Brown', 30);
INSERT INTO STUDENT (student_id, name, tot_cred) VALUES (4, 'Emily Davis', 75);
INSERT INTO STUDENT (student_id, name, tot_cred) VALUES (5, 'David Wilson', 90);
INSERT INTO STUDENT (student_id, name, tot_cred) VALUES (6, 'Lisa Anderson', 15);
INSERT INTO STUDENT (student_id, name, tot_cred) VALUES (7, 'Chris Taylor', 105);


CREATE TABLE TAKES (
    student_id INT,
    section_id INT,
    grade VARCHAR(2),
    PRIMARY KEY (student_id, section_id),
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
    FOREIGN KEY (section_id) REFERENCES SECTION(section_id)
);




INSERT INTO TAKES (student_id, section_id, grade) VALUES (1, 1, 'A');
INSERT INTO TAKES (student_id, section_id, grade) VALUES  (1, 3, 'B');
INSERT INTO TAKES (student_id, section_id, grade) VALUES (2, 2, 'A');
INSERT INTO TAKES (student_id, section_id, grade) VALUES (2, 4, 'B');
INSERT INTO TAKES (student_id, section_id, grade) VALUES (3, 1, 'B');
INSERT INTO TAKES (student_id, section_id, grade) VALUES  (3, 5, 'A');
INSERT INTO TAKES (student_id, section_id, grade) VALUES (4, 2, 'A'); 
INSERT INTO TAKES (student_id, section_id, grade) VALUES (4, 6, 'B');
INSERT INTO TAKES (student_id, section_id, grade) VALUES (5, 3, 'A');
INSERT INTO TAKES (student_id, section_id, grade) VALUES  (5, 7, 'A');
INSERT INTO TAKES (student_id, section_id, grade) VALUES (6, 4, 'B');
INSERT INTO TAKES (student_id, section_id, grade) VALUES  (6, 1, 'A');
INSERT INTO TAKES (student_id, section_id, grade) VALUES (7, 5, 'A');
INSERT INTO TAKES (student_id, section_id, grade) VALUES  (7, 2, 'B');




CREATE TABLE TIME_SLOT (
    time_slot_id VARCHAR2(4) PRIMARY KEY,
    day CHAR(1),
    start_time DATE,
    end_time DATE
);

INSERT INTO TIME_SLOT (time_slot_id, day, start_time, end_time)
VALUES ('A', 'M', TO_DATE('09:00', 'HH24:MI'), TO_DATE('10:30', 'HH24:MI'));

INSERT INTO TIME_SLOT (time_slot_id, day, start_time, end_time)
VALUES ('B', 'T', TO_DATE('10:30', 'HH24:MI'), TO_DATE('12:00', 'HH24:MI'));

INSERT INTO TIME_SLOT (time_slot_id, day, start_time, end_time)
VALUES ('C', 'W', TO_DATE('13:00', 'HH24:MI'), TO_DATE('14:30', 'HH24:MI'));

INSERT INTO TIME_SLOT (time_slot_id, day, start_time, end_time)
VALUES ('D', 'R', TO_DATE('15:00', 'HH24:MI'), TO_DATE('16:30', 'HH24:MI'));

INSERT INTO TIME_SLOT (time_slot_id, day, start_time, end_time)
VALUES ('E', 'F', TO_DATE('11:00', 'HH24:MI'), TO_DATE('12:30', 'HH24:MI'));

INSERT INTO TIME_SLOT (time_slot_id, day, start_time, end_time)
VALUES ('F', 'M', TO_DATE('14:00', 'HH24:MI'), TO_DATE('15:30', 'HH24:MI'));


CREATE TABLE CLASSROOM (
    building VARCHAR(50),
    room_number VARCHAR(10),
    capacity INT,
    PRIMARY KEY (building, room_number)
);

INSERT INTO CLASSROOM (building, room_number, capacity) VALUES ('Taylor', '3128', 50);
INSERT INTO CLASSROOM (building, room_number, capacity) VALUES ('Taylor', '3114', 40);
INSERT INTO CLASSROOM (building, room_number, capacity) VALUES ('Watson', '2230', 60);
INSERT INTO CLASSROOM (building, room_number, capacity) VALUES ('Watson', '2245', 45);
INSERT INTO CLASSROOM (building, room_number, capacity) VALUES ('Newton', '1320', 55);
INSERT INTO CLASSROOM (building, room_number, capacity) VALUES ('Newton', '1310', 50);
INSERT INTO CLASSROOM (building, room_number, capacity) VALUES ('Darwin', '2110', 40);





DATE-27/01/26

update instructor set salary = salary + salary * .05 where salary < 90000;
INSERT INTO Courses (CourseID, Title, Credits) VALUES ('CS-001', 'Weekly Seminar', 1);

Date-2/2/2026

to create sequence
create sequence st_sq start with 1011 increment by 1;

insert into st_info (prn,name,m1,m2,m3) values(st_sq.nextval,'xa1011',12,13,15);

Create sequence emp_sq start with 1 increment by 1;

create table emp (emp_id int primary key,name varchar2(20));
INSERT INTO EMP VALUES(1, 'Mike',1926834912);
INSERT INTO EMP VALUES(2, 'Gwen',8532785394);
INSERT INTO EMP VALUES(3, 'Elena',);
INSERT INTO EMP VALUES(4, 'Jack');
INSERT INTO EMP VALUES(5, 'Jim');
INSERT INTO EMP VALUES(6, 'Bruce');
INSERT INTO EMP VALUES(7, 'Ryan');
INSERT INTO EMP VALUES(8, 'Justin');
INSERT INTO EMP VALUES(9, 'Alice');
INSERT INTO EMP VALUES(10, 'John');

update emp set NUM=7624957138 where emp_id=1;
update emp set NUM=2492581304 where emp_id=2;
update emp set NUM=0367805601 where emp_id=3;
update emp set NUM=0348512075 where emp_id=4;
update emp set NUM=6904601509 where emp_id=5;


OR

Delete all data using trunket and then reupload it from notepad after adding NUM for each entry.

drop sequence emp_seq;


DATE - 16-2-26

Employees Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10, 2),
    manager_id INT
);

Departments Table
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

Projects Table
CREATE TABLE Projects (
    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(50),
    dept_id INT
);



Assignments Table
CREATE TABLE Assignments (
    emp_id INT,
    proj_id INT,
    hours_worked INT,
    PRIMARY KEY (emp_id, proj_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (proj_id) REFERENCES Projects(proj_id)
);

Populate Tables with Sample Data

Employees Table Data
INSERT INTO Employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES (1, 'John', 101, 5000.00, NULL);
INSERT INTO Employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES (2, 'Alice', 102, 3000.00, 1);
INSERT INTO Employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES (3, 'Robert', 101, 4000.00, 1);
INSERT INTO Employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES (4, 'Michael', 103, 7000.00, NULL);
INSERT INTO Employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES (5, 'Susan', 102, 3500.00, 2);
INSERT INTO Employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES (6, 'Nancy', 104, 4200.00, NULL);
INSERT INTO Employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES (7, 'David', 103, 3900.00, 4);
INSERT INTO Employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES (8, 'Laura', 101, 5200.00, 3);

Departments Table Data
INSERT INTO Departments (dept_id, dept_name, location) VALUES (101, 'Finance', 'New York');
INSERT INTO Departments (dept_id, dept_name, location) VALUES (102, 'HR', 'Chicago');
INSERT INTO Departments (dept_id, dept_name, location) VALUES (103, 'IT', 'Dallas');
INSERT INTO Departments (dept_id, dept_name, location) VALUES (104, 'Marketing', 'San Francisco');

Projects Table Data
INSERT INTO Projects (proj_id, proj_name, dept_id) VALUES (201, 'Project A', 101);
INSERT INTO Projects (proj_id, proj_name, dept_id) VALUES (202, 'Project B', 103);
INSERT INTO Projects (proj_id, proj_name, dept_id) VALUES (203, 'Project C', 102);
INSERT INTO Projects (proj_id, proj_name, dept_id) VALUES (204, 'Project D', 104);

Assignments Table Data
INSERT INTO Assignments (emp_id, proj_id, hours_worked) VALUES (1, 201, 30);
INSERT INTO Assignments (emp_id, proj_id, hours_worked) VALUES (2, 203, 40);
INSERT INTO Assignments (emp_id, proj_id, hours_worked) VALUES (3, 201, 20);
INSERT INTO Assignments (emp_id, proj_id, hours_worked) VALUES (4, 202, 50);
INSERT INTO Assignments (emp_id, proj_id, hours_worked) VALUES (5, 203, 35);
INSERT INTO Assignments (emp_id, proj_id, hours_worked) VALUES (6, 204, 25);
INSERT INTO Assignments (emp_id, proj_id, hours_worked) VALUES (7, 202, 45);

DATE-9-3-26

 CREATE OR REPLACE PROCEDURE sumfirst10numbers_whileloop AS
  2     i NUMBER := 1;
  3     sum1 NUMBER := 0;
  4  BEGIN
  5     WHILE i <= 10 LOOP
  6        sum1 := sum1 + i;
  7        i := i + 1;
  8     END LOOP;
  9
 10     DBMS_OUTPUT.PUT_LINE('Result of Sum: ' || sum1);
 11  END;
 12  /

i NUMBER := 1;

       sum1 NUMBER := 0;

    BEGIN

       WHILE i != 10 LOOP

          sum1 := sum1 + i;

          i := i + 1;

&nbsp;	  exit when i=n;

       END LOOP;

 

      DBMS\_OUTPUT.PUT\_LINE('Result of Sum: ' || sum1);

   END;

**EXEC result\_proc;**
----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
DATE - 10-3-26
-------------------------------------------------------------------------------------------------------
DATE - 10-3-26

CREATE TABLE st_info (
    roll NUMBER,
    name VARCHAR2(30),
    sub1 NUMBER,
    sub2 NUMBER,
    sub3 NUMBER,
    sub4 NUMBER,
    total NUMBER,
    perc NUMBER(5,2),
    result VARCHAR2(10)
);


INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (1,'Amit',75,68,70,80,NULL,NULL,NULL);

INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (2,'Rahul',60,65,58,72,NULL,NULL,NULL);

INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (3,'Priya',82,78,85,80,NULL,NULL,NULL);

INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (4,'Neha',55,60,62,58,NULL,NULL,NULL);

INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (5,'Rohit',45,50,48,52,NULL,NULL,NULL);

INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (6,'Anita',90,88,92,85,NULL,NULL,NULL);

INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (7,'Karan',70,72,68,75,NULL,NULL,NULL);

INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (8,'Sneha',65,60,67,63,NULL,NULL,NULL);

INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (9,'Vikas',50,55,60,58,NULL,NULL,NULL);

INSERT INTO st_info (roll, name, sub1, sub2, sub3, sub4, total, perc, result)
VALUES (10,'Pooja',78,82,80,76,NULL,NULL,NULL);


CREATE A PROCEDURE TO DESPLAY THE CONTENT OF THE TABLE:ST_INFO

create or replace procedure show_st(rno number) 
as

s_roll st_info.roll%type;
s_name st_info.name%type;
s_sub1 st_info.sub1%type;
s_sub2 st_info.sub2%type;
s_sub3 st_info.sub3%type;
s_sub4 st_info.sub4%type;

begin
select roll, name, sub1, sub2, sub3, sub4 into s_roll, s_name, s_sub1, s_sub2, s_sub3, s_sub4 from st_info where roll = rno;

dbms_output.put_line('Roll no : ' || s_roll);
dbms_output.put_line('Name of the Students : ' || s_name);
dbms_output.put_line('Marks of Sub1: ' || s_sub1);
dbms_output.put_line('Marks of Sub2: ' || s_sub2);
dbms_output.put_line('Marks of Sub3: ' || s_sub3);
dbms_output.put_line('Marks of Sub4: ' || s_sub4);
end;
/

-------------------------------------------------------

CREATE OR REPLACE PROCEDURE show_st(rno NUMBER)
AS
    s_roll st_info.roll%TYPE;
    s_name st_info.name%TYPE;
    s_sub1 st_info.sub1%TYPE;
    s_sub2 st_info.sub2%TYPE;
    s_sub3 st_info.sub3%TYPE;
    s_sub4 st_info.sub4%TYPE;
    total_marks NUMBER;
BEGIN
    SELECT roll, name, sub1, sub2, sub3, sub4
    INTO s_roll, s_name, s_sub1, s_sub2, s_sub3, s_sub4
    FROM st_info
    WHERE roll = rno;

    total_marks := s_sub1 + s_sub2 + s_sub3 + s_sub4;

    DBMS_OUTPUT.PUT_LINE('Roll no : ' || s_roll);
    DBMS_OUTPUT.PUT_LINE('Name of the Student : ' || s_name);
    DBMS_OUTPUT.PUT_LINE('Marks of Sub1: ' || s_sub1);
    DBMS_OUTPUT.PUT_LINE('Marks of Sub2: ' || s_sub2);
    DBMS_OUTPUT.PUT_LINE('Marks of Sub3: ' || s_sub3);
    DBMS_OUTPUT.PUT_LINE('Marks of Sub4: ' || s_sub4);
    DBMS_OUTPUT.PUT_LINE('Total Marks : ' || total_marks);
END;
/


CREATE OR REPLACE PROCEDURE show_st(rno NUMBER)
AS
    s_roll st_info.roll%TYPE;
    s_name st_info.name%TYPE;
    s_sub1 st_info.sub1%TYPE;
    s_sub2 st_info.sub2%TYPE;
    s_sub3 st_info.sub3%TYPE;
    s_sub4 st_info.sub4%TYPE;
    total_marks NUMBER;
BEGIN
    SELECT roll, name, sub1, sub2, sub3, sub4
    INTO s_roll, s_name, s_sub1, s_sub2, s_sub3, s_sub4
    FROM st_info
    WHERE roll = rno;

    total_marks := s_sub1 + s_sub2 + s_sub3 + s_sub4;

    DBMS_OUTPUT.PUT_LINE('Roll no : ' || s_roll);
    DBMS_OUTPUT.PUT_LINE('Name of the Student : ' || s_name);
    DBMS_OUTPUT.PUT_LINE('Marks of Sub1: ' || s_sub1);
    DBMS_OUTPUT.PUT_LINE('Marks of Sub2: ' || s_sub2);
    DBMS_OUTPUT.PUT_LINE('Marks of Sub3: ' || s_sub3);
    DBMS_OUTPUT.PUT_LINE('Marks of Sub4: ' || s_sub4);
    DBMS_OUTPUT.PUT_LINE('Total Marks : ' || total_marks);
END;
/

-----------------------------------------------------------
CREATE OR REPLACE PROCEDURE show_st(rno IN st_info.roll%TYPE)
AS
   s_sub1 st_info.sub1%TYPE;
   s_sub2 st_info.sub2%TYPE;
   s_sub3 st_info.sub3%TYPE;
   s_sub4 st_info.sub4%TYPE;

   v_total NUMBER;
   v_per   NUMBER;
   v_res   VARCHAR2(10);

BEGIN
   SELECT sub1, sub2, sub3, sub4
   INTO s_sub1, s_sub2, s_sub3, s_sub4
   FROM st_info
   WHERE roll = rno;

   v_total := s_sub1 + s_sub2 + s_sub3 + s_sub4;
   v_per := v_total / 4;

   IF s_sub1 >= 40 AND s_sub2 >= 40 AND s_sub3 >= 40 AND s_sub4 >= 40 THEN
      v_res := 'PASS';
   ELSE
      v_res := 'FAIL';
   END IF;

   UPDATE st_info
   SET total = v_total,
       perc = v_per,
       result = v_res
   WHERE roll = rno;
END;
/

exec show_st(7);

select * from st_info;







