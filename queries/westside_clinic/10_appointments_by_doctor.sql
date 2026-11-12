SELECT d.doctor_id, d.first_name, d.last_name, COUNT(a.appointment_id) AS appointment_count
FROM doctors d LEFT JOIN appointments a ON a.doctor_id = d.doctor_id
WHERE d.hospital_branch = 'Westside Clinic'
GROUP BY d.doctor_id, d.first_name, d.last_name;
