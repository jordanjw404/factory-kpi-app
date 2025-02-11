-- Create tables if they don't exist
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='processes' AND xtype='U')
BEGIN
    CREATE TABLE processes (
        id INT IDENTITY(1,1) PRIMARY KEY,
        name VARCHAR(50) NOT NULL UNIQUE
    );
END;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='positions' AND xtype='U')
BEGIN
    CREATE TABLE positions (
        id INT IDENTITY(1,1) PRIMARY KEY,
        process_id INT,
        name VARCHAR(50) NOT NULL,
        target_value INT NOT NULL,
        FOREIGN KEY (process_id) REFERENCES processes(id)
    );
END;