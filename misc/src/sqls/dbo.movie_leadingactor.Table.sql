﻿USE [豆瓣数据库]
GO
/****** Object:  Table [dbo].[movie_leadingactor]    Script Date: 11/15/2019 09:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_leadingactor](
	[leadingactor_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[leadingactor_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[movie_leadingactor]  WITH CHECK ADD FOREIGN KEY([leadingactor_id])
REFERENCES [dbo].[actor] ([actor_id])
GO
ALTER TABLE [dbo].[movie_leadingactor]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
