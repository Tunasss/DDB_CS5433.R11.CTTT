SELECT b.bill_id, b.amount, b.payment_status, p.insurance_provider
FROM billing b JOIN patients p ON p.patient_id = b.patient_id
JOIN treatments t ON t.treatment_id = b.treatment_id
JOIN appointments a ON a.appointment_id = t.appointment_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Central Hospital' AND b.payment_method = 'Insurance';
