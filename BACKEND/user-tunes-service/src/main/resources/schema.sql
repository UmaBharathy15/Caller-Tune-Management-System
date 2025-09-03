CREATE TABLE IF NOT EXISTS user_tunes (
    id UUID PRIMARY KEY,
    user_id VARCHAR(15) NOT NULL,   -- 📱 phone number
    song_id UUID NOT NULL,
    clip_start_ms INT NOT NULL,
    clip_end_ms INT NOT NULL,
    status VARCHAR(16) NOT NULL,
    effective_from TIMESTAMPTZ NOT NULL,
    effective_to TIMESTAMPTZ,
    created_at TIMESTAMPTZ NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_user_tunes_user_id ON user_tunes(user_id);
