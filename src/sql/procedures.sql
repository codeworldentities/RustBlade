-- Auto-generated: procedures — procedures v3896
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_3896 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_3896_name
    ON procedures_—_procedures_3896(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_3896_created
    ON procedures_—_procedures_3896(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_3896 (name, status)
VALUES
    ('item_0', 'val_0_3896'),
    ('item_1', 'val_1_3896'),
    ('item_2', 'val_2_3896'),
    ('item_3', 'val_3_3896'),
    ('item_4', 'val_4_3896'),
    ('item_5', 'val_5_3896'),
    ('item_6', 'val_6_3896'),
    ('item_7', 'val_7_3896'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_3896_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_3896
GROUP BY name
ORDER BY total DESC;
