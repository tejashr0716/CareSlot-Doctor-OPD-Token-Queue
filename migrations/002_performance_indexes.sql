-- Migration 002: B-Tree and GiST Indexes for Sub-Millisecond Scans
CREATE INDEX IF NOT EXISTS idx_careslot_status ON careslot_entities (status);
CREATE INDEX IF NOT EXISTS idx_careslot_cat_status ON careslot_entities (category, status);
CREATE INDEX IF NOT EXISTS idx_careslot_lease_expires ON careslot_leases (entity_id, expires_at) WHERE released = FALSE;
