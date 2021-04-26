CREATE DATABASE ProjectDB;

USE ProjectDB
CREATE TABLE [dbo].[BlogInfo](
[BlogID] [int] NOT NULL,
[Head] [varchar](max) NOT NULL,
[Body] [varchar] (MAX) NOT NULL,
[username] [varchar](10) NULL,

PRIMARY KEY CLUSTERED
(
[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogInfo] WITH CHECK ADD CONSTRAINT [FK_BlogInfo_LoginInfo] FOREIGN KEY([username])
REFERENCES [dbo].[LoginInfo] ([username])
GO
 
CREATE TABLE [dbo].[LoginInfo](
[username] [varchar](10) NOT NULL,
[email] [varchar](30) NOT NULL,
[password] [varchar](30) NOT NULL,

PRIMARY KEY CLUSTERED
(
[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

 

INSERT INTO LoginInfo
Values('ritikaaa','ritikabhatia@gmail.com','Ritika@123')
INSERT INTO LoginInfo
Values('abha05','abha05@gmail.com','Abha5')
INSERT INTO LoginInfo
Values('rishivyas','r@gmail.com','Rishi123')

select * from logininfo

select * from bloginfo