CREATE TABLE patients (
    patient_id VARCHAR2(4 CHAR) CONSTRAINT pk_patients PRIMARY KEY,
    first_name VARCHAR2(50 CHAR) NOT NULL,
    last_name VARCHAR2(50 CHAR) NOT NULL,
    gender VARCHAR2(1 CHAR) NOT NULL CONSTRAINT ck_patients_gender CHECK (gender IN ('F', 'M')),
    date_of_birth DATE NOT NULL,
    contact_number VARCHAR2(20 CHAR) NOT NULL,
    address VARCHAR2(150 CHAR) NOT NULL,
    registration_date DATE NOT NULL,
    insurance_provider VARCHAR2(80 CHAR) NOT NULL,
    insurance_number VARCHAR2(30 CHAR) NOT NULL,
    email VARCHAR2(120 CHAR) NOT NULL
);

CREATE TABLE doctors (
    doctor_id VARCHAR2(4 CHAR) CONSTRAINT pk_doctors PRIMARY KEY,
    first_name VARCHAR2(50 CHAR) NOT NULL,
    last_name VARCHAR2(50 CHAR) NOT NULL,
    specialization VARCHAR2(60 CHAR) NOT NULL,
    phone_number VARCHAR2(20 CHAR) NOT NULL,
    years_experience NUMBER(3) NOT NULL CONSTRAINT ck_doctors_experience CHECK (years_experience >= 0),
    hospital_branch VARCHAR2(80 CHAR) NOT NULL,
    email VARCHAR2(120 CHAR) NOT NULL
);

CREATE TABLE appointments (
    appointment_id VARCHAR2(4 CHAR) CONSTRAINT pk_appointments PRIMARY KEY,
    patient_id VARCHAR2(4 CHAR) NOT NULL,
    doctor_id VARCHAR2(4 CHAR) NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time VARCHAR2(8 CHAR) NOT NULL,
    reason_for_visit VARCHAR2(40 CHAR) NOT NULL,
    status VARCHAR2(20 CHAR) NOT NULL CONSTRAINT ck_appointments_status CHECK (status IN ('Scheduled', 'No-show', 'Cancelled', 'Completed')),
    CONSTRAINT fk_appointments_patient FOREIGN KEY (patient_id) REFERENCES patients (patient_id),
    CONSTRAINT fk_appointments_doctor FOREIGN KEY (doctor_id) REFERENCES doctors (doctor_id)
);

CREATE TABLE treatments (
    treatment_id VARCHAR2(4 CHAR) CONSTRAINT pk_treatments PRIMARY KEY,
    appointment_id VARCHAR2(4 CHAR) NOT NULL CONSTRAINT uq_treatments_appointment UNIQUE,
    treatment_type VARCHAR2(50 CHAR) NOT NULL,
    description VARCHAR2(100 CHAR) NOT NULL,
    cost NUMBER(10, 2) NOT NULL CONSTRAINT ck_treatments_cost CHECK (cost >= 0),
    treatment_date DATE NOT NULL,
    CONSTRAINT fk_treatments_appointment FOREIGN KEY (appointment_id) REFERENCES appointments (appointment_id)
);

CREATE TABLE billing (
    bill_id VARCHAR2(4 CHAR) CONSTRAINT pk_billing PRIMARY KEY,
    patient_id VARCHAR2(4 CHAR) NOT NULL,
    treatment_id VARCHAR2(4 CHAR) NOT NULL CONSTRAINT uq_billing_treatment UNIQUE,
    bill_date DATE NOT NULL,
    amount NUMBER(10, 2) NOT NULL CONSTRAINT ck_billing_amount CHECK (amount >= 0),
    payment_method VARCHAR2(20 CHAR) NOT NULL CONSTRAINT ck_billing_method CHECK (payment_method IN ('Insurance', 'Credit Card', 'Cash')),
    payment_status VARCHAR2(20 CHAR) NOT NULL CONSTRAINT ck_billing_status CHECK (payment_status IN ('Pending', 'Paid', 'Failed')),
    CONSTRAINT fk_billing_patient FOREIGN KEY (patient_id) REFERENCES patients (patient_id),
    CONSTRAINT fk_billing_treatment FOREIGN KEY (treatment_id) REFERENCES treatments (treatment_id)
);
