SELECT a.appointment_id, a.appointment_date, a.appointment_time,
       a.reason_for_visit, a.status
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Southside Clinic'
  AND a.appointment_date >= DATE '2024-01-01'
ORDER BY a.appointment_date;
