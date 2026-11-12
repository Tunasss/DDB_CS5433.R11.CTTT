SELECT a.appointment_id, a.appointment_date, a.appointment_time, a.status
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Westside Clinic'
  AND a.appointment_date >= DATE '2023-03-01'
  AND a.appointment_date < DATE '2023-06-01';
