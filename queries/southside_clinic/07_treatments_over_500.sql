SELECT t.treatment_id, t.treatment_type, t.cost, t.treatment_date
FROM treatments t JOIN appointments a ON a.appointment_id = t.appointment_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Southside Clinic' AND t.cost > 500;
