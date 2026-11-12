SELECT doctor_id, specialization, years_experience, email
FROM doctors
WHERE hospital_branch = 'Eastside Clinic'
ORDER BY years_experience DESC;
