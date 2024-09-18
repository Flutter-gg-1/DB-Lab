# Hospital Database System Lab

## ERD (Entity-Relationship Diagram)
**Please Note:** The following diagram is for illustrative purposes only and may not accurately represent the relationships between the entities. Please refer to the instructions below to understand the relationships between the tables.

```
+-------------------+          +-------------------+
|     Patient       |          |     Doctor        |
+-------------------+          +-------------------+
| PatientID (PK)    | <------> | DoctorID (PK)     |
| Name              |          | Name              |
| DateOfBirth       |          | Specialization    |
| Gender            |          |                   |
| Address           |          |                   |
| Phone             |          |                   |
| Email             |          |                   |
+-------------------+          +-------------------+
      |       ^                         |
      |       |                         |
      |       |                         |
      v       |                         v
+-------------------+          +-------------------+
|   MedicalRecord   |          |    Appointment    |
+-------------------+          +-------------------+
| RecordID (PK)     |          | AppointmentID (PK)|
| PatientID (FK)    |          | PatientID (FK)    |
| DoctorID (FK)     |          | DoctorID (FK)     |
| Date              |          | Date              |
| Diagnosis         |          | Time              |
| Treatment         |          | Purpose           |
| Notes             |          +-------------------+
+-------------------+                              
      |       |                                    
      |       |                                    
      |       |                                    
      v       v                                    
+-------------------+                               
|   Prescription    |                               
+-------------------+                               
| PrescriptionID(PK)|                               
| PatientID (FK)    |                               
| DoctorID (FK)     |                               
| Medication        |                               
| Dosage            |                               
+-------------------+                               
```
**Table Relationships:**
- Patients have medical records and prescriptions.
- Doctors have appointments and prescriptions.
- Appointments link patients and doctors.
- Medical records link patients and doctors.
- Prescriptions link patients and doctors.

**Additional Relationship Details:**
- The **Patient** entity and the **Doctor** entity have a many-to-one relationship, meaning many patients can be associated with one doctor.
- Each **MedicalRecord**, **Appointment**, and **Prescription** has a foreign key referencing the **Patient** entity (PatientID), indicating which patient it belongs to.
- Each **MedicalRecord**, **Appointment**, and **Prescription** also has a foreign key referencing the **Doctor** entity (DoctorID), indicating which doctor is responsible for that particular record, appointment, or prescription.
