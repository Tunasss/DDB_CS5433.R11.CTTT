SELECT a.appointment_id, a.appointment_date, a.reason_for_visit, a.patient_id
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Eastside Clinic' AND a.status = 'Completed';
