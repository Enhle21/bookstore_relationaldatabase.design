-- Creating users 
-- Admin user
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'MemberAdmin123';

-- staff user
CREATE USER 'staff_user'@'localhost' IDENTIFIED BY 'MemberStaff123';

-- viewer user
CREATE USER 'viewer_user'@'localhost' IDENTIFIED BY 'MemberViewer123';

-- grant permissions
-- Admin 
GRANT ALL PRIVILEGES ON BookStoreDB.* TO 'admin_user'@'localhost';

-- staff
GRANT SELECT, INSERT, UPDATE ON BookStoreDB.* TO 'staff_user'@'localhost';

-- viewer
GRANT SELECT ON BookStoreDB.*TO 'viewer_user'@'localhost';

-- apply changes
FLUSH PRIVILEGES;