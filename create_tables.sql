-- 1. Create Departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
-- 2. Create Students
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    email VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
-- 3. Create Courses
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);
-- 4. Create Faculty
CREATE TABLE faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- 5. Course_Faculty (Many-to-many)
CREATE TABLE course_faculty (
    course_id INT,
    faculty_id INT,
    semester INT,
    PRIMARY KEY (course_id, faculty_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id)
);
-- 6. Enrollments (Students enrolled in courses)
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    semester INT,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
