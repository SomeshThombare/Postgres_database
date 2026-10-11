CREATE TABLE basics.student (
    -- basics is the schema
    -- student is the table
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email VARCHAR(255) UNIQUE,
    age INT NOT NULL
);