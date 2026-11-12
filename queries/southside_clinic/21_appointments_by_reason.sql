SELECT a.reason_for_visit, COUNT(*) AS appointment_count
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Southside Clinic'
GROUP BY a.reason_for_visit;
