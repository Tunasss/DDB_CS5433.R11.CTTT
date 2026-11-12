SELECT a.appointment_id, a.status, a.appointment_date
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Southside Clinic';
