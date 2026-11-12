SELECT d.doctor_id, d.first_name, d.last_name, a.appointment_date, a.appointment_time
FROM doctors d JOIN appointments a ON a.doctor_id = d.doctor_id
WHERE d.hospital_branch = 'Southside Clinic' AND a.status = 'Scheduled';
