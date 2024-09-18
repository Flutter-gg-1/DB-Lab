

--
--
-- Table: Patient
--
--
CREATE TABLE Patient (
    PatientID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255)
);


--
--
-- Table: Doctor
--
--
CREATE TABLE Doctor (
    DoctorID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Specialization VARCHAR(255) NOT NULL
);


--
--
-- Table: MedicalRecord
--
--
CREATE TABLE MedicalRecord (
    RecordID SERIAL PRIMARY KEY,
    PatientID INT REFERENCES Patient(PatientID) ON DELETE CASCADE,
    DoctorID INT REFERENCES Doctor(DoctorID) ON DELETE CASCADE,
    Date DATE NOT NULL,
    Diagnosis TEXT,
    Treatment TEXT,
    Notes TEXT
);


--
--
-- Table: Appointment
--
--
CREATE TABLE Appointment (
    AppointmentID SERIAL PRIMARY KEY,
    PatientID INT REFERENCES Patient(PatientID) ON DELETE CASCADE,
    DoctorID INT REFERENCES Doctor(DoctorID) ON DELETE CASCADE,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Purpose TEXT
);


--
--
-- Table: Prescription
--
--
CREATE TABLE Prescription (
    PrescriptionID SERIAL PRIMARY KEY,
    PatientID INT REFERENCES Patient(PatientID) ON DELETE CASCADE,
    DoctorID INT REFERENCES Doctor(DoctorID) ON DELETE CASCADE,
    Medication VARCHAR(255) NOT NULL,
    Dosage VARCHAR(50)
);