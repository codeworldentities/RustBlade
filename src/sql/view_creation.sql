-- Auto-generated: view creation v1592
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_1592 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_1592_name
    ON view_creation_1592(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_1592_created
    ON view_creation_1592(created_at DESC);

-- Seed data
INSERT INTO view_creation_1592 (name, score)
VALUES
    ('item_0', 'val_0_1592'),
    ('item_1', 'val_1_1592'),
    ('item_2', 'val_2_1592'),
    ('item_3', 'val_3_1592'),
    ('item_4', 'val_4_1592'),
    ('item_5', 'val_5_1592'),
    ('item_6', 'val_6_1592'),
    ('item_7', 'val_7_1592'),

-- View
CREATE OR REPLACE VIEW v_view_creation_1592_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_1592
GROUP BY name
ORDER BY total DESC;
