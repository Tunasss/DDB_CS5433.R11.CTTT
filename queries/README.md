# Query workload for vertical fragmentation

Contains 70 simple Oracle `SELECT` queries, with one query per `.sql` file:

- `central_hospital/` — 10 queries (site 1)
- `eastside_clinic/` — 15 queries (site 2)
- `westside_clinic/` — 20 queries (site 3)
- `southside_clinic/` — 25 queries (site 4)

Each file contains exactly one query. Queries access the site's doctors
directly or filter related records through `doctors.hospital_branch`.
Southside queries use the sample records added for that clinic.

For a binary query-attribute usage matrix, count an attribute once per query
if it appears in `SELECT`, `WHERE`, or `JOIN`. Use the containing site folder
as the workload source for per-site access frequencies and the BEA affinity
matrix.

Run the query files after creating the tables and loading seed data. They are
read-only and do not modify database contents.
