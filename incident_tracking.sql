-- Create Incident Tracking Table
CREATE TABLE incident_tracking (
    incident_id INT PRIMARY KEY,
    issue_type VARCHAR(255),
    severity_level INT,
    reported_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP,
    status VARCHAR(50)
);

-- Query to Identify Critical Issues
SELECT incident_id, issue_type, severity_level
FROM incident_tracking
WHERE severity_level > 7 AND status = 'Unresolved'
ORDER BY reported_at ASC;
