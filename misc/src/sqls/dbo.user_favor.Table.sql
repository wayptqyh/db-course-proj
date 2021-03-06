﻿USE [豆瓣数据库]
GO
/****** Object:  Table [dbo].[user_favor]    Script Date: 11/15/2019 09:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_favor](
	[favor_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[favor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[user_favor]  WITH CHECK ADD FOREIGN KEY([favor_id])
REFERENCES [dbo].[favor] ([favor_id])
GO
ALTER TABLE [dbo].[user_favor]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[usert] ([user_id])
GO
