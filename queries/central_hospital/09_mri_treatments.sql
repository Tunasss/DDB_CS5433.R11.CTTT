SELECT t.treatment_id, t.appointment_id, t.cost, t.treatment_date
FROM treatments t JOIN appointments a ON a.appointment_id = t.appointment_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Central Hospital' AND t.treatment_type = 'MRI';
