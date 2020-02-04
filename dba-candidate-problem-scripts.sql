SET ANSI_NULLS ON
GO
​
SET QUOTED_IDENTIFIER ON
GO
​
SET ANSI_PADDING ON
GO
​
PRINT '===Creating Tables==='
​
CREATE TABLE [dbo].[Study](
	[StudyID] [int] IDENTITY(1,1) NOT NULL,
	[StudyName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Study] PRIMARY KEY CLUSTERED 
(
	[StudyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
​
GO
​
CREATE TABLE [dbo].[StudyStatus](
	[StudyStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StudyStatusName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_StudyStatus] PRIMARY KEY CLUSTERED 
(
	[StudyStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
​
GO
​
CREATE TABLE [dbo].[StudyStatusLog](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[StudyID] [int] NOT NULL,
	[StudyStatusID] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_StudyStatusLog] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
​
GO
​
SET ANSI_PADDING OFF
GO
​
PRINT '===Populating Tables==='
​
PRINT 'Populating studies...'
​
INSERT	INTO [dbo].[Study](StudyName)
VALUES	('Study1')
​
INSERT	INTO [dbo].[Study](StudyName)
VALUES	('Study2')
​
INSERT	INTO [dbo].[Study](StudyName)
VALUES	('Study3')
​
PRINT 'Populating states...'
​
INSERT	INTO [dbo].[StudyStatus] (StudyStatusName)
SELECT	'Received'
​
INSERT	INTO [dbo].[StudyStatus] (StudyStatusName)
SELECT	'Ready'
​
INSERT	INTO [dbo].[StudyStatus] (StudyStatusName)
SELECT	'In Progress'
​
INSERT	INTO [dbo].[StudyStatus] (StudyStatusName)
SELECT	'Deliverable'
​
INSERT	INTO [dbo].[StudyStatus] (StudyStatusName)
SELECT	'Completed'
​
PRINT 'Populating state log...'
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(1, 1, '2014-04-01 14:00:00')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(1, 2, '2014-04-01 14:02:15')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(1, 3, '2014-04-01 14:12:30')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(1, 4, '2014-04-01 14:17:00')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(1, 5, '2014-04-01 14:17:45')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(2, 1, '2014-04-01 14:00:00')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(2, 2, '2014-04-01 14:02:17')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(2, 3, '2014-04-01 14:12:20')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(2, 2, '2014-04-01 14:14:10')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(2, 3, '2014-04-01 14:18:20')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(2, 4, '2014-04-01 14:21:50')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(2, 5, '2014-04-01 14:22:00')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(3, 1, '2014-04-01 14:01:10')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(3, 2, '2014-04-01 14:02:05')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(3, 3, '2014-04-01 14:03:00')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(3, 2, '2014-04-01 14:10:00')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(3, 3, '2014-04-01 14:15:00')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(3, 2, '2014-04-01 14:17:30')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(3, 3, '2014-04-01 14:22:10')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(3, 4, '2014-04-01 14:25:12')
​
INSERT	INTO [dbo].[StudyStatusLog] (StudyID, StudyStatusID, Created)
VALUES	(3, 5, '2014-04-01 14:25:30')