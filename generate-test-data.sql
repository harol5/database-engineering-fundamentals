CREATE TABLE test_data (
    id SERIAL PRIMARY KEY,
    name TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO test_data (name, created_at)
SELECT 'User ' || generate_series(1, 1000000), NOW();