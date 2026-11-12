SELECT a.status, COUNT(*) AS appointment_count
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Central Hospital'
GROUP BY a.status;
