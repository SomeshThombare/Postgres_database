-- DROP TABLE IF EXISTS basics.accounts;

-- CREATE TABLE basics.accounts(
--     id SERIAL PRIMARY KEY,
--     full_name TEXT NOT NULL,
--     email TEXT NOT NULL UNIQUE,
--     is_active BOOLEAN DEFAULT true,
--     age INTEGER CHECK(age >= 18),
--     created_at TIMESTAMP DEFAULT NOW()
-- );

-- INSERT INTO basics.account (full_name, email,age) 
-- VALUES('sam','saam@gamil.com',22);

INSERT INTO basics.accounts (full_name, email,age)
VALUES
    ('sam','sam@gamil.com',22);

INSERT INTO basics.accounts (full_name, email,age)
VALUES
    ('saam','sam123@gamil.com',22);

SELECT * FROM basics.accounts;