SELECT b.bill_id, b.bill_date, b.amount, b.payment_status
FROM billing b JOIN treatments t ON t.treatment_id = b.treatment_id
JOIN appointments a ON a.appointment_id = t.appointment_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Central Hospital' AND b.payment_status = 'Pending';
