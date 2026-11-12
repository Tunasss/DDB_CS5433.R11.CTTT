SELECT a.appointment_id, t.treatment_type, t.treatment_date, t.cost
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
JOIN treatments t ON t.appointment_id = a.appointment_id
WHERE d.hospital_branch = 'Central Hospital' AND a.status = 'Completed';
