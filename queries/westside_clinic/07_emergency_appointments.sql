SELECT a.appointment_id, a.appointment_date, p.first_name, p.last_name, p.contact_number
FROM appointments a JOIN patients p ON p.patient_id = a.patient_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Westside Clinic' AND a.reason_for_visit = 'Emergency';
