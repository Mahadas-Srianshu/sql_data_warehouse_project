/*
==========================================================================
Create the Databases and Schemas 
==========================================================================

Script Purpose: 
  This script creates a new databse named 'Datawarehouse' after checking is it already exists. 
  If exists it drops it and recreates. Then we set up 3 schemas, bronze, silver and gold in the database. 

*/

USE master;
GO

--Drop and recreate 'Datawarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'Datawarehouse')
BEGIN 
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
GO

--Create the 'Datawarehouse' database
CREATE DATABASE Datawarehouse;
GO 
USE Datawarehouse;

--Create the schemas here
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
