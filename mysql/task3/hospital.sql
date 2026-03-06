CREATE DATABASE hospital;
USE hospital;

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    doc_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    dept_id INT NOT NULL
);
ALTER TABLE Doctors
ADD FOREIGN KEY (dept_id) REFERENCES Departments (dept_id);
INSERT INTO Doctors (doctor_id, doc_name, specialization, dept_id) VALUES
(101, 'Dr. Ahmed Ali', 'Cardiologist', 1),
(102, 'Dr. Sara Naguib', 'Neurologist', 2),
(103, 'Dr. Omar Youssef', 'Orthopedic', 3);


CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL,
    head_doc_id INT
);

ALTER TABLE Departments
ADD FOREIGN KEY (head_doc_id) REFERENCES Doctors (doctor_id);

INSERT INTO Departments (dept_id, dept_name) VALUES
(1, 'Cardiology'),
(2, 'Neurology'),
(3, 'Orthopedics');


CREATE TABLE Patients (
    pat_id INT PRIMARY KEY,
    pat_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    dateOfBirth DATE
);

INSERT INTO Patients (pat_id, pat_name, phone_number, dateOfBirth) VALUES
(201, 'Mohamed Hassan', '01123456789', '1985-06-15'),
(202, 'Fatma Salah', '01234567890', '1990-09-22'),
(203, 'Ali Ahmed', '01098765432', '2000-01-30');

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    doctor_id INT NOT NULL,
    pat_id INT NOT NULL,
    appointment_date DATE,
    diagnosis VARCHAR(255),
    fee DECIMAL(10,2),
    CONSTRAINT FK_App_Doctor FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    CONSTRAINT FK_App_Patient FOREIGN KEY (pat_id) REFERENCES Patients(pat_id)
);

INSERT INTO Appointments (appointment_id, doctor_id, pat_id, appointment_date, diagnosis, fee) VALUES
(301, 101, 201, '2026-03-10', 'High Blood Pressure', 200.00),
(302, 102, 202, '2026-03-11', 'Migraine', 150.00),
(303, 103, 203, '2026-03-12', 'Knee Pain', 180.00),
(304, 101, 202, '2026-03-13', 'Heart Checkup', 250.00);

SELECT d.dept_id, d.dept_name, doc.doc_name AS head_doctor
FROM Departments d
LEFT JOIN Doctors doc ON d.head_doc_id = doc.doctor_id;

SELECT doctors.doc_name, SUM(Appointments.fee)
FROM doctors INNER JOIN  Appointments
on doctors.doctor_id = Appointments.doctor_id
GROUP BY doctors.doc_name;

SELECT  AVG(a.fee) AS avg_fee
FROM Doctors doc
INNER JOIN Departments d
    ON doc.dept_id = d.dept_id
INNER JOIN Appointments a
    ON doc.doctor_id = a.doctor_id
WHERE d.dept_name = 'Cardiology';