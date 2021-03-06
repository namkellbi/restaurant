USE [restaurant]
GO
/****** Object:  Table [dbo].[category]    Script Date: 9/2/2021 4:56:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[is_menu] [bit] NULL,
	[is_process] [bit] NULL,
	[status] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contact]    Script Date: 9/2/2021 4:56:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[staff_id] [int] NULL,
	[description] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[image]    Script Date: 9/2/2021 4:56:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[menu_id] [int] NULL,
	[product_id] [int] NULL,
	[staff_id] [int] NULL,
	[status] [bit] NULL,
	[is_avatar] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[menu]    Script Date: 9/2/2021 4:56:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[unit_id] [int] NULL,
	[name] [nvarchar](255) NULL,
	[price] [bigint] NULL,
	[status] [bit] NULL,
	[description] [nvarchar](255) NULL,
	[sold_quantity] [int] NULL,
	[best_seller] [bit] NULL,
	[time_table_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[staff]    Script Date: 9/2/2021 4:56:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[skill] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[table_reservation]    Script Date: 9/2/2021 4:56:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_reservation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](25) NOT NULL,
	[numberOfGuest] [int] NULL,
	[dateTable] [bigint] NULL,
	[timeTable] [bigint] NULL,
	[message] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[time_table]    Script Date: 9/2/2021 4:56:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[time_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[unit]    Script Date: 9/2/2021 4:56:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[status] [bit] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [name], [is_menu], [is_process], [status]) VALUES (1, N'Drink', 0, 0, 1)
INSERT [dbo].[category] ([id], [name], [is_menu], [is_process], [status]) VALUES (2, N'Food', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[contact] ON 

INSERT [dbo].[contact] ([id], [phone], [email], [staff_id], [description]) VALUES (1, N'0967.445.450<br>0168.33.22292', N'namkellbi@gmail.com<br>hoainam.fptu@gmail.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[contact] OFF
SET IDENTITY_INSERT [dbo].[image] ON 

INSERT [dbo].[image] ([id], [name], [menu_id], [product_id], [staff_id], [status], [is_avatar]) VALUES (1, N'tab-item-01.png', 1, 1, 1, 1, 1)
INSERT [dbo].[image] ([id], [name], [menu_id], [product_id], [staff_id], [status], [is_avatar]) VALUES (2, N'tab-item-02.png', 1, 1, 1, 1, 0)
INSERT [dbo].[image] ([id], [name], [menu_id], [product_id], [staff_id], [status], [is_avatar]) VALUES (3, N'tab-item-03.png', 1, 1, 1, 1, 0)
INSERT [dbo].[image] ([id], [name], [menu_id], [product_id], [staff_id], [status], [is_avatar]) VALUES (4, N'tab-item-04.png', 1, 1, 1, 1, 1)
INSERT [dbo].[image] ([id], [name], [menu_id], [product_id], [staff_id], [status], [is_avatar]) VALUES (5, N'tab-item-05.png', 1, 1, 1, 1, 0)
INSERT [dbo].[image] ([id], [name], [menu_id], [product_id], [staff_id], [status], [is_avatar]) VALUES (6, N'tab-item-06.png', 1, 1, 1, 1, 0)
INSERT [dbo].[image] ([id], [name], [menu_id], [product_id], [staff_id], [status], [is_avatar]) VALUES (7, N'tab-item-01.png', 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[image] OFF
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([id], [category_id], [unit_id], [name], [price], [status], [description], [sold_quantity], [best_seller], [time_table_id]) VALUES (1, 2, 1, N'Fresh Chicken Salad', 10000, 1, N'Fresh Chicken Salad'', N''Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 20, 1, 1)
INSERT [dbo].[menu] ([id], [category_id], [unit_id], [name], [price], [status], [description], [sold_quantity], [best_seller], [time_table_id]) VALUES (2, 1, 1, N'Orange Juice', 10000, 1, N'Fresh Chicken Salad'', N''Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 20, 1, 2)
INSERT [dbo].[menu] ([id], [category_id], [unit_id], [name], [price], [status], [description], [sold_quantity], [best_seller], [time_table_id]) VALUES (3, 1, 1, N'Beef Stake', 10000, 1, N'Fresh Chicken Salad'', N''Lorem ipsum dolor sit amet, consectetur koit adipiscing elit, sed do.', 20, 1, 3)
SET IDENTITY_INSERT [dbo].[menu] OFF
SET IDENTITY_INSERT [dbo].[staff] ON 

INSERT [dbo].[staff] ([id], [name], [skill], [image]) VALUES (1, N'Randy Walker', N'Pastry Chef', N'chefs-01.jpg')
INSERT [dbo].[staff] ([id], [name], [skill], [image]) VALUES (2, N'David Martin', N'Cookie Chef', N'chefs-02.jpg')
INSERT [dbo].[staff] ([id], [name], [skill], [image]) VALUES (3, N'Peter Perkson', N'Pancake Chef', N'chefs-03.jpg')
SET IDENTITY_INSERT [dbo].[staff] OFF
SET IDENTITY_INSERT [dbo].[table_reservation] ON 

INSERT [dbo].[table_reservation] ([id], [name], [email], [phone], [numberOfGuest], [dateTable], [timeTable], [message]) VALUES (1, N'NGuyen Hoai Nam', N'', N'967445450', NULL, NULL, NULL, N'')
INSERT [dbo].[table_reservation] ([id], [name], [email], [phone], [numberOfGuest], [dateTable], [timeTable], [message]) VALUES (2, N'NGuyen Hoai Nam', N'nam@gmail.com', N'967445450', NULL, NULL, NULL, N'')
INSERT [dbo].[table_reservation] ([id], [name], [email], [phone], [numberOfGuest], [dateTable], [timeTable], [message]) VALUES (3, N'NGuyen Hoai Nam', N'nam@gmail.com', N'967445450', 11, 5456156151, 5625966, N'abctest')
SET IDENTITY_INSERT [dbo].[table_reservation] OFF
SET IDENTITY_INSERT [dbo].[time_table] ON 

INSERT [dbo].[time_table] ([id], [name]) VALUES (1, N'breakfast')
INSERT [dbo].[time_table] ([id], [name]) VALUES (2, N'lunch')
INSERT [dbo].[time_table] ([id], [name]) VALUES (3, N'dinner')
SET IDENTITY_INSERT [dbo].[time_table] OFF
SET IDENTITY_INSERT [dbo].[unit] ON 

INSERT [dbo].[unit] ([id], [name], [status]) VALUES (1, N'box', 1)
INSERT [dbo].[unit] ([id], [name], [status]) VALUES (2, N'bottle', 1)
INSERT [dbo].[unit] ([id], [name], [status]) VALUES (3, N'can', 1)
SET IDENTITY_INSERT [dbo].[unit] OFF
