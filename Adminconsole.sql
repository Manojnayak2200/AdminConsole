USE [Adminconsole]
GO
/****** Object:  Table [dbo].[M_adminconsole]    Script Date: 5/10/2023 10:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_adminconsole](
	[intid] [int] IDENTITY(1,1) NOT NULL,
	[intmanuid] [int] NULL,
	[intsubmanuid] [int] NULL,
	[intuserid] [int] NULL,
	[intPermission] [int] NULL,
	[intdeletedflag] [int] NULL,
 CONSTRAINT [PK_M_adminconsole] PRIMARY KEY CLUSTERED 
(
	[intid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Log]    Script Date: 5/10/2023 10:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Log](
	[Intlogid] [int] IDENTITY(1,1) NOT NULL,
	[vchControllerName] [varchar](100) NULL,
	[vchActionMethodName] [varchar](100) NULL,
	[vchExceptionmessage] [varchar](max) NULL,
 CONSTRAINT [PK_M_Log] PRIMARY KEY CLUSTERED 
(
	[Intlogid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_mainmenu]    Script Date: 5/10/2023 10:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_mainmenu](
	[intId] [int] IDENTITY(1,1) NOT NULL,
	[vchMainmenu] [varchar](100) NULL,
	[intActivestatus] [int] NULL,
 CONSTRAINT [PK_M_mainmenu] PRIMARY KEY CLUSTERED 
(
	[intId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_submenu]    Script Date: 5/10/2023 10:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_submenu](
	[intsubmenuid] [int] IDENTITY(1,1) NOT NULL,
	[vchsubmenu] [varchar](100) NULL,
	[intmainid] [int] NULL,
	[intActiveid] [int] NULL,
 CONSTRAINT [PK_M_submenu] PRIMARY KEY CLUSTERED 
(
	[intsubmenuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_T_AdminConsole]    Script Date: 5/10/2023 10:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_T_AdminConsole](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[Submenuid] [int] NULL,
	[Menu] [varchar](500) NULL,
	[MenuUrl] [varchar](1000) NULL,
 CONSTRAINT [PK_M_T_AdminConsole] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_USER]    Script Date: 5/10/2023 10:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_USER](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[vchUserName] [varchar](30) NULL,
	[vchPassword] [varchar](30) NULL,
	[intRoleid] [int] NULL,
	[intDeletedflag] [int] NULL,
 CONSTRAINT [PK_M_USER] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[M_adminconsole] ON 

INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (1, 3, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (2, 13, NULL, 4, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (3, 1, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (4, 2, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (5, 14, NULL, 3, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (6, 15, NULL, 3, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (7, 1, NULL, 2, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (8, 2, NULL, 2, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (9, 3, NULL, 2, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (10, 4, NULL, 2, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (11, 10, NULL, 2, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (12, 11, NULL, 2, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (13, 12, NULL, 2, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (14, 16, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (15, 15, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (16, 14, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (17, 13, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (18, 12, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (19, 11, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (20, 10, NULL, 1, 0, 0)
INSERT [dbo].[M_adminconsole] ([intid], [intmanuid], [intsubmanuid], [intuserid], [intPermission], [intdeletedflag]) VALUES (21, 4, NULL, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[M_adminconsole] OFF
SET IDENTITY_INSERT [dbo].[M_Log] ON 

INSERT [dbo].[M_Log] ([Intlogid], [vchControllerName], [vchActionMethodName], [vchExceptionmessage]) VALUES (1, N'AdminConsole', N'Loginsuccess', N'Login Method Call')
INSERT [dbo].[M_Log] ([Intlogid], [vchControllerName], [vchActionMethodName], [vchExceptionmessage]) VALUES (2, N'AdminConsole', N'Loginsuccess', N'Login Method Call')
INSERT [dbo].[M_Log] ([Intlogid], [vchControllerName], [vchActionMethodName], [vchExceptionmessage]) VALUES (3, N'AdminConsole', N'Loginsuccess', N'MANOJ Login Success ')
INSERT [dbo].[M_Log] ([Intlogid], [vchControllerName], [vchActionMethodName], [vchExceptionmessage]) VALUES (4, N'AdminConsole', N'Loginsuccess', N'Login Method Call')
INSERT [dbo].[M_Log] ([Intlogid], [vchControllerName], [vchActionMethodName], [vchExceptionmessage]) VALUES (5, N'AdminConsole', N'Loginsuccess', N'MANOJ Login Success ')
INSERT [dbo].[M_Log] ([Intlogid], [vchControllerName], [vchActionMethodName], [vchExceptionmessage]) VALUES (6, N'AdminConsole', N'Logout', N'Logout Call')
INSERT [dbo].[M_Log] ([Intlogid], [vchControllerName], [vchActionMethodName], [vchExceptionmessage]) VALUES (7, N'AdminConsole', N'Loginsuccess', N'Login Method Call')
INSERT [dbo].[M_Log] ([Intlogid], [vchControllerName], [vchActionMethodName], [vchExceptionmessage]) VALUES (8, N'AdminConsole', N'Loginsuccess', N'Login Method Call')
SET IDENTITY_INSERT [dbo].[M_Log] OFF
SET IDENTITY_INSERT [dbo].[M_mainmenu] ON 

INSERT [dbo].[M_mainmenu] ([intId], [vchMainmenu], [intActivestatus]) VALUES (1, N'MASTER', 0)
INSERT [dbo].[M_mainmenu] ([intId], [vchMainmenu], [intActivestatus]) VALUES (2, N'REPORT', 0)
SET IDENTITY_INSERT [dbo].[M_mainmenu] OFF
SET IDENTITY_INSERT [dbo].[M_submenu] ON 

INSERT [dbo].[M_submenu] ([intsubmenuid], [vchsubmenu], [intmainid], [intActiveid]) VALUES (1, N'Maste Sub1', 1, 0)
INSERT [dbo].[M_submenu] ([intsubmenuid], [vchsubmenu], [intmainid], [intActiveid]) VALUES (2, N'Master2', 1, 0)
INSERT [dbo].[M_submenu] ([intsubmenuid], [vchsubmenu], [intmainid], [intActiveid]) VALUES (3, N'Report1', 2, 0)
INSERT [dbo].[M_submenu] ([intsubmenuid], [vchsubmenu], [intmainid], [intActiveid]) VALUES (4, N'Report2', 2, 0)
INSERT [dbo].[M_submenu] ([intsubmenuid], [vchsubmenu], [intmainid], [intActiveid]) VALUES (5, N'Master3', 1, 0)
SET IDENTITY_INSERT [dbo].[M_submenu] OFF
SET IDENTITY_INSERT [dbo].[M_T_AdminConsole] ON 

INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (1, 0, N'Master Configuration', NULL)
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (2, 1, N'Sub Menu Page1', N'../Url/')
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (3, 1, N'sub menu page 1', N'../url/')
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (4, 0, N'page 2', NULL)
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (10, 4, N'sub menu page 2', N'../url/')
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (11, 4, N'sub menu page 2', N',,//sd/')
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (12, 4, N'sub menu page 2', N'''url''')
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (13, 0, N'Industry Master', N'Home/index')
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (14, 0, N'Report', NULL)
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (15, 14, N'Sub report', N'Home/index')
INSERT [dbo].[M_T_AdminConsole] ([MenuId], [Submenuid], [Menu], [MenuUrl]) VALUES (16, 0, N'Add Menu', N'Insertusermenu')
SET IDENTITY_INSERT [dbo].[M_T_AdminConsole] OFF
SET IDENTITY_INSERT [dbo].[M_USER] ON 

INSERT [dbo].[M_USER] ([userId], [vchUserName], [vchPassword], [intRoleid], [intDeletedflag]) VALUES (1, N'MANOJ', N'1234', 1, 0)
INSERT [dbo].[M_USER] ([userId], [vchUserName], [vchPassword], [intRoleid], [intDeletedflag]) VALUES (2, N'NAYAK', N'1234', 2, 0)
INSERT [dbo].[M_USER] ([userId], [vchUserName], [vchPassword], [intRoleid], [intDeletedflag]) VALUES (3, N'KIRAN', N'1234', 1, 0)
INSERT [dbo].[M_USER] ([userId], [vchUserName], [vchPassword], [intRoleid], [intDeletedflag]) VALUES (4, N'ANKITA', N'1234', 2, 0)
SET IDENTITY_INSERT [dbo].[M_USER] OFF
/****** Object:  StoredProcedure [dbo].[M_USP_LOG]    Script Date: 5/10/2023 10:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[M_USP_LOG] 
(
@vchControllerName varchar(100)=null,
@vchActionMethodName varchar(100)=null,
@vchExceptionMessage varchar(max)=null
)
as
begin
insert into m_log values(@vchControllerName,@vchActionMethodName,@vchExceptionMessage)

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_AdminConsoleUserInsert]    Script Date: 5/10/2023 10:24:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_AdminConsoleUserInsert]
(
@menuid int=0,
@userid int=0,
@permission int=0,
@intmsgout int out
)
as
begin
IF EXISTS (SELECT * FROM M_adminconsole WHERE intuserid =@userid and intmanuid=@menuid) 
begin
--update M_adminconsole set intdeletedflag=1 where intuserid =@userid and intmanuid=@menuid

--insert into M_adminconsole(intmanuid,intuserid,intPermission,intdeletedflag)values(@menuid,@userid,@permission,0)

set @intmsgout=1;

end
else
begin
insert into M_adminconsole(intmanuid,intuserid,intPermission,intdeletedflag)values(@menuid,@userid,@permission,0)

set @intmsgout=1;
end

end
GO
