-- Auto-generated: schema — database schema definition v2723
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_2723 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2723_name
    ON schema_—_database_schema_definition_2723(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2723_created
    ON schema_—_database_schema_definition_2723(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_2723 (name, status)
VALUES
    ('item_0', 'val_0_2723'),
    ('item_1', 'val_1_2723'),
    ('item_2', 'val_2_2723'),
    ('item_3', 'val_3_2723'),
    ('item_4', 'val_4_2723'),
    ('item_5', 'val_5_2723'),
    ('item_6', 'val_6_2723'),
    ('item_7', 'val_7_2723');

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_2723_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_2723
GROUP BY name
ORDER BY total DESC;
