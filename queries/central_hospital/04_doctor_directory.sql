SELECT doctor_id, first_name, last_name, specialization, phone_number
FROM doctors
WHERE hospital_branch = 'Central Hospital'
ORDER BY last_name;
