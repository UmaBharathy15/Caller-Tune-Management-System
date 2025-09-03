CREATE TABLE tune (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(), -- requires pgcrypto extension
    title VARCHAR(255) NOT NULL,
    code VARCHAR(64) UNIQUE NOT NULL,
    duration_sec INT,
    media_id VARCHAR(64) NOT NULL,
    language VARCHAR(32) NOT NULL
);
CREATE EXTENSION IF NOT EXISTS "pgcrypto";