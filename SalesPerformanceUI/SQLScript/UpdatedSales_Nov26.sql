/****** Object:  Table [dbo].[ProducerCodeMaster]    Script Date: 11/26/2021 2:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerCodeMaster](
	[ProducerCodeId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProducerCode] [nvarchar](20) NULL,
	[ProducerName] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProducerCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 11/26/2021 2:54:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProducerCodeMaster] ON 
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (1, N'BA0001', N'RISK MANAGEMENT SERVICES', CAST(N'2020-08-14T03:08:23.590' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (2, N'BA0002', N'MUSCAT INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.607' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (3, N'BA0003', N'INSURANCE MANAGEMENT SERVICES', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (4, N'BA0004', N'AON MAJAN LLC', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (5, N'BA0005', N'MARSH OMAN', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (6, N'BA0006', N'TRADE LINKS & SERVICES LLC', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (7, N'BA0007', N'C.E. HEATH & PARTNERS L.L.C.', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (8, N'BA0008', N'INSURANCE SERVICE CENTRE', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (9, N'BA0009', N'CAPITAL INSURANCE CO. LLC', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (10, N'BA0010', N'ARMOUR INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (11, N'BA0011', N'ASSARAIN INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.610' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (12, N'BA0012', N'OISB', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (13, N'BA0013', N'AL JAZEERA INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (14, N'BA0014', N'Al Amaana Insurance Services', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (15, N'BA0015', N'Reyadh Al Khatwah Trading', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (16, N'BA0016', N'Al Falah Al Zahibi Trad & Cont LLC', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (17, N'BA0017', N'Remal Al Qabil Trading', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (18, N'BA0018', N'The Mountain Wolf  L.L.C', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (19, N'BA0019', N'Fasterz Trade International', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (20, N'BA0020', N'Diamond Road Trading', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (21, N'BA0021', N'Zahir United LLC', CAST(N'2020-08-14T03:08:23.613' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (22, N'BA0022', N'Nizwa Window Trad.', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (23, N'BA0023', N'Ibn Al Shirawi Trading', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (24, N'BA0024', N'Al Moram Co. Limitted LLC', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (25, N'BA0025', N'Klaah Al Malada Trad. & Cont', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (26, N'BA0026', N'Safety City Trading LLC', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (27, N'BA0027', N'Al Wasal United L.L.C', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (28, N'BA0028', N'Hameed Bin Salem Bin Saeed Al Shibly', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (29, N'BA0029', N'Al Sharqiya General Insurance Services', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (30, N'BA0030', N'M/s. Moosa Abdul Rahman Hassan & Co. LLC', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (31, N'BA0031', N'The Mountain Wolf LLC.', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (32, N'BA0032', N'SALAAM INSURANCE', CAST(N'2020-08-14T03:08:23.617' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (33, N'BA0033', N'SOHAR INSURANCE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (34, N'BA0034', N'The Modern Region Ent.', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (35, N'BA0035', N'AL HANA MODERN ENTERPRISE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (36, N'BA0036', N'Dot International LLC', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (37, N'BA0037', N'JADAWI AL SHARQIA TRDG.', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (38, N'BA0038', N'AL HANA MODERN ENTERPRISE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (39, N'BA0039', N'AL FAIRUZ INSURANCE SERVICES CO.', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (40, N'BA0040', N'THE CASTLE INSURANCE SERVICE', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (41, N'BA0041', N'ZAHARAT AL HANA TRADING', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (42, N'BA0042', N'ARABIAN EXPERTISE HOUSE LLC', CAST(N'2020-08-14T03:08:23.620' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (43, N'BA0043', N'AL MURSI TRADING', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (44, N'BA0044', N'REZA TRADING', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (45, N'BA0045', N'OMAN ARAB BANK', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (46, N'BA0046', N'AL SHABAB AL WATANIYA ENT.', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (47, N'BA0047', N'MUSHAREEA AL SHABAB AL WATANIYA', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (48, N'BA0048', N'INFOLINE LLC', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (49, N'BA0049', N'AL RAIS TRADING', CAST(N'2020-08-14T03:08:23.623' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (50, N'BA0050', N'SUHAIL BAHWAN - NISSAN', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (51, N'BA0051', N'MAIZE TRD. CONT. EST', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (52, N'BA0052', N'OMAN TRADING EST', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (53, N'BA0053', N'MAZAYA MUSCAT LLC', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (54, N'BA0054', N'DIRECT LINE LLC', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (55, N'BA0055', N'MAIZ ENTERPRISES TRADING', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (56, N'BA0056', N'Global United Insurance Services Co.', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (57, N'BA0057', N'M/S TOWEL AUTO CENTRE L.L.C', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (58, N'BA0058', N'M/S CRESENT GLOBAL', CAST(N'2020-08-14T03:08:23.627' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (59, N'BA0059', N'UNITED FINANCE COMPANY', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (60, N'BA0060', N'ORYX INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (61, N'BA0061', N'FIRST POLICY INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (62, N'BA0062', N'High Capacity Trading LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (63, N'BA0063', N'PWS GULF LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (64, N'BA0064', N'SUN INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (65, N'BA0065', N'OISB (SOHAR)', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (66, N'BA0066', N'AL FAJAR INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (67, N'BA0067', N'AL FAJAR INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (68, N'BA0068', N'TRUST INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (69, N'BA0069', N'REGAL INSURANCE MANAGEMENT SERVICES LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (70, N'BA0070', N'RUKHN AL BASHASHA TRAD', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (71, N'BA0071', N'GULF INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.630' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (72, N'BA0074', N'CAPITAL INSURANCE SERVICES SALALAH', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (73, N'BA0075', N'UNITED INSURANCES SERVICES LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (74, N'BA0076', N'MUSCAT FINANCE CO LTD', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (75, N'BA0077', N'MAHINDRA INSURANCE BROKERS', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (76, N'BA0078', N'ISI BROKER', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (77, N'BA0079', N'AL-QANDEEL INSURANCE SERVICE LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (78, N'BA0080', N'RAZAN TRAVEL', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (79, N'BA0081', N'KHIMIJI RAMDAS INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (80, N'BA0082', N'NEW OMAN INSURANCE & REINSURANCE SERVICE', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (81, N'BA0083', N'INTERNATIONAL TRAVEL & TOURISUM LLC', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (82, N'BA0084', N'ACE BROKER', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (83, N'BA0085', N'AL NAWRAS AL MALAKI INSURANCE BROKERS', CAST(N'2020-08-14T03:08:23.633' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (84, N'BA0086', N'BANK NIZWA S.A.O.G', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (85, N'BA0087', N'GAPCORP INSURANCE  BROKERS', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (86, N'BA0088', N'ALLIANCE INSURANCE BROKER LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (87, N'BA0089', N'HOWDEN INSURANCE BROKERS (S.) PTE. LIMIT', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (88, N'BA0090', N'GLOBAL UNITED INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (89, N'BA0091', N'ASLAF AL - KHAIR INTERNATIONAL LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (90, N'BA0092', N'AL IZZ INSURANCE BROKERS', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (91, N'BA0093', N'NEW GENERATION INSURANCE SERVICES CO LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (92, N'BA0094', N'MODERN GULF INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (93, N'BA0095', N'Al Sharia Business & Services', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (94, N'BA0096', N'AL INMA TRAD. ENTERPRISES', CAST(N'2020-08-14T03:08:23.637' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (95, N'BA0097', N'AL NOWRAS AL LAAMEA TRAD & CONT LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (96, N'BA0098', N'SAMA HARWEEL INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (97, N'BA0099', N'FUTURE SOLUTIONS COMPANY LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (98, N'BA0100', N'SAIH ALMALAH INS BROK LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (99, N'BA0101', N'FASTERZ (HVV)', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (100, N'BA0102', N'PROTECTOPIA INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (101, N'BA0103', N'FUTURE SOLUTIONS COMPANY DEALER BUSINESS', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (102, N'BA0104', N'BEST WISHES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (103, N'BA0105', N'IBN AL-SHIRAWI TRADING LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (104, N'BA0106', N'FENCHURCH FARIS INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (105, N'BA0107', N'Zenith Insurance Services LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (106, N'BA0108', N'MUSCAT INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (107, N'BA0109', N'AL-SAJAYA NATIONAL Ent.', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (108, N'BA0110', N'ARCHIRSOOT TRAD & CONTR CO', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (109, N'BA0111', N'INTERNATIONAL ENTERPRISES LLC', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (110, N'BA0112', N'CLAW SILVER TRADING', CAST(N'2020-08-14T03:08:23.640' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (111, N'BA0113', N'GUARANTEE INSURANCE SERVICE', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (112, N'BA0114', N'AL SALAMAH INSURANCE SERVICES', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (113, N'BA0115', N'NIZWA WINDOW TRAD & CONT LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (114, N'BA0116', N'HOWDEN INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (115, N'BA0117', N'RUKUN ALYAQEEN INSURANCE SERICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (116, N'BA0118', N'MIDDLE EAST INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (117, N'BA0119', N'AL HAYAH INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (118, N'BA0120', N'RAZI INSURANCE AGENCY AND MODERN SERVICES LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (119, N'BA0121', N'AL BATINAH TREASURES INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (120, N'BA0122', N'INSURANCE HOUSE LLC', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (121, N'BA0123', N'WABAS AL ALMIYAH', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (122, N'BA0567', N'Mr.Khimji corporate company', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (123, N'BA0578', N'Mr.JAYARAM', CAST(N'2020-08-14T03:08:23.643' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (124, N'BA0579', N'HAYARAM', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (125, N'BA0889', N'Mr.ANEESH', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (126, N'BA09090', N'credit limit testing', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (127, N'BA0996', N'Mr.CREDIT CONTROL CHECKING', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (128, N'BA0997', N'TEST FST  LAST', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (129, N'BA9987', N'CREDIT LIMIT CHECK CUSTOMER', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (130, N'BA9988', N'NIZWA WINDOW TRAD & CONT LLC NIZWA WINDOW TRAD & CONT LLC', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (131, N'BA9989', N'HOWDEN INSURANCE BROKERS LLC', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (132, N'BA9990', N'AL HAYAH INSURANCE SERVICES LLC', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (133, N'BK0000001', N'BANK TEST', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (134, N'BR0997', N'Mr.TESTING FOR MOTOR', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (135, N'BR0998', N'CREDIT LIMIT CHECKING MOTOR', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (136, N'BR0999', N'Mr.CREDIT LIMIT CHECKING', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (137, N'BR99887', N'hhttuu', CAST(N'2020-08-14T03:08:23.647' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (138, N'BRK1234', N'CC TESTING', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (139, N'BRK8900', N'cc testing today', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (140, N'BRK8999', N'FOR TESTING OF CC', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (141, N'BROK778', N'Mr.GANESH CREDIT LIMIT CHECK', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (142, N'BROK779', N'Mr.AMI TESTING DEC 122016', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (143, N'CHS002', N'M/S.Cash Customers-HO', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (144, N'CL001234', N'name1', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (145, N'CSH001', N'Cash Customers-HO', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (146, N'CSH002', N'Cash Customers-Salalah', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (147, N'CSH003', N'Cash Customers-Sohar', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (148, N'CSH004', N'Cash Customers-Nizwa', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (149, N'CSH005', N'Cash Customers-Seeb', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (150, N'CSH006', N'Cash Customers-SQU', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (151, N'CSH007', N'Cash Customers-MGM Kiosk', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (152, N'CSH008', N'Cash Customers-MGM Corporate Office', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (153, N'CSH009', N'Cash Customers-LULU Avenue Mall Kiosk', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (154, N'CSH010', N'Cash Customers-CBD', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (155, N'CSH011', N'Cash Customers-Ruwi Rex Road', CAST(N'2020-08-14T03:08:23.650' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (156, N'CSH012', N'Cash Customers-Walk Mall Kiosk', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (157, N'CSH013', N'Cash Customers-Panorama Mall Kiosk', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (158, N'CSH014', N'Cash Customers-Amarat', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (159, N'CSH015', N'Cash Customers-Barka', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (160, N'CSH016', N'Cash Customers-Barka', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (161, N'CSHONL', N'Cash Customers-Online', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (162, N'GA0012', N'ganesh', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (163, N'IL0217', N'Mr.KHALID JUMA HARIB HASSAN AL SARMI', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (164, N'ME0001', N'Naveed Shafi', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (165, N'ME0002', N'Abdul Khaliq Abdul Rahman', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (166, N'ME0003', N'Ranganathan Chakrapani', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (167, N'ME0004', N'Fayaz Ahmed', CAST(N'2020-08-14T03:08:23.653' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (168, N'ME0005', N'Chander Prakash', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (169, N'ME0007', N'Sreedhar', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (170, N'ME0008', N'Ahmed Berham', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (171, N'ME0009', N'Qasim Al Ghafri', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (172, N'ME0010', N'Naeema Al Hinai', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (173, N'ME0011', N'Talib Al Kharusi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (174, N'ME0012', N'Mohammed Qasim', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (175, N'ME0014', N'SYED NAZEER AHMED', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (176, N'ME0015', N'EMAN SAID AL GHADANI', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (177, N'ME0016', N'SAMAR SAMIR AL ZIDJALI', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (178, N'ME0017', N'TEHFEEN PANWALA', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (179, N'ME0018', N'Abdulaziz Al Mahthoor', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (180, N'ME0019', N'Sheikha Dawood Alawi Al Araimi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (181, N'ME0020', N'Ghalib AL-Busaidi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (182, N'ME0021', N'Abdul Hakeem AL Rashdi', CAST(N'2020-08-14T03:08:23.657' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (183, N'ME0022', N'HILAL SALEH AL SHAQSI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (184, N'ME0023', N'MAHMOOD NASSER AL OMAIRI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (185, N'ME0024', N'Fathi Al Riyami', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (186, N'ME0025', N'SUMAIYA MOHAMMED AL NASIRI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (187, N'ME0026', N'SAIF AL HASHMI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (188, N'SH001', N'Ms.Kothar AL-Zadjali', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (189, N'SH002', N'Mr.Hamed AL-Siyabi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (190, N'SH003', N'Mr.Nasser AL-Gharibi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (191, N'SH004', N'Mr.Ahmed AL-talaai', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (192, N'SH005', N'Mr.Ghaith AL-Maghribi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (193, N'SH006', N'Ms.Tahani Abdullah Al Najadi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (194, N'SH007', N'Ms.Ahad Ali Al Wahaibi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (195, N'SH008', N'Ms.Israa Zayid Khalifa Al Kindi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (196, N'SH009', N'Mr.Emad Khalid Ali Al Bulushi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (197, N'SH010', N'Mr.Mohammed Sameer Al kindi', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (198, N'SH011', N'Mr.DAWOOD SULAIMAN AL WAHAIBI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (199, N'SH012', N'Mr.FAYADH NASSER AL HADI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (200, N'SH013', N'Ms.MARYAM YOUNIS AL ZADJALI', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (201, N'SH014', N'Mr.Muadh Khamis Salim Al Hinai', CAST(N'2020-08-14T03:08:23.660' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (202, N'SH015', N'Ms.Khulood Sadiq Al Ajmi', CAST(N'2020-08-14T03:08:23.663' AS DateTime), NULL)
GO
INSERT [dbo].[ProducerCodeMaster] ([ProducerCodeId], [ProducerCode], [ProducerName], [CreatedAt], [CreatedBy]) VALUES (203, N'SH016', N'Mr.Saif Al Said', CAST(N'2020-08-14T03:08:23.663' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[ProducerCodeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleMaster] ON 
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName]) VALUES (2, N'Agent')
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName]) VALUES (3, N'Broker')
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName]) VALUES (4, N'Branches')
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName]) VALUES (5, N'DirectSales')
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName]) VALUES (6, N'CallingAgent')
GO
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
GO
ALTER TABLE [dbo].[ProducerCodeMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]


go

create proc [dbo].[SP_GetMISDashBoard] (@Producer     nvarchar(50),
                                       @ProducerName nvarchar(50))
as
  begin
      declare @TotalAvailableProspects    bigint,
              @TotalConvertedProspects    bigint,
              @TotalLostProspects         bigint,
              @TotalAvailablePolicies     bigint,
              @TotalApprovedPolicies      bigint,
              @TotalLostPolicies          bigint,
              @TotalAvailableStrikeReport bigint,
              @TotalApprovedStrikeReport  bigint,
              @TotalLostStrikeReport      bigint,
              @TotalAvailablePremium      bigint,
              @TotalApprovedPremium       bigint,
              @TotalLostPremium           bigint

      set @TotalAvailableProspects=(select Count(1)
                                    from   AddProspect
                                    where  Producer = @Producer
                                           and @ProducerName = ProducerName
                                            OR ISNULL(@Producer, '') = ''
                                            OR ISNULL(@ProducerName, '') = '')
      --where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
      set @TotalConvertedProspects =(select Count(1)
                                     from   AddProspect
                                     where  Producer = @Producer
                                            and @ProducerName = ProducerName
                                             OR ISNULL(@Producer, '') = ''
                                             OR ISNULL(@ProducerName, '') = ''
                                                and Status = 'Converted')
      set @TotalLostProspects =(select Count(1)
                                from   AddProspect
                                where  Status = 'Lost'
                                       and Producer = @Producer
                                       and @ProducerName = ProducerName
                                        OR ISNULL(@Producer, '') = ''
                                        OR ISNULL(@ProducerName, '') = '')
      set @TotalAvailablePolicies=(select Count(1)
                                   from   TargetFixing
                                   where  Producer = @Producer
                                          and @ProducerName = ProducerName
                                           OR ISNULL(@Producer, '') = ''
                                           OR ISNULL(@ProducerName, '') = '')
      --where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
      set @TotalApprovedPolicies =(select Count(1)
                                   from   TargetFixing
                                   where  Status = 'Approved'
                                          and Producer = @Producer
                                          and @ProducerName = ProducerName
                                           OR ISNULL(@Producer, '') = ''
                                           OR ISNULL(@ProducerName, '') = '')
      set @TotalLostPolicies =(select Count(1)
                               from   TargetFixing
                               where  Status = 'Lost'
                                      and Producer = @Producer
                                      and @ProducerName = ProducerName
                                       OR ISNULL(@Producer, '') = ''
                                       OR ISNULL(@ProducerName, '') = '')
      set @TotalAvailableStrikeReport=(select Count(1)
                                       from   TargetFixing
                                       where  Producer = @Producer
                                              and @ProducerName = ProducerName
                                               OR ISNULL(@Producer, '') = ''
                                               OR ISNULL(@ProducerName, '') = ''
                                      )
      --where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
      set @TotalApprovedStrikeReport =(select Count(1)
                                       from   TargetFixing
                                       where  Status = 'Approved'
                                              and Producer = @Producer
                                              and @ProducerName = ProducerName
                                               OR ISNULL(@Producer, '') = ''
                                               OR ISNULL(@ProducerName, '') = ''
                                      )
      set @TotalLostStrikeReport =(select Count(1)
                                   from   TargetFixing
                                   where  Status = 'Lost'
                                          and Producer = @Producer
                                          and @ProducerName = ProducerName
                                           OR ISNULL(@Producer, '') = ''
                                           OR ISNULL(@ProducerName, '') = '')
      set @TotalAvailablePremium=(select Sum(Cast(RenewalBase AS BIGINT))
                                  from   TargetFixing
                                  where  Producer = @Producer
                                         and @ProducerName = ProducerName
                                          OR ISNULL(@Producer, '') = ''
                                          OR ISNULL(@ProducerName, '') = '')
      --where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
      set @TotalApprovedPremium =(select Sum(Cast(RenewalBase AS BIGINT))
                                  from   TargetFixing
                                  where  Status = 'Approved'
                                         and Producer = @Producer
                                         and @ProducerName = ProducerName
                                          OR ISNULL(@Producer, '') = ''
                                          OR ISNULL(@ProducerName, '') = '')
      set @TotalLostPremium =(select Sum(Cast(RenewalBase AS BIGINT))
                              from   TargetFixing
                              where  Status = 'Lost'
                                     and Producer = @Producer
                                     and @ProducerName = ProducerName
                                      OR ISNULL(@Producer, '') = ''
                                      OR ISNULL(@ProducerName, '') = '')
      SET NOCOUNT ON;

      select isnull(@TotalAvailableProspects, 0)    as TotalAvailableProspects,
             isnull(@TotalConvertedProspects, 0)    as TotalConvertedProspects,
             isnull(@TotalLostProspects, 0)         as TotalLostProspects,

             isnull(@TotalAvailablePolicies, 0)     as TotalAvailablePolicies,
             isnull(@TotalApprovedPolicies, 0)      as TotalApprovedPolicies,
             isnull(@TotalLostPolicies, 0)          as TotalLostPolicies,

             isnull(@TotalAvailablePremium, 0)		as TotalAvailablePremium,
             isnull(@TotalApprovedStrikeReport, 0)  as TotalApprovedStrikeReport,
             isnull(@TotalLostStrikeReport, 0)      as TotalLostStrikeReport,

			 isnull(@TotalAvailableStrikeReport, 0) as TotalAvailableStrikeReport,
             isnull(@TotalApprovedPremium, 0)		as TotalApprovedPremium,
             isnull(@TotalLostPremium, 0)			as TotalLostPremium
  end 