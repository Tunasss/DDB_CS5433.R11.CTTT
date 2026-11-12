SELECT DISTINCT p.patient_id, p.first_name, p.last_name, p.email
FROM patients p JOIN appointments a ON a.patient_id = p.patient_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Westside Clinic' AND a.status = 'Completed';
