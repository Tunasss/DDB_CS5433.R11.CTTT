SELECT a.appointment_id, a.appointment_date, a.appointment_time,
       a.status, a.reason_for_visit
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Westside Clinic'
ORDER BY a.appointment_date;
