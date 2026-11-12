SELECT t.treatment_id, t.treatment_type, t.cost
FROM treatments t JOIN appointments a ON a.appointment_id = t.appointment_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Westside Clinic' AND t.cost > 1000;
