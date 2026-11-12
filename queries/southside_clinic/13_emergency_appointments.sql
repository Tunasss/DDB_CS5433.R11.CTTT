SELECT a.appointment_id, a.appointment_date, a.appointment_time, a.patient_id
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Southside Clinic' AND a.reason_for_visit = 'Emergency';
