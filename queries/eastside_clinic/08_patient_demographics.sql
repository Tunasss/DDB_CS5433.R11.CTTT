SELECT DISTINCT p.patient_id, p.gender, p.date_of_birth
FROM patients p JOIN appointments a ON a.patient_id = p.patient_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Eastside Clinic';
