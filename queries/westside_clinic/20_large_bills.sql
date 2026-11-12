SELECT b.bill_id, b.patient_id, b.treatment_id, b.amount
FROM billing b JOIN treatments t ON t.treatment_id = b.treatment_id
JOIN appointments a ON a.appointment_id = t.appointment_id
JOIN doctors d ON d.doctor_id = a.doctor_id
WHERE d.hospital_branch = 'Westside Clinic' AND b.amount > 3000;
