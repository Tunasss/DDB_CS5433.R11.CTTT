SELECT b.payment_status, COUNT(*) AS bill_count, SUM(b.amount) AS total_amount
FROM billing b JOIN treatments t ON t.treatment_id = b.treatment_id
JOIN appointments a ON a.appointment_id = t.appointment_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Southside Clinic'
GROUP BY b.payment_status;
