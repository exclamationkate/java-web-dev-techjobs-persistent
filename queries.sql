## Part 1: Test it with SQL

--Shows each column's field, type, null, key, default, extra.

SHOW FIELDS from job;

describe job;

--Shows only the information we want: column_name and data_type.

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'techjobs' AND table_name  = 'job';

## Part 2: Test it with SQL

--List the names of the employers in St. Louis city.

SELECT name
FROM employer
WHERE location = "St. Louis";

## Part 3: Test it with SQL

--Remove the job table.

DROP TABLE job;

## Part 4: Test it with SQL

--Return a list of the names and descriptions of all skills that
--are attached to jobs in alphabetical order. If a skill does not have
--a job listed, it should not be included in the results of this query.

SELECT DISTINCT name, description
FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
ORDER BY name;