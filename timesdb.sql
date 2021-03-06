USE [master]
GO
/****** Object:  Database [TimesDb]    Script Date: 05/02/2015 20:05:36 ******/
CREATE DATABASE [TimesDb] ON  PRIMARY 
( NAME = N'TimesDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TimesDb.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TimesDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TimesDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TimesDb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimesDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimesDb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TimesDb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TimesDb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TimesDb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TimesDb] SET ARITHABORT OFF
GO
ALTER DATABASE [TimesDb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TimesDb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TimesDb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TimesDb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TimesDb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TimesDb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TimesDb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TimesDb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TimesDb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TimesDb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TimesDb] SET  DISABLE_BROKER
GO
ALTER DATABASE [TimesDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TimesDb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TimesDb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TimesDb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TimesDb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TimesDb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TimesDb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TimesDb] SET  READ_WRITE
GO
ALTER DATABASE [TimesDb] SET RECOVERY SIMPLE
GO
ALTER DATABASE [TimesDb] SET  MULTI_USER
GO
ALTER DATABASE [TimesDb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TimesDb] SET DB_CHAINING OFF
GO
USE [TimesDb]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [text] NULL,
	[Chapter] [varchar](50) NULL,
	[CorrectOption] [varchar](1) NULL,
	[Subject] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Option]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Option](
	[OptionID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[OptionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Class]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON
INSERT [dbo].[Class] ([ClassID], [Name]) VALUES (1, N'IX')
INSERT [dbo].[Class] ([ClassID], [Name]) VALUES (2, N'X')
INSERT [dbo].[Class] ([ClassID], [Name]) VALUES (3, N'XI')
INSERT [dbo].[Class] ([ClassID], [Name]) VALUES (4, N'XII')
INSERT [dbo].[Class] ([ClassID], [Name]) VALUES (5, N'GMAT')
INSERT [dbo].[Class] ([ClassID], [Name]) VALUES (6, N'ILETS')
INSERT [dbo].[Class] ([ClassID], [Name]) VALUES (7, N'MCAT')
INSERT [dbo].[Class] ([ClassID], [Name]) VALUES (8, N'ECAT')
SET IDENTITY_INSERT [dbo].[Class] OFF
/****** Object:  Table [dbo].[Chapter]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chapter](
	[ChapterID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[SubjectID] [int] NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[ChapterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test](
	[TestID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Subject] [varchar](100) NULL,
	[Chapter] [varchar](20) NULL,
	[Duration] [int] NULL,
	[NumberOfQuestions] [int] NULL,
	[Class] [varchar](50) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK__Test__3214EC277F60ED59] PRIMARY KEY CLUSTERED 
(
	[TestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Test] ON
INSERT [dbo].[Test] ([TestID], [Name], [Subject], [Chapter], [Duration], [NumberOfQuestions], [Class], [isActive]) VALUES (1, N'Test1', N'1', N'1', 100, NULL, N'1', 1)
INSERT [dbo].[Test] ([TestID], [Name], [Subject], [Chapter], [Duration], [NumberOfQuestions], [Class], [isActive]) VALUES (2, N'TEST2', N'1', N'2', 60, NULL, N'1', 1)
INSERT [dbo].[Test] ([TestID], [Name], [Subject], [Chapter], [Duration], [NumberOfQuestions], [Class], [isActive]) VALUES (3, N'Test3', N'1', N'1', 100, 20, N'1', 1)
INSERT [dbo].[Test] ([TestID], [Name], [Subject], [Chapter], [Duration], [NumberOfQuestions], [Class], [isActive]) VALUES (4, N'Test$', N'4', N'4', 50, 10, N'3', 1)
INSERT [dbo].[Test] ([TestID], [Name], [Subject], [Chapter], [Duration], [NumberOfQuestions], [Class], [isActive]) VALUES (5, N'Test$', N'4', N'4', 50, 10, N'3', 1)
INSERT [dbo].[Test] ([TestID], [Name], [Subject], [Chapter], [Duration], [NumberOfQuestions], [Class], [isActive]) VALUES (6, N'Test23', N'2', N'2', 70, 15, N'2', 1)
SET IDENTITY_INSERT [dbo].[Test] OFF
/****** Object:  Table [dbo].[Teacher]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](20) NULL,
 CONSTRAINT [PK__Teacher__3214EC2703317E3D] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON
INSERT [dbo].[Teacher] ([TeacherID], [UserName], [Password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
/****** Object:  Table [dbo].[Subject]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[ClassID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[UserName] [varchar](50) NULL,
	[Passwrd] [varchar](20) NULL,
	[FName] [varchar](100) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[Gender] [varchar](15) NULL,
	[Class] [varchar](50) NULL,
	[Cell] [int] NULL,
 CONSTRAINT [PK__Student__3214EC270AD2A005] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Result]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[ResultID] [int] IDENTITY(1,1) NOT NULL,
	[st_ID] [int] NULL,
	[test_ID] [int] NULL,
	[Score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResultID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionOption]    Script Date: 05/02/2015 20:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionOption](
	[QuestionOptionID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NULL,
	[OptionID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionOptionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__Result__st_ID__1ED998B2]    Script Date: 05/02/2015 20:05:38 ******/
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK__Result__st_ID__1ED998B2] FOREIGN KEY([st_ID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK__Result__st_ID__1ED998B2]
GO
/****** Object:  ForeignKey [FK__Result__test_ID__1FCDBCEB]    Script Date: 05/02/2015 20:05:38 ******/
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK__Result__test_ID__1FCDBCEB] FOREIGN KEY([test_ID])
REFERENCES [dbo].[Test] ([TestID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK__Result__test_ID__1FCDBCEB]
GO
/****** Object:  ForeignKey [FK__QuestionOp__o_ID__1CF15040]    Script Date: 05/02/2015 20:05:38 ******/
ALTER TABLE [dbo].[QuestionOption]  WITH CHECK ADD FOREIGN KEY([OptionID])
REFERENCES [dbo].[Option] ([OptionID])
GO
/****** Object:  ForeignKey [FK__QuestionOp__q_ID__1DE57479]    Script Date: 05/02/2015 20:05:38 ******/
ALTER TABLE [dbo].[QuestionOption]  WITH CHECK ADD FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([QuestionID])
GO
