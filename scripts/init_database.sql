/*
=====================================================
CREATE DATABASE & SCHEMAS
=====================================================
Script Purpose :
	This script create a new database named 'DataWareHouse' after checking if it already exist.
	If the database exist, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze','silver' and 'gold'

WARNING ::
	Running this script will drop the entire 'DataWareHouse' database if it exists
	All data in the database will be permanently deleted. Proceed with caution 
	and ensure you have proper backups before running this script.

*/

USE master;
Go

--- Drop and Recreate the 'DataWareHouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse
END;
GO

--- Create new database 'DataWareHouse'
CREATE DATABASE DataWareHouse;

-- Use the newly created database 
USE DataWareHouse;
Go

-- Create the Schemas
CREATE SCHEMA bronze;
Go

CREATE SCHEMA silver;
Go

CREATE SCHEMA gold;
Go
