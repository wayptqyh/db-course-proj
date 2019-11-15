USE [master]
GO
/****** Object:  Database [豆瓣数据库]    Script Date: 11/15/2019 10:20:12 ******/
CREATE DATABASE [豆瓣数据库] ON  PRIMARY 
( NAME = N'豆瓣数据库', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\豆瓣数据库.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'豆瓣数据库_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\豆瓣数据库_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [豆瓣数据库] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [豆瓣数据库].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [豆瓣数据库] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [豆瓣数据库] SET ANSI_NULLS OFF
GO
ALTER DATABASE [豆瓣数据库] SET ANSI_PADDING OFF
GO
ALTER DATABASE [豆瓣数据库] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [豆瓣数据库] SET ARITHABORT OFF
GO
ALTER DATABASE [豆瓣数据库] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [豆瓣数据库] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [豆瓣数据库] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [豆瓣数据库] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [豆瓣数据库] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [豆瓣数据库] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [豆瓣数据库] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [豆瓣数据库] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [豆瓣数据库] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [豆瓣数据库] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [豆瓣数据库] SET  DISABLE_BROKER
GO
ALTER DATABASE [豆瓣数据库] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [豆瓣数据库] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [豆瓣数据库] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [豆瓣数据库] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [豆瓣数据库] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [豆瓣数据库] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [豆瓣数据库] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [豆瓣数据库] SET  READ_WRITE
GO
ALTER DATABASE [豆瓣数据库] SET RECOVERY SIMPLE
GO
ALTER DATABASE [豆瓣数据库] SET  MULTI_USER
GO
ALTER DATABASE [豆瓣数据库] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [豆瓣数据库] SET DB_CHAINING OFF
GO
USE [豆瓣数据库]
GO
/****** Object:  Table [dbo].[keyword]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[keyword](
	[keyword_id] [int] NOT NULL,
	[keywords] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[keyword_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[favor]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[favor](
	[favor_id] [int] NOT NULL,
	[favors] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[favor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comment]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [int] NOT NULL,
	[comments] [varchar](140) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[actor]    Script Date: 11/15/2019 10:20:12 ******/
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
/****** Object:  Table [dbo].[movie]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[movie](
	[movie_id] [int] NOT NULL,
	[name] [char](50) NOT NULL,
	[rate] [float] NOT NULL,
	[imdb_id] [char](10) NOT NULL,
	[alias] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] NOT NULL,
	[name] [char](10) NOT NULL,
	[description] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[review]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[review](
	[review_id] [int] NOT NULL,
	[rate] [float] NOT NULL,
	[reviews] [varchar](3000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[permission]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[permission](
	[permission_id] [int] NOT NULL,
	[url] [char](30) NOT NULL,
	[description] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usert]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usert](
	[user_id] [int] NOT NULL,
	[label] [char](10) NOT NULL,
	[name] [char](50) NOT NULL,
	[password] [char](100) NOT NULL,
	[phone] [char](15) NOT NULL,
	[email] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[label] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[url]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[url](
	[url_id] [int] NOT NULL,
	[link_url] [char](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[url_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[type]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[type](
	[type_id] [int] NOT NULL,
	[type_name] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tag]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tag](
	[tag_id] [int] NOT NULL,
	[tag_name] [char](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[role_permission]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_permission](
	[role_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[permission_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role](
	[user_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_review]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_review](
	[user_id] [int] NOT NULL,
	[review_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[review_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_movie]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_movie](
	[rate] [float] NOT NULL,
	[wish] [int] NOT NULL,
	[seen] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_favor]    Script Date: 11/15/2019 10:20:12 ******/
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
/****** Object:  Table [dbo].[user_comment]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_comment](
	[user_id] [int] NOT NULL,
	[comment_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[comment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[url_movie]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[url_movie](
	[url_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[url_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_writer]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_writer](
	[writer_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[writer_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_type]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_type](
	[type_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[type_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_tag]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_tag](
	[tag_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_review]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_review](
	[movie_id] [int] NOT NULL,
	[review_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[review_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_leadingactor]    Script Date: 11/15/2019 10:20:12 ******/
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
/****** Object:  Table [dbo].[movie_director]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_director](
	[director_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[director_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_comment]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_comment](
	[movie_id] [int] NOT NULL,
	[comment_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[comment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[keyword_movie]    Script Date: 11/15/2019 10:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[keyword_movie](
	[keyword_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[keyword_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF__comment__comment__72C60C4A]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[comment] ADD  DEFAULT ('') FOR [comments]
GO
/****** Object:  Default [DF__actor__name__182C9B23]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__actor__sex__1920BF5C]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [sex]
GO
/****** Object:  Default [DF__actor__homeplace__1A14E395]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [homeplace]
GO
/****** Object:  Default [DF__actor__birthday__1B0907CE]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [birthday]
GO
/****** Object:  Default [DF__actor__occupatio__1BFD2C07]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [occupation]
GO
/****** Object:  Default [DF__actor__alias__1CF15040]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [alias]
GO
/****** Object:  Default [DF__actor__imdb_id__1DE57479]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[actor] ADD  DEFAULT ('') FOR [imdb_id]
GO
/****** Object:  Default [DF__movie__name__014935CB]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__movie__rate__023D5A04]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie] ADD  DEFAULT ((0.0)) FOR [rate]
GO
/****** Object:  Default [DF__movie__imdb_id__03317E3D]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie] ADD  DEFAULT ('') FOR [imdb_id]
GO
/****** Object:  Default [DF__movie__alias__0425A276]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie] ADD  DEFAULT ('') FOR [alias]
GO
/****** Object:  Default [DF__role__name__534D60F1]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[role] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__role__descriptio__5441852A]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[role] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__review__rate__04E4BC85]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[review] ADD  DEFAULT ((0.0)) FOR [rate]
GO
/****** Object:  Default [DF__permission__url__5EBF139D]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[permission] ADD  DEFAULT ('') FOR [url]
GO
/****** Object:  Default [DF__permissio__descr__5FB337D6]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[permission] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__usert__label__4AB81AF0]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[usert] ADD  DEFAULT ('') FOR [label]
GO
/****** Object:  Default [DF__usert__name__4BAC3F29]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[usert] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__usert__password__4CA06362]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[usert] ADD  DEFAULT ('') FOR [password]
GO
/****** Object:  Default [DF__usert__phone__4D94879B]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[usert] ADD  DEFAULT ('') FOR [phone]
GO
/****** Object:  Default [DF__usert__email__4E88ABD4]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[usert] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__type__type_name__08EA5793]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[type] ADD  DEFAULT ('') FOR [type_name]
GO
/****** Object:  Default [DF__tag__tag_name__0DAF0CB0]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[tag] ADD  DEFAULT ('') FOR [tag_name]
GO
/****** Object:  Default [DF__user_movie__rate__6C190EBB]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_movie] ADD  DEFAULT ((0.0)) FOR [rate]
GO
/****** Object:  Default [DF__user_movie__wish__6D0D32F4]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_movie] ADD  DEFAULT ((0)) FOR [wish]
GO
/****** Object:  Default [DF__user_movie__seen__6E01572D]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_movie] ADD  DEFAULT ((0)) FOR [seen]
GO
/****** Object:  ForeignKey [FK__role_perm__permi__656C112C]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[role_permission]  WITH CHECK ADD FOREIGN KEY([permission_id])
REFERENCES [dbo].[permission] ([permission_id])
GO
/****** Object:  ForeignKey [FK__role_perm__role___6477ECF3]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[role_permission]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
/****** Object:  ForeignKey [FK__user_role__role___59FA5E80]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
/****** Object:  ForeignKey [FK__user_role__user___59063A47]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[usert] ([user_id])
GO
/****** Object:  ForeignKey [FK__user_revi__revie__0A9D95DB]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_review]  WITH CHECK ADD FOREIGN KEY([review_id])
REFERENCES [dbo].[review] ([review_id])
GO
/****** Object:  ForeignKey [FK__user_revi__user___09A971A2]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_review]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[usert] ([user_id])
GO
/****** Object:  ForeignKey [FK__user_movi__movie__6B24EA82]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_movie]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
/****** Object:  ForeignKey [FK__user_movi__user___6A30C649]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_movie]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[usert] ([user_id])
GO
/****** Object:  ForeignKey [FK__user_favo__favor__236943A5]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_favor]  WITH CHECK ADD FOREIGN KEY([favor_id])
REFERENCES [dbo].[favor] ([favor_id])
GO
/****** Object:  ForeignKey [FK__user_favo__user___22751F6C]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_favor]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[usert] ([user_id])
GO
/****** Object:  ForeignKey [FK__user_comm__comme__797309D9]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_comment]  WITH CHECK ADD FOREIGN KEY([comment_id])
REFERENCES [dbo].[comment] ([comment_id])
GO
/****** Object:  ForeignKey [FK__user_comm__user___787EE5A0]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[user_comment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[usert] ([user_id])
GO
/****** Object:  ForeignKey [FK__url_movie__movie__2CF2ADDF]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[url_movie]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
/****** Object:  ForeignKey [FK__url_movie__url_i__2BFE89A6]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[url_movie]  WITH CHECK ADD FOREIGN KEY([url_id])
REFERENCES [dbo].[url] ([url_id])
GO
/****** Object:  ForeignKey [FK__movie_wri__movie__33D4B598]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_writer]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
/****** Object:  ForeignKey [FK__movie_wri__write__34C8D9D1]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_writer]  WITH CHECK ADD FOREIGN KEY([writer_id])
REFERENCES [dbo].[actor] ([actor_id])
GO
/****** Object:  ForeignKey [FK__movie_typ__movie__22AA2996]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_type]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
/****** Object:  ForeignKey [FK__movie_typ__type___239E4DCF]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_type]  WITH CHECK ADD FOREIGN KEY([type_id])
REFERENCES [dbo].[type] ([type_id])
GO
/****** Object:  ForeignKey [FK__movie_tag__movie__286302EC]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_tag]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
/****** Object:  ForeignKey [FK__movie_tag__tag_i__29572725]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_tag]  WITH CHECK ADD FOREIGN KEY([tag_id])
REFERENCES [dbo].[tag] ([tag_id])
GO
/****** Object:  ForeignKey [FK__movie_rev__movie__0F624AF8]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_review]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
/****** Object:  ForeignKey [FK__movie_rev__revie__10566F31]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_review]  WITH CHECK ADD FOREIGN KEY([review_id])
REFERENCES [dbo].[review] ([review_id])
GO
/****** Object:  ForeignKey [FK__movie_lea__leadi__403A8C7D]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_leadingactor]  WITH CHECK ADD FOREIGN KEY([leadingactor_id])
REFERENCES [dbo].[actor] ([actor_id])
GO
/****** Object:  ForeignKey [FK__movie_lea__movie__3F466844]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_leadingactor]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
/****** Object:  ForeignKey [FK__movie_dir__direc__3A81B327]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_director]  WITH CHECK ADD FOREIGN KEY([director_id])
REFERENCES [dbo].[actor] ([actor_id])
GO
/****** Object:  ForeignKey [FK__movie_dir__movie__398D8EEE]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_director]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
/****** Object:  ForeignKey [FK__movie_com__comme__7F2BE32F]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_comment]  WITH CHECK ADD FOREIGN KEY([comment_id])
REFERENCES [dbo].[comment] ([comment_id])
GO
/****** Object:  ForeignKey [FK__movie_com__movie__7E37BEF6]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[movie_comment]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
/****** Object:  ForeignKey [FK__keyword_m__keywo__18EBB532]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[keyword_movie]  WITH CHECK ADD FOREIGN KEY([keyword_id])
REFERENCES [dbo].[keyword] ([keyword_id])
GO
/****** Object:  ForeignKey [FK__keyword_m__movie__19DFD96B]    Script Date: 11/15/2019 10:20:12 ******/
ALTER TABLE [dbo].[keyword_movie]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[movie] ([movie_id])
GO
