/****** Object:  Table [dbo].[Department]    Script Date: 11/29/2013 21:58:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
DROP TABLE [dbo].[Department]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 11/29/2013 21:58:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Document]') AND type in (N'U'))
DROP TABLE [dbo].[Document]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11/29/2013 21:58:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Income]    Script Date: 11/29/2013 21:58:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Income]') AND type in (N'U'))
DROP TABLE [dbo].[Income]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 11/29/2013 21:58:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Position]') AND type in (N'U'))
DROP TABLE [dbo].[Position]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 11/29/2013 21:58:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Record]') AND type in (N'U'))
DROP TABLE [dbo].[Record]
GO
/****** Object:  Table [dbo].[Time_off]    Script Date: 11/29/2013 21:58:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Time_off]') AND type in (N'U'))
DROP TABLE [dbo].[Time_off]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/29/2013 21:58:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/29/2013 21:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_password] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_email] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_full_name] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[Time_off]    Script Date: 11/29/2013 21:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Time_off]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Time_off](
	[time_off_id] [int] IDENTITY(1,1) NOT NULL,
	[employee] [int] NULL,
	[time_off_start_date] [date] NULL,
	[time_off_end_date] [date] NULL,
	[time_off_paid_days] [int] NULL,
	[time_off_type] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[time_off_approved] [bit] NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[Time_off] ON
INSERT [dbo].[Time_off] ([time_off_id], [employee], [time_off_start_date], [time_off_end_date], [time_off_paid_days], [time_off_type], [time_off_approved]) VALUES (1, 10, CAST(0xAE370B00 AS Date), CAST(0xCE370B00 AS Date), 10, N'vacation                                          ', 0)
SET IDENTITY_INSERT [dbo].[Time_off] OFF
/****** Object:  Table [dbo].[Record]    Script Date: 11/29/2013 21:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Record]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Record](
	[record_id] [int] IDENTITY(1,1) NOT NULL,
	[employee] [int] NULL,
	[record_number] [numeric](18, 0) NULL,
	[record_issue_date] [date] NULL,
	[record_expire_date] [date] NULL,
	[record_type] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[record_note] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[record_approved] [bit] NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[Record] ON
INSERT [dbo].[Record] ([record_id], [employee], [record_number], [record_issue_date], [record_expire_date], [record_type], [record_note], [record_approved]) VALUES (1, 10, CAST(1065559898 AS Numeric(18, 0)), CAST(0xD3340B00 AS Date), CAST(0xED370B00 AS Date), N'Medical Insurrance                                ', N'this is a note                                    ', 0)
INSERT [dbo].[Record] ([record_id], [employee], [record_number], [record_issue_date], [record_expire_date], [record_type], [record_note], [record_approved]) VALUES (2, 10, CAST(1065559898 AS Numeric(18, 0)), CAST(0xD3340B00 AS Date), CAST(0xED370B00 AS Date), N'Medical Insurrance                                ', N'                                                  ', 0)
INSERT [dbo].[Record] ([record_id], [employee], [record_number], [record_issue_date], [record_expire_date], [record_type], [record_note], [record_approved]) VALUES (3, 10, CAST(1065559898 AS Numeric(18, 0)), CAST(0xD3340B00 AS Date), CAST(0xED370B00 AS Date), N'                                                  ', N'                                                  ', 0)
SET IDENTITY_INSERT [dbo].[Record] OFF
/****** Object:  Table [dbo].[Position]    Script Date: 11/29/2013 21:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Position]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Position](
	[position_id] [int] IDENTITY(1,1) NOT NULL,
	[position_name] [nchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[Position] ON
INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (1, N'Manager                       ')
INSERT [dbo].[Position] ([position_id], [position_name]) VALUES (2, N'Sales Rep                     ')
SET IDENTITY_INSERT [dbo].[Position] OFF
/****** Object:  Table [dbo].[Income]    Script Date: 11/29/2013 21:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Income]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Income](
	[income_id] [int] IDENTITY(1,1) NOT NULL,
	[employee] [int] NOT NULL,
	[income_type] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[income_amount] [numeric](18, 2) NULL,
	[income_per] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11/29/2013 21:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_SSN] [numeric](18, 0) NULL,
	[employee_firstName] [nchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_middleInital] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_lastName] [nchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_dob] [date] NULL,
	[employee_gender] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_working_status] [int] NULL,
	[employee_contract] [nchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_hoursPerDay] [int] NULL,
	[employee_firstDay] [date] NULL,
	[employee_position] [int] NULL,
	[employee_approved] [bit] NULL,
	[employee_created_at] [datetime] NULL,
	[employee_address1] [nchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_address2] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_city] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_state] [nchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_zip_code] [numeric](5, 0) NULL,
	[employee_phone] [numeric](11, 0) NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([employee_id], [employee_SSN], [employee_firstName], [employee_middleInital], [employee_lastName], [employee_dob], [employee_gender], [employee_working_status], [employee_contract], [employee_hoursPerDay], [employee_firstDay], [employee_position], [employee_approved], [employee_created_at], [employee_address1], [employee_address2], [employee_city], [employee_state], [employee_zip_code], [employee_phone]) VALUES (3, CAST(123456789 AS Numeric(18, 0)), N'Othman              ', N'K', N'Abahossain          ', CAST(0x78140B00 AS Date), N'M', 1, N'FULL TIME           ', 8, CAST(0x94360B00 AS Date), 1, 1, CAST(0x0000000000001772 AS DateTime), N'1398 St paul ve                                                                                     ', N'apt 16                                            ', N'st paul                                           ', N'MN', CAST(55116 AS Numeric(5, 0)), CAST(6122274312 AS Numeric(11, 0)))
INSERT [dbo].[Employee] ([employee_id], [employee_SSN], [employee_firstName], [employee_middleInital], [employee_lastName], [employee_dob], [employee_gender], [employee_working_status], [employee_contract], [employee_hoursPerDay], [employee_firstDay], [employee_position], [employee_approved], [employee_created_at], [employee_address1], [employee_address2], [employee_city], [employee_state], [employee_zip_code], [employee_phone]) VALUES (10, CAST(12345 AS Numeric(18, 0)), N'Ahmed               ', N'K', N'REalltWor           ', CAST(0x78140B00 AS Date), N'M', 1, N'Full Time           ', 8, CAST(0xB0370B00 AS Date), 1, 0, CAST(0x0000A284009109B0 AS DateTime), N'1398 ST PAUL AVE                                                                                    ', N'APT #16                                           ', N'Saint Paul                                        ', N'MN', CAST(55116 AS Numeric(5, 0)), CAST(554226477 AS Numeric(11, 0)))
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[Document]    Script Date: 11/29/2013 21:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Document]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Document](
	[document_id] [int] IDENTITY(1,1) NOT NULL,
	[employee] [int] NULL,
	[document_name] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[document_path] [nchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[document_size] [int] NULL,
	[document_note] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[Department]    Script Date: 11/29/2013 21:58:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Department](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
