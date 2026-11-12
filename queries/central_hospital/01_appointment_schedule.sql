SELECT a.appointment_id, a.appointment_date, a.appointment_time, a.status
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Central Hospital'
ORDER BY a.appointment_date, a.appointment_time;
