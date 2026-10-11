DROP TABLE IF EXISTS basics.app_event;

CREATE TABLE IF NOT EXISTS basics.app_event(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    event_name TEXT NOT NULL,
    metadata JSONB DEFAULT '{}'::JSONB,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.app_event (event_name, metadata)
VALUES
    (
        'user_registered',
        '{"user_id": 101, "name": "Sam", "email": "sam@gmail.com"}'::JSONB
    ),
    (
        'user_login',
        '{"user_id": 101, "device": "Windows", "status": "success"}'::JSONB
    ),
    (
        'order_placed',
        '{"order_id": 5001, "product": "Laptop", "amount": 45000}'::JSONB
    );

   

    SELECT
    event_name,
    metadata ->> 'user_id' AS user_id,
    metadata ->> 'order_id' AS order_id
FROM basics.app_event
WHERE metadata ? 'user_id' 
  AND metadata ? 'order_id';

 SELECT * FROM basics.app_event;