USE [Engnest]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 3/19/2020 6:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Type] [tinyint] NULL,
	[TargetId] [bigint] NOT NULL,
	[TargetType] [tinyint] NULL,
	[CreatedTime] [datetime] NOT NULL,
	[Status] [tinyint] NULL,
	[Images] [nvarchar](max) NULL,
	[Audios] [nvarchar](max) NULL,
	[Tags] [nvarchar](500) NULL,
	[TagsUser] [nvarchar](500) NULL,
	[UserId] [bigint] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emotion]    Script Date: 3/19/2020 6:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emotion](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](10) NULL,
	[UserId] [bigint] NULL,
	[TargetId] [bigint] NULL,
	[TargetType] [nchar](10) NULL,
	[CreatedTime] [datetime] NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [PK_Emotion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 3/19/2020 6:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](200) NULL,
	[CreatedUser] [bigint] NULL,
	[Avatar] [nvarchar](500) NULL,
	[Banner] [nvarchar](500) NULL,
	[InfoId] [nvarchar](500) NULL,
	[Status] [tinyint] NULL,
	[CreatedTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupMember]    Script Date: 3/19/2020 6:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMember](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupID] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Type] [tinyint] NULL,
	[Status] [tinyint] NULL,
	[CreatedTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GroupMember] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 3/19/2020 6:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[UserID] [bigint] NULL,
	[TargetUser] [bigint] NULL,
	[CreatedTime] [datetime] NOT NULL,
	[Audios] [nvarchar](500) NULL,
	[Image] [nvarchar](500) NULL,
	[Other] [nvarchar](500) NULL,
	[Seen] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 3/19/2020 6:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Type] [tinyint] NULL,
	[CreatedTime] [datetime] NULL,
	[Seen] [bit] NULL,
	[HTML] [varchar](max) NULL,
	[TargetId] [bigint] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 3/19/2020 6:37:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[Type] [tinyint] NULL,
	[TargetId] [bigint] NULL,
	[TargetType] [tinyint] NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Tags] [nvarchar](500) NULL,
	[Images] [nvarchar](max) NULL,
	[Audios] [nvarchar](500) NULL,
	[TagsUser] [nvarchar](max) NULL,
	[Videos] [nvarchar](max) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relationship]    Script Date: 3/19/2020 6:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relationship](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserSentID] [bigint] NOT NULL,
	[UserReceiveID] [bigint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Type] [tinyint] NULL,
	[AcceptTime] [datetime] NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [PK_Relationship] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystermCode]    Script Date: 3/19/2020 6:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystermCode](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SysID] [bigint] NULL,
	[Value] [nchar](20) NULL,
	[Text] [nvarchar](200) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_SystermCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/19/2020 6:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[Token] [nvarchar](20) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Birthday] [date] NULL,
	[Country] [nvarchar](20) NULL,
	[Gender] [nvarchar](20) NULL,
	[Relationship] [nvarchar](20) NULL,
	[AboutMe] [nvarchar](max) NULL,
	[Lat] [decimal](18, 10) NULL,
	[Lng] [decimal](18, 10) NULL,
	[NickName] [nvarchar](50) NULL,
	[SubName] [nvarchar](50) NULL,
	[Status] [nvarchar](500) NULL,
	[Avatar] [nvarchar](max) NULL,
	[BackGround] [nvarchar](max) NULL,
	[Type] [tinyint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[ActiveCode] [nvarchar](20) NULL,
	[UpdateTime] [datetime] NULL,
	[Flag] [bit] NULL,
	[Category] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Emotion] ADD  CONSTRAINT [DF_Emotion_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[GroupMember] ADD  CONSTRAINT [DF_GroupMember_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_Message_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Notification] ADD  CONSTRAINT [DF_Notification_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Post] ADD  CONSTRAINT [DF_Posts_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Relationship] ADD  CONSTRAINT [DF_Relationship_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
