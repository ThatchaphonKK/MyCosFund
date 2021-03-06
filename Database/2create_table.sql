USE [mycos_fund]
GO
/****** Object:  Table [dbo].[emp_salary_statement]    Script Date: 3/5/2021 2:04:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp_salary_statement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[empid] [int] NULL,
	[years] [int] NULL,
	[salary] [decimal](10, 2) NULL,
	[pvd_fund_rate] [int] NULL,
 CONSTRAINT [PK_emp_salary_statement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee]    Script Date: 3/5/2021 2:04:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[start_work_date] [date] NOT NULL,
	[salary] [decimal](10, 2) NOT NULL,
	[pvd_fund_rate] [decimal](4, 2) NOT NULL,
 CONSTRAINT [PK_providence_fund] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[emp_salary_statement] ON 

INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (1, 1, 2004, CAST(46000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (2, 1, 2005, CAST(46000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (3, 1, 2006, CAST(46000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (4, 1, 2007, CAST(46000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (5, 1, 2008, CAST(46000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (6, 1, 2009, CAST(46000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (7, 1, 2010, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (8, 1, 2011, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (9, 1, 2012, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (10, 1, 2013, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (11, 1, 2014, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (12, 1, 2015, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (13, 1, 2016, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (14, 1, 2017, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (15, 1, 2018, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (16, 1, 2019, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (17, 1, 2020, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (18, 1, 2021, CAST(46000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (19, 2, 2008, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (20, 2, 2009, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (21, 2, 2010, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (22, 2, 2011, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (23, 2, 2012, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (24, 2, 2013, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (25, 2, 2014, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (26, 2, 2015, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (27, 2, 2016, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (28, 2, 2017, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (29, 2, 2018, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (30, 2, 2019, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (31, 2, 2020, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (32, 2, 2021, CAST(25000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (33, 3, 2016, CAST(21000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (34, 3, 2017, CAST(21000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (35, 3, 2018, CAST(21000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (36, 3, 2019, CAST(21000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (37, 3, 2020, CAST(21000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (38, 3, 2021, CAST(21000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (39, 4, 2014, CAST(35000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (40, 4, 2015, CAST(35000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (41, 4, 2016, CAST(35000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (42, 4, 2017, CAST(35000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (43, 4, 2018, CAST(35000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (44, 4, 2019, CAST(35000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (45, 4, 2020, CAST(35000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (46, 4, 2021, CAST(35000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (47, 5, 2018, CAST(23000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (48, 5, 2019, CAST(23000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (49, 5, 2020, CAST(23000.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[emp_salary_statement] ([id], [empid], [years], [salary], [pvd_fund_rate]) VALUES (50, 5, 2021, CAST(23000.00 AS Decimal(10, 2)), 4)
SET IDENTITY_INSERT [dbo].[emp_salary_statement] OFF
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([id], [first_name], [last_name], [date_of_birth], [start_work_date], [salary], [pvd_fund_rate]) VALUES (1, N'John', N'Wick', CAST(N'1964-09-02' AS Date), CAST(N'2004-03-01' AS Date), CAST(46000.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(4, 2)))
INSERT [dbo].[employee] ([id], [first_name], [last_name], [date_of_birth], [start_work_date], [salary], [pvd_fund_rate]) VALUES (2, N'Beyoncé', N'Knowles', CAST(N'1981-09-04' AS Date), CAST(N'2008-09-16' AS Date), CAST(25000.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(4, 2)))
INSERT [dbo].[employee] ([id], [first_name], [last_name], [date_of_birth], [start_work_date], [salary], [pvd_fund_rate]) VALUES (3, N'Justin', N'Bieber', CAST(N'1994-03-01' AS Date), CAST(N'2016-12-01' AS Date), CAST(21000.00 AS Decimal(10, 2)), CAST(3.00 AS Decimal(4, 2)))
INSERT [dbo].[employee] ([id], [first_name], [last_name], [date_of_birth], [start_work_date], [salary], [pvd_fund_rate]) VALUES (4, N'Justin', N'Timerlake', CAST(N'1981-01-31' AS Date), CAST(N'2014-01-20' AS Date), CAST(35000.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[employee] ([id], [first_name], [last_name], [date_of_birth], [start_work_date], [salary], [pvd_fund_rate]) VALUES (5, N'Taylor', N'Swift', CAST(N'1989-12-13' AS Date), CAST(N'2018-05-01' AS Date), CAST(23000.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(4, 2)))
SET IDENTITY_INSERT [dbo].[employee] OFF
ALTER TABLE [dbo].[emp_salary_statement]  WITH CHECK ADD  CONSTRAINT [FK_emp_salary_statement_employee] FOREIGN KEY([empid])
REFERENCES [dbo].[employee] ([id])
GO
ALTER TABLE [dbo].[emp_salary_statement] CHECK CONSTRAINT [FK_emp_salary_statement_employee]
GO
