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

## Part 4: Test it with SQL