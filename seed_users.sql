-- =========================================
-- Seed Users for MP Tracker System
-- =========================================
-- Default Password for all users: Admin@123
-- IMPORTANT: Users should change their passwords after first login
-- =========================================

-- Super Admin User
-- Username: admin
-- Password: Admin@123
INSERT INTO users (username, password, role, status) VALUES 
('admin', '$2b$10$PaUPpIRAZnvxR9/zYC9Q0.Kuxwb0ihDy2Q.cKEQ18jfeB8HF36pT6', 'super_admin', 'approved');

-- Regional Admin User
-- Username: regional_admin
-- Password: Admin@123
INSERT INTO users (username, password, role, status) VALUES 
('regional_admin', '$2b$10$gHjAMAsfMxTfgJYoho9l9ONlw5stX4EbxxAbmuY2WMbYBZqL1zaOK', 'regional_admin', 'approved');

-- Analyst User
-- Username: analyst
-- Password: Admin@123
INSERT INTO users (username, password, role, status) VALUES 
('analyst', '$2b$10$WYhbxgJ5NbROHen.FKOjvOor/nypirUWWYB8Xn01XEyofGaJXCUpO', 'analyst', 'approved');

-- Editor User
-- Username: editor
-- Password: Admin@123
INSERT INTO users (username, password, role, status) VALUES 
('editor', '$2b$10$Q/XjGWYVHr5KtlDfgR80ruGM8PEW0aq/ZS/CYInGrfFy.tHknU44u', 'editor', 'approved');

-- =========================================
-- User Roles Explanation:
-- =========================================
-- super_admin: Full system access, can manage users, projects, and all settings
-- regional_admin: Can manage projects, upload data, delete records
-- analyst: Can upload bulk data and view analytics
-- editor: Can create and edit projects
-- public_viewer: Read-only access (no login required)
-- =========================================

-- =========================================
-- Login Credentials Summary:
-- =========================================
-- Username: admin          | Password: Admin@123 | Role: super_admin
-- Username: regional_admin | Password: Admin@123 | Role: regional_admin
-- Username: analyst        | Password: Admin@123 | Role: analyst
-- Username: editor         | Password: Admin@123 | Role: editor
-- =========================================
