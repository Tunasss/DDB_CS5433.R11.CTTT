SELECT a.appointment_id, p.first_name, p.last_name, p.contact_number
FROM appointments a JOIN doctors d ON d.doctor_id = a.doctor_id
JOIN patients p ON p.patient_id = a.patient_id
WHERE d.hospital_branch = 'Central Hospital' AND a.status = 'No-show';
