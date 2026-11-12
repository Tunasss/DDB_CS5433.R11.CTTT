SELECT a.appointment_id, a.appointment_date, a.patient_id, a.status
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Westside Clinic' AND a.reason_for_visit = 'Follow-up';
