CREATE SCHEMA IF NOT EXISTS basics;
CRATE EXTENSION IF NOT EXISTS pgcrypto;

select schema_name
from information_schema.schemata
order by schema_name;