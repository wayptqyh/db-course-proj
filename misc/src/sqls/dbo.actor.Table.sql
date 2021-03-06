﻿USE [豆瓣数据库]
GO
/****** Object:  Table [dbo].[actor]    Script Date: 11/15/2019 09:50:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[actor](
	[actor_id] [int] NOT NULL,
	[name] [char](30) NOT NULL,
	[sex] [char](2) NOT NULL,
	[homeplace] [char](20) NOT NULL,
	[birthday] [char](20) NOT NULL,
	[occupation] [char](20) NOT NULL,
	[alias] [varchar](200) NOT NULL,
	[imdb_id] [char](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [sex]
GO
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [homeplace]
GO
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [birthday]
GO
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [occupation]
GO
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [alias]
GO
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [imdb_id]
GO
