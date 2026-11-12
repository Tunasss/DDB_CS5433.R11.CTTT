SELECT p.patient_id, a.appointment_id, a.appointment_date
FROM patients p JOIN appointments a ON a.patient_id = p.patient_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Southside Clinic'
ORDER BY a.appointment_date;
