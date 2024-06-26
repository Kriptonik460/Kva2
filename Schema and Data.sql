USE [Kvaluk2]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 18.04.2024 9:03:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Balance] [decimal](20, 2) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 18.04.2024 9:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[PositinID] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Master]    Script Date: 18.04.2024 9:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[QualificationID] [int] NULL,
	[ReviewID] [int] NULL,
 CONSTRAINT [PK_Master] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 18.04.2024 9:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Qualification]    Script Date: 18.04.2024 9:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Qualification](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Qualification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 18.04.2024 9:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 18.04.2024 9:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[MasterID] [int] NULL,
	[ReviewID] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18.04.2024 9:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (1, CAST(50000.00 AS Decimal(20, 2)), 11)
INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (2, CAST(50000.00 AS Decimal(20, 2)), 12)
INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (3, CAST(50000.00 AS Decimal(20, 2)), 13)
INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (4, CAST(50000.00 AS Decimal(20, 2)), 14)
INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (5, CAST(50000.00 AS Decimal(20, 2)), 15)
INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (6, CAST(50000.00 AS Decimal(20, 2)), 16)
INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (7, CAST(50000.00 AS Decimal(20, 2)), 17)
INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (8, CAST(50000.00 AS Decimal(20, 2)), 18)
INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (9, CAST(50000.00 AS Decimal(20, 2)), 19)
INSERT [dbo].[Customer] ([ID], [Balance], [UserID]) VALUES (10, CAST(50000.00 AS Decimal(20, 2)), 20)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (1, 1, 1)
INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (2, 2, 2)
INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (3, 3, 3)
INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (4, 4, 4)
INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (5, 5, 5)
INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (6, 6, 1)
INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (7, 7, 2)
INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (8, 8, 3)
INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (9, 9, 4)
INSERT [dbo].[Employee] ([ID], [UserID], [PositinID]) VALUES (10, 10, 5)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Master] ON 

INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (1, 21, 1, 1)
INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (2, 22, 2, 2)
INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (3, 23, 3, 3)
INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (4, 24, 4, 4)
INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (5, 25, 5, 5)
INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (6, 26, 1, 1)
INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (7, 27, 2, 2)
INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (8, 28, 3, 3)
INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (9, 29, 4, 4)
INSERT [dbo].[Master] ([ID], [UserID], [QualificationID], [ReviewID]) VALUES (10, 30, 5, 5)
SET IDENTITY_INSERT [dbo].[Master] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([ID], [Title]) VALUES (1, N'Позиция 1')
INSERT [dbo].[Position] ([ID], [Title]) VALUES (2, N'Позиция 2')
INSERT [dbo].[Position] ([ID], [Title]) VALUES (3, N'Позиция 3')
INSERT [dbo].[Position] ([ID], [Title]) VALUES (4, N'Позиция 4')
INSERT [dbo].[Position] ([ID], [Title]) VALUES (5, N'Позиция 5')
INSERT [dbo].[Position] ([ID], [Title]) VALUES (6, N'Позиция 6')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Qualification] ON 

INSERT [dbo].[Qualification] ([ID], [Title]) VALUES (1, N'1')
INSERT [dbo].[Qualification] ([ID], [Title]) VALUES (2, N'2')
INSERT [dbo].[Qualification] ([ID], [Title]) VALUES (3, N'3')
INSERT [dbo].[Qualification] ([ID], [Title]) VALUES (4, N'4')
INSERT [dbo].[Qualification] ([ID], [Title]) VALUES (5, N'5')
SET IDENTITY_INSERT [dbo].[Qualification] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([ID], [Text]) VALUES (1, N'Название 1')
INSERT [dbo].[Review] ([ID], [Text]) VALUES (2, N'Название 2')
INSERT [dbo].[Review] ([ID], [Text]) VALUES (3, N'Название 3')
INSERT [dbo].[Review] ([ID], [Text]) VALUES (4, N'Название 4')
INSERT [dbo].[Review] ([ID], [Text]) VALUES (5, N'Название 5')
INSERT [dbo].[Review] ([ID], [Text]) VALUES (6, N'Название 6')
INSERT [dbo].[Review] ([ID], [Text]) VALUES (7, N'Название 7')
INSERT [dbo].[Review] ([ID], [Text]) VALUES (8, N'Название 8')
INSERT [dbo].[Review] ([ID], [Text]) VALUES (9, N'Название 9')
INSERT [dbo].[Review] ([ID], [Text]) VALUES (10, N'Название 10')
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (1, N'Название 1', 1, 1, CAST(N'2024-04-18' AS Date))
INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (2, N'Название 2', 1, 2, CAST(N'2024-04-18' AS Date))
INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (3, N'Название 3', 1, 3, CAST(N'2024-04-18' AS Date))
INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (4, N'Название 4', 1, 4, CAST(N'2024-04-18' AS Date))
INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (5, N'Название 5', 1, 5, CAST(N'2024-04-18' AS Date))
INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (6, N'Название 6', 1, 6, CAST(N'2024-04-18' AS Date))
INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (7, N'Название 7', 1, 7, CAST(N'2024-04-18' AS Date))
INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (8, N'Название 8', 1, 8, CAST(N'2024-04-18' AS Date))
INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (9, N'Название 9', 1, 9, CAST(N'2024-04-18' AS Date))
INSERT [dbo].[Service] ([ID], [Title], [MasterID], [ReviewID], [Date]) VALUES (10, N'Название 10', 1, 10, CAST(N'2024-04-18' AS Date))
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (1, N'AlphaUser', N'alpha_user123', N'P@ssw0rd!')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (2, N'Beta123', N'beta_1234', N'BetaPass!789')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (3, N'Charlie22', N'charlie22_login', N'C@rl!e@22')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (4, N'DeltaUser', N'delta_456', N'Delt@P@55')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (5, N'Echo2024', N'echo_login2024', N'Ech0P@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (6, N'FoxtrotUser', N'foxtrot_login', N'F0xtrot_789!')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (7, N'GammaX', N'gamma_x_login', N'G@mm@_X2024')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (8, N'Hotel7', N'hotel_7_login', N'H0telP@ssword')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (9, N'IndiaAlpha', N'indiaalpha123', N'Ind!@Alpha456')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (10, N'JuliettUser', N'juliett_login', N'Jul!3ttP@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (11, N'Kilo2024', N'kilo_login22', N'K!l0@P@ss22')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (12, N'LimaXray', N'lima_xray_login', N'L!m@Xr@y2024')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (13, N'MikeUser', N'mike_user123', N'M!k3_U$3rP@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (14, N'November22', N'november_login', N'N0v3mb3rP@ss!')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (15, N'Oscar123', N'oscar_login456', N'0sc@rP@ss789')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (16, N'PapaUser', N'papa_user_login', N'P@p@_L0g!n')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (17, N'Quebec2024', N'quebec_login', N'Qu3b3c@P@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (18, N'RomeoX', N'romeo_x_login', N'R0me0X_P@ss!')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (19, N'SierraUser', N'sierra123_login', N'S!3rr@Us3rP@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (20, N'Tango55', N'tango_login2024', N'T@ng0_55P@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (21, N'UniformXray', N'uniform_xray', N'Un!f0rmXr@y123')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (22, N'VictorUser', N'victor_login456', N'V!ct0rP@ss789')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (23, N'Whiskey22', N'whiskey_login', N'Wh!skey22P@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (24, N'XrayUser', N'xray_user123', N'Xr@y_Us3r456')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (25, N'Yankee123', N'yankee_login', N'Y@nk33_123P@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (26, N'Zulu2024', N'zulu_login2024', N'Zulu2024_P@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (27, N'AlphaBravo', N'alpha_bravo_login', N'@lph@Br@v0!234')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (28, N'Bravo1234', N'bravo_1234_login', N'Br@v0P@ss1234')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (29, N'CharlieX', N'charlie_x_login', N'Ch@rl!3Xr@y789')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (30, N'DeltaUser22', N'delta_login22', N'D3lt@22P@ss!')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (31, N'EchoUser2024', N'echo_user_login', N'3ch0U$3rP@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (32, N'Foxtrot123', N'foxtrot123_login', N'F0xtrotP@ss22')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (33, N'GolfXray', N'golf_xray_login', N'G0lfXr@y!234')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (34, N'HotelUser22', N'hotel_login22', N'H0t3l!P@ssw0rd')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (35, N'India22', N'india_login22', N'Ind!@L0g!n2024')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (36, N'JuliettUser123', N'juliett_user123', N'Jul!3ttP@ss456')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (37, N'Kilo2024X', N'kilo2024_login', N'K!l0X2024P@ss')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (38, N'LimaUser', N'lima_user_login', N'L!m@Us3rP@ss789')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (39, N'Mike123', N'mike123_login', N'M!k3P@ssw0rd123')
INSERT [dbo].[User] ([ID], [Username], [Login], [Password]) VALUES (40, N'NovemberUser', N'november_user_login', N'N0v3mb3rUs3rP@ss')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_User]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([PositinID])
REFERENCES [dbo].[Position] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_User]
GO
ALTER TABLE [dbo].[Master]  WITH CHECK ADD  CONSTRAINT [FK_Master_Qualification] FOREIGN KEY([QualificationID])
REFERENCES [dbo].[Qualification] ([ID])
GO
ALTER TABLE [dbo].[Master] CHECK CONSTRAINT [FK_Master_Qualification]
GO
ALTER TABLE [dbo].[Master]  WITH CHECK ADD  CONSTRAINT [FK_Master_Review] FOREIGN KEY([ReviewID])
REFERENCES [dbo].[Review] ([ID])
GO
ALTER TABLE [dbo].[Master] CHECK CONSTRAINT [FK_Master_Review]
GO
ALTER TABLE [dbo].[Master]  WITH CHECK ADD  CONSTRAINT [FK_Master_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Master] CHECK CONSTRAINT [FK_Master_User]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Master] FOREIGN KEY([MasterID])
REFERENCES [dbo].[Master] ([ID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Master]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Review] FOREIGN KEY([ReviewID])
REFERENCES [dbo].[Review] ([ID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Review]
GO
