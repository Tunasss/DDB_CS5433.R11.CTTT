SELECT p.patient_id, p.first_name, p.last_name,
       t.treatment_type, t.treatment_date, t.cost
FROM patients p JOIN appointments a ON a.patient_id = p.patient_id
JOIN doctors d ON d.doctor_id = a.doctor_id
JOIN treatments t ON t.appointment_id = a.appointment_id
WHERE d.hospital_branch = 'Southside Clinic';
