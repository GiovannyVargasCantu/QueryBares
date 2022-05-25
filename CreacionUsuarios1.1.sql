USE [master]
GO --Admin
CREATE LOGIN [Admin] WITH PASSWORD=N'hhqn3m', DEFAULT_DATABASE=[Bares], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [Admin]
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [Admin]
GO
ALTER SERVER ROLE [diskadmin] ADD MEMBER [Admin]
GO
ALTER SERVER ROLE [processadmin] ADD MEMBER [Admin]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [Admin]
GO
ALTER SERVER ROLE [serveradmin] ADD MEMBER [Admin]
GO
ALTER SERVER ROLE [setupadmin] ADD MEMBER [Admin]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Admin]
GO
USE [Bares]
GO
CREATE USER [Admin] FOR LOGIN [Admin]
GO
USE [Bares]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Admin]
GO
USE [Bares]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Admin]
GO
USE [Bares]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Admin]
GO
USE [Bares]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Admin]
GO
USE [Bares]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Admin]
GO
USE [Bares]
GO
ALTER ROLE [db_owner] ADD MEMBER [Admin]
GO
USE [Bares]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Admin]
GO --Gerente
CREATE LOGIN [Gerente] WITH PASSWORD=N'9e33tn', DEFAULT_DATABASE=[Bares], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
use [master];
GO
USE [Bares]
GO
CREATE USER [Gerente] FOR LOGIN [Gerente]
GO
USE [Bares]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Gerente]
GO
USE [Bares]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Gerente]
GO --Mesero
CREATE LOGIN [Mesero] WITH PASSWORD=N'tmh45z', DEFAULT_DATABASE=[Bares], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
use [master];
GO
USE [Bares]
GO
CREATE USER [Mesero] FOR LOGIN [Mesero]
GO
USE [Bares]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Mesero]
GO
USE [Bares]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Mesero]
GO --Cajero
CREATE LOGIN [Cajero] WITH PASSWORD=N'ua63hv', DEFAULT_DATABASE=[Bares], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [Bares]
GO
CREATE USER [Cajero] FOR LOGIN [Cajero]
GO
USE [Bares]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Cajero]
GO
USE [Bares]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Cajero]
GO

