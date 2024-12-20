CREATE DATABASE hospital_management;

USE hospital_management;


-- Departments: (DepartmentID, Name, and Location.)
CREATE Table departments(
    department_id INT PRIMARY KEY,
    name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments
(department_id,name,location)
VALUES
(101, 'Cardiology', 'Dhaka Medical College Hospital'),
(102, 'Dermatology', 'Bangabandhu Sheikh Mujib Medical University'),
(103, 'Neurology', 'National Institute of Traumatology and Orthopedic Rehabilitation'),
(104, 'Dermatology', 'Shishu Hospital, Dhaka'),
(105, 'Cardiology', 'Chittagong Medical College Hospital'),
(106, 'Gynecology', 'Sir Salimullah Medical College and Mitford Hospital'),
(107, 'Neurology', 'National Institute of Neurosciences and Hospital, Dhaka'),
(108, 'Cardiology', 'National Institute of Cancer Research & Hospital, Mohakhali'),
(109, 'Dermatology', 'Shaheed Suhrawardy Medical College Hospital'),
(111, 'Neurology', 'Pabna Mental Hospital');



-- Doctors: (DoctorID, Name, Specialization, Phone.)
CREATE Table doctors(
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialization VARCHAR(50),
    phone VARCHAR(15),
    dept_id INT,
    Foreign Key (dept_id) REFERENCES departments(department_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO doctors
(doctor_id,name,specialization,phone,dept_id)
VALUES
(200129, 'Dr. Md. Ruhul Amin', 'Cardiologist', '01712345678', 101),
(200130, 'Dr. Fatema Khatun', 'Dermatologist', '01712345679', 102),
(200131, 'Dr. Habibullah Chowdhury', 'Neurologist', '01712345680', 103),
(200132, 'Dr. Anika Sultana', 'Dermatologist', '01712345681', 104),
(200133, 'Dr. Kamrul Hasan', 'Cardiologist', '01712345682', 105),
(200134, 'Dr. Sharmin Akter', 'Gynecologist', '01712345683', 106),
(200135, 'Dr. Abdur Rahman', 'Neurologist', '01712345684', 107),
(200136, 'Dr. Tamanna Islam', 'Cardiologist', '01712345685', 108),
(200137, 'Dr. Mizanur Rahman', 'Dermatologist', '01712345686', 109),
(200138, 'Dr. Rashed Karim', 'Neurologist', '01712345687', 111);


-- SELECT doctors.name,departments.location,doctors.phone,
-- departments.name,doctors.specialization
-- FROM doctors INNER JOIN departments
-- ON departments.department_id = doctors.dept_id;



-- Patients: (PatientID, Name, Age, Gender, Phone.)
CREATE Table patients(
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    age VARCHAR(3),
    gender VARCHAR(10),
    phone VARCHAR(15)
);

INSERT INTO patients
(patient_id,name,age,gender,phone)
VALUES
(201, 'Md. Ashraful Alam', 45, 'Male', '01722334455'),
(202, 'Sharmin Sultana', 32, 'Female', '01733445566'),
(203, 'Habibur Rahman', 60, 'Male', '01744556677'),
(204, 'Nazma Begum', 25, 'Female', '01755667788'),
(205, 'Jahidul Islam', 40, 'Male', '01766778899'),
(206, 'Shamsunnahar Akter', 29, 'Female', '01777889900'),
(207, 'Abdul Karim', 55, 'Male', '01788990011'),
(208, 'Farhana Haque', 38, 'Female', '01799001122'),
(209, 'Kamal Hossain', 47, 'Male', '01812345678'),
(211, 'Rubina Yasmin', 34, 'Female', '01823456789');


-- Appointments (AppointmentID, Date, Time, Status.)
CREATE Table appoinments(
    appointment_id INT PRIMARY KEY,
    date DATE,
    time TIME,
    status VARCHAR(20),
    doc_id INT,
    pat_id INT,
    Foreign Key (doc_id) REFERENCES doctors(doctor_id),
    Foreign Key (pat_id) REFERENCES patients(patient_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO appoinments
(appointment_id,date,time,status,doc_id,pat_id)
VALUES
(301, '2024-12-21', '10:00:00', 'Scheduled', 200129, 201),
(302, '2024-12-21', '11:00:00', 'Completed', 200130, 202),
(303, '2024-12-22', '09:30:00', 'Scheduled', 200131, 203),
(304, '2024-12-22', '14:00:00', 'Scheduled', 200132, 204),
(305, '2024-12-23', '08:30:00', 'Completed', 200133, 205),
(306, '2024-12-23', '12:30:00', 'Scheduled', 200134, 206),
(307, '2024-12-24', '10:30:00', 'Scheduled', 200135, 207),
(308, '2024-12-24', '15:00:00', 'Completed', 200136, 208),
(309, '2024-12-25', '11:30:00', 'Scheduled', 200137, 209),
(311, '2024-12-25', '16:00:00', 'Completed', 200138, 211),
(312, '2024-12-26', '09:00:00', 'Scheduled', 200129, 201),
(313, '2024-12-26', '10:30:00', 'Completed', 200130, 202),
(314, '2024-12-27', '11:00:00', 'Scheduled', 200131, 203),
(315, '2024-12-27', '13:00:00', 'Completed', 200132, 204),
(316, '2024-12-28', '08:00:00', 'Scheduled', 200133, 205),
(317, '2024-12-28', '12:00:00', 'Scheduled', 200134, 206),
(318, '2024-12-29', '09:30:00', 'Completed', 200135, 207),
(319, '2024-12-29', '14:00:00', 'Scheduled', 200136, 208),
(320, '2024-12-30', '10:00:00', 'Completed', 200137, 209),
(321, '2024-12-30', '15:30:00', 'Scheduled', 200138, 211);




-- Show Data From All Table Using INNER JOIN
SELECT 
doctors.name as Doctor,
departments.name as Department,
departments.location as Address,
patients.name as Patient,
appoinments.date as Date,
appoinments.time as Time,
appoinments.status as Status
FROM doctors INNER JOIN departments INNER JOIN appoinments INNER JOIN patients
ON departments.department_id = doctors.dept_id
AND doctors.doctor_id = appoinments.doc_id
AND patients.patient_id = appoinments.pat_id;


-- Show only the next appoinments
SELECT 
doctors.name as Doctor,
departments.name as Department,
departments.location as Address,
patients.name as Patient,
appoinments.date as Date,
appoinments.time as Time,
appoinments.status as Status
FROM doctors INNER JOIN departments INNER JOIN appoinments INNER JOIN patients
ON departments.department_id = doctors.dept_id
AND doctors.doctor_id = appoinments.doc_id
AND patients.patient_id = appoinments.pat_id
WHERE appoinments.status='Scheduled'
ORDER BY appoinments.time ASC;






