/****** Object:  Table [dbo].[ExamOrder]    Script Date: 14.06.2024 16:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamOrder](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[OrderPickupCode] [int] NOT NULL,
 CONSTRAINT [PK__ExamOrde__C3905BAFC7CC9AED] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamOrderProduct]    Script Date: 14.06.2024 16:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamOrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[Amount] [smallint] NOT NULL,
 CONSTRAINT [PK__ExamOrde__817A266255BBC081] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamPickupPoint]    Script Date: 14.06.2024 16:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamPickupPoint](
	[OrderPickupPoint] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ExamPickupPoint] PRIMARY KEY CLUSTERED 
(
	[OrderPickupPoint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamProduct]    Script Date: 14.06.2024 16:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamProduct](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductPhoto] [nvarchar](max) NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__ExamProd__2EA7DCD5BF55BCD9] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamRole]    Script Date: 14.06.2024 16:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamRole](
	[RoleID] [tinyint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__ExamRole__8AFACE3AA2D40FB8] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamUser]    Script Date: 14.06.2024 16:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [tinyint] NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__ExamUser__1788CCAC0829F7A9] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ExamOrder] ON 
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (1, 1, N'Новый ', CAST(N'2022-05-04T00:00:00.000' AS DateTime), CAST(N'2022-05-10T00:00:00.000' AS DateTime), 24, 201)
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (2, NULL, N'Новый ', CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-11T00:00:00.000' AS DateTime), 25, 202)
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (3, 2, N'Новый ', CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 26, 203)
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (4, NULL, N'Новый ', CAST(N'2022-05-07T00:00:00.000' AS DateTime), CAST(N'2022-05-13T00:00:00.000' AS DateTime), 27, 204)
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (5, 3, N'Новый ', CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-14T00:00:00.000' AS DateTime), 28, 205)
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (6, NULL, N'Новый ', CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2022-05-15T00:00:00.000' AS DateTime), 29, 206)
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (7, NULL, N'Новый ', CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), 30, 207)
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (8, NULL, N'Новый ', CAST(N'2022-05-11T00:00:00.000' AS DateTime), CAST(N'2022-05-17T00:00:00.000' AS DateTime), 31, 208)
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (9, 4, N'Новый ', CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2022-05-18T00:00:00.000' AS DateTime), 32, 209)
GO
INSERT [dbo].[ExamOrder] ([OrderID], [UserID], [OrderStatus], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderPickupCode]) VALUES (10, NULL, N'Завершен', CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2022-05-19T00:00:00.000' AS DateTime), 33, 210)
GO
SET IDENTITY_INSERT [dbo].[ExamOrder] OFF
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (1, N'F893T5', 2)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (1, N'А112Т4', 2)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (2, N'E530Y6', 1)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (2, N'F346G5', 2)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (3, N'D344Y7', 2)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (3, N'J432E4', 1)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (4, N'D378D3', 2)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (4, N'E245R5', 1)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (5, N'H732R5', 3)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (5, N'R464G6', 2)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (6, N'E573G6', 3)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (6, N'K535G6', 3)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (7, N'F344S4', 6)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (7, N'G532R5', 5)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (8, N'D526R4', 5)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (8, N'S753T5', 4)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (9, N'A436H7', 3)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (9, N'V472S3', 3)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (10, N'E479G6', 1)
GO
INSERT [dbo].[ExamOrderProduct] ([OrderID], [ProductArticleNumber], [Amount]) VALUES (10, N'O875F6', 4)
GO
SET IDENTITY_INSERT [dbo].[ExamPickupPoint] ON 
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (1, N'344288, г. Ангарск, ул. Чехова, 1')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (2, N'614164, г.Ангарск,  ул. Степная, 30')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (3, N'394242, г. Ангарск, ул. Коммунистическая, 43')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (4, N'660540, г. Ангарск, ул. Солнечная, 25')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (5, N'125837, г. Ангарск, ул. Шоссейная, 40')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (6, N'125703, г. Ангарск, ул. Партизанская, 49')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (7, N'625283, г. Ангарск, ул. Победы, 46')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (8, N'614611, г. Ангарск, ул. Молодежная, 50')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (9, N'454311, г.Ангарск, ул. Новая, 19')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (10, N'660007, г.Ангарск, ул. Октябрьская, 19')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (11, N'603036, г. Ангарск, ул. Садовая, 4')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (12, N'450983, г.Ангарск, ул. Комсомольская, 26')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (13, N'394782, г. Ангарск, ул. Чехова, 3')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (14, N'603002, г. Ангарск, ул. Дзержинского, 28')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (15, N'450558, г. Ангарск, ул. Набережная, 30')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (16, N'394060, г.Ангарск, ул. Фрунзе, 43')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (17, N'410661, г. Ангарск, ул. Школьная, 50')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (18, N'625590, г. Ангарск, ул. Коммунистическая, 20')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (19, N'625683, г. Ангарск, ул. 8 Марта')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (20, N'400562, г. Ангарск, ул. Зеленая, 32')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (21, N'614510, г. Ангарск, ул. Маяковского, 47')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (22, N'410542, г. Ангарск, ул. Светлая, 46')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (23, N'620839, г. Ангарск, ул. Цветочная, 8')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (24, N'443890, г. Ангарск, ул. Коммунистическая, 1')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (25, N'603379, г. Ангарск, ул. Спортивная, 46')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (26, N'603721, г. Ангарск, ул. Гоголя, 41')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (27, N'410172, г. Ангарск, ул. Северная, 13')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (28, N'420151, г. Ангарск, ул. Вишневая, 32')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (29, N'125061, г. Ангарск, ул. Подгорная, 8')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (30, N'630370, г. Ангарск, ул. Шоссейная, 24')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (31, N'614753, г. Ангарск, ул. Полевая, 35')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (32, N'426030, г. Ангарск, ул. Маяковского, 44')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (33, N'450375, г. Ангарск ул. Клубная, 44')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (34, N'625560, г. Ангарск, ул. Некрасова, 12')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (35, N'630201, г. Ангарск, ул. Комсомольская, 17')
GO
INSERT [dbo].[ExamPickupPoint] ([OrderPickupPoint], [Address]) VALUES (36, N'190949, г. Ангарск, ул. Мичурина, 26')
GO
SET IDENTITY_INSERT [dbo].[ExamPickupPoint] OFF
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'A436H7', N'Тени Георгий Амням', N'Легкий и воздушный', N'Косметика', N'1', N'ВикторЭндАдольф', CAST(2399.0000 AS Decimal(19, 4)), 99, 16, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'D344Y7', N'Тени Анастасия', N'С нотами банного веника', N'Косметика', N'1', N'ООО Тётя Настя ', CAST(31999.0000 AS Decimal(19, 4)), 13, 47, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'D378D3', N'Парфюм Джакобс ', N'Ну так пойдет', N'Парфюмерия', N'1', N'ЯкобсМарк', CAST(12799.0000 AS Decimal(19, 4)), 18, 266, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'D526R4', N'Парфюм Виктор', N'Сладкий и яркий, как шоколад', N'Парфюмерия', N'1', N'ООО ИнвестицияКрасоты', CAST(1499.0000 AS Decimal(19, 4)), 45, 84, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'E245R5', N'Парфюм Гучи', N'Вдохновленный летом', N'Парфюмерия', N'1', N'Гучи', CAST(16099.0000 AS Decimal(19, 4)), 18, 100, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'E479G6', N'Помада C# Ubuntu', N'Великий и ужасный', N'Косметика', N'1', N'ВизуалСтудио Энтертеймент', CAST(1099.0000 AS Decimal(19, 4)), 0, 0, N'Нет в наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'E530Y6', N'Тональный крем Икс Флёур', N'Максимальное покрытие', N'Косметика', N'1', N'Студия Красоты', CAST(4899.0000 AS Decimal(19, 4)), 7, 20, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'E573G6', N'Тени Урбантикай', N'Теплый приём', N'Косметика', N'1', N'Нарс', CAST(41999.0000 AS Decimal(19, 4)), 40, 41, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'F344S4', N'Тушь ТуФейсит', N'Цвет фуксия', N'Косметика', N'1', N'Студия Красоты', CAST(9999.0000 AS Decimal(19, 4)), 25, 18, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'F346G5', N'Бальзам для губ ДиорЛип', N'Уникальный', N'Косметика', N'1', N'Диор', CAST(1499.0000 AS Decimal(19, 4)), 11, 45, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'F893T5', N'Парфюм Цеханели', N'Легендарный мужской', N'Парфюмерия', N'1', N'Мак Студия', CAST(6499.0000 AS Decimal(19, 4)), 6, 19, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'G532R5', N'Парфюм Том Форд', N'Объёмный запах', N'Парфюмерия', N'1', N'ДольчеМилк', CAST(47199.0000 AS Decimal(19, 4)), 40, 56, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'H732R5', N'Блеск для губ Бьюти Блос', N'Ультраглянц', N'Косметика', N'1', N'ФентиБьюти', CAST(32199.0000 AS Decimal(19, 4)), 18, 410, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'J432E4', N'Парфюм какой-то евес Сейнт', N'Соблазнительный', N'Парфюмерия', N'1', N'ОБС студио', CAST(4899.0000 AS Decimal(19, 4)), 12, 150, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'K535G6', N'Парфюм Ламком', N'Ноты ириса', N'Парфюмерия', N'1', N'Нарс', CAST(65099.0000 AS Decimal(19, 4)), 20, 88, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'O875F6', N'Помада А4', N'Высокое покрытие', N'Косметика', N'1', N'Влад Бумага', CAST(2799.0000 AS Decimal(19, 4)), 30, 41, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'R464G6', N'Консиллер Нарс', N'Идеальный макияж', N'Косметика', N'1', N'ДольчеМилк', CAST(12599.0000 AS Decimal(19, 4)), 18, 11, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'S753T5', N'Бронзер Рандомный Эффект', N'Матовый', N'Косметика', N'1', N'Студия Рандом', CAST(1099.0000 AS Decimal(19, 4)), 45, 83, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'V472S3', N'Крем ТартеШапе', N'От загара и перегара', N'Косметика', N'1', N'ТомФорд', CAST(1999.0000 AS Decimal(19, 4)), 45, 75, N'В наличии')
GO
INSERT [dbo].[ExamProduct] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus]) VALUES (N'А112Т4', N'Парфюм Шанель', N'Легендарный женский', N'Парфюмерия', N'1', N'Кокошанель', CAST(1299.0000 AS Decimal(19, 4)), 5, 10, N'В наличии')
GO
SET IDENTITY_INSERT [dbo].[ExamRole] ON 
GO
INSERT [dbo].[ExamRole] ([RoleID], [RoleName]) VALUES (1, N'Менеджер
')
GO
INSERT [dbo].[ExamRole] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
GO
INSERT [dbo].[ExamRole] ([RoleID], [RoleName]) VALUES (3, N'Администратор')
GO
SET IDENTITY_INSERT [dbo].[ExamRole] OFF
GO
SET IDENTITY_INSERT [dbo].[ExamUser] ON 
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (1, 1, N'Константинова ', N'Вероника', N'Агафоновна', N'loginDEsgg2018', N'qhgYnW')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (2, 2, N'Меркушев ', N'Мартын', N'Федотович', N'loginDEdcd2018', N'LxR6YI')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (3, 1, N'Казаков ', N'Федот', N'Кондратович', N'loginDEisg2018', N'Cp8ddU')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (4, 3, N'Карпов ', N'Улеб', N' Леонидович', N'loginDEcph2018', N'7YpE0p')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (5, 2, N'Королёв ', N'Матвей', N'Вадимович', N'loginDEgco2018', N'nMr|ss')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (6, 2, N'Юдин ', N'Герман', N' Кондратович', N'loginDEwjg2018', N'9UfqWQ')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (7, 3, N'Беляева ', N'Анна', N' Вячеславовна', N'loginDEjbz2018', N'xIAWNI')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (8, 1, N'Беляев ', N'Валентин', N'Артёмович', N'loginDEmgu2018', N'0gC3bk')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (9, 1, N'Семёнов ', N'Герман', N'Дмитрьевич', N'loginDErdg2018', N'ni0ue0')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (10, 2, N'Шестаков ', N'Илья', N'Антонинович', N'loginDEjtv2018', N'f2ZaN6')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (11, 2, N'Власов ', N'Вадим', N' Васильевич', N'loginDEtfj2018', N'{{ksPn')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (12, 3, N'Савельев ', N'Арсений', N' Авксентьевич', N'loginDEpnb2018', N'{ADBdc')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (13, 3, N'Ефимов ', N'Руслан', N'Якунович', N'loginDEzer2018', N'5&R+zs')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (14, 2, N'Бурова ', N'Марфа', N' Федотовна', N'loginDEiin2018', N'y9l*b}')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (15, 2, N'Селезнёв ', N'Александр', N' Никитевич', N'loginDEqda2018', N'|h+r}I')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (16, 2, N'Кулакова ', N'Виктория', N' Георгьевна', N'loginDEbnj2018', N'12345')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (17, 2, N'Дорофеева ', N'Кира', N'Демьяновна', N'loginDEqte2018', N'dC8bDI')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (18, 2, N'Сафонова ', N'Нинель', N'Якововна', N'loginDEfeo2018', N'8cI7vq')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (19, 2, N'Ситникова ', N'София', N'Лукьевна', N'loginDEvni2018', N'e4pVIv')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (20, 1, N'Медведев ', N'Ириней', N' Геннадьевич', N'loginDEjis2018', N'A9K++2')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (21, 1, N'Суханова ', N'Евгения', N' Улебовна', N'loginDExvv2018', N'R1zh}|')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (22, 1, N'Игнатьев ', N'Владлен', N'Дамирович', N'loginDEadl2018', N'F&IWf4')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (23, 2, N'Ефремов ', N'Христофор', N' Владиславович', N'loginDEyzn2018', N'P1v24R')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (24, 2, N'Кошелев ', N'Ростислав', N'Куприянович', N'loginDEphn2018', N'F}jGsJ')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (25, 3, N'Галкина ', N'Тамара', N'Авксентьевна', N'loginDEdvk2018', N'NKNkup')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (26, 1, N'Журавлёва ', N'Вера', N'Арсеньевна', N'loginDEtld2018', N'c+CECK')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (27, 3, N'Савина ', N'Таисия', N'Глебовна', N'loginDEima2018', N'XK3sOA')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (28, 2, N'Иванов ', N'Яков', N'Мэлорович', N'loginDEyfe2018', N'4Bbzpa')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (29, 1, N'Лыткин ', N'Ким', N' Алексеевич', N'loginDEwqc2018', N'vRtAP*')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (30, 1, N'Логинов ', N'Федот', N'Святославович', N'loginDEgtt2018', N'7YD|BR')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (31, 1, N'Русакова ', N'Марина', N'Юлиановна', N'loginDEiwl2018', N'LhlmIl')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (32, 3, N'Константинов ', N'Пётр', N'Кондратович', N'loginDEyvi2018', N'22beR}')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (33, 2, N'Поляков ', N'Анатолий', N' Игоревич', N'loginDEtfz2018', N'uQY0ZQ')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (34, 3, N'Панфилова ', N'Василиса', N'Григорьевна', N'loginDEikb2018', N'*QkUxc')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (35, 2, N'Воробьёв ', N'Герман', N' Романович', N'loginDEdmi2018', N'HOGFbU')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (36, 3, N'Андреев ', N'Ростислав', N'Федосеевич', N'loginDEtlo2018', N'58Jxrg')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (37, 3, N'Бобров ', N'Агафон', N'Владимирович', N'loginDEsnd2018', N'lLHqZf')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (38, 3, N'Лапин ', N'Алексей', N'Витальевич', N'loginDEgno2018', N'4fqLiO')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (39, 2, N'Шестаков ', N'Авдей', N'Иванович', N'loginDEgnl2018', N'wdio{u')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (40, 2, N'Гаврилова ', N'Алина', N'Эдуардовна', N'loginDEzna2018', N'yz1iMB')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (41, 1, N'Жуков ', N'Юлиан', N'Валерьянович', N'loginDEsyh2018', N'&4jYGs')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (42, 2, N'Пономарёв ', N'Максим', N'Альвианович', N'loginDExex2018', N'rnh36{')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (43, 1, N'Зиновьева ', N'Мария', N'Лаврентьевна', N'loginDEdjm2018', N'KjI1JR')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (44, 2, N'Осипов ', N'Артём', N'Мэлорович', N'loginDEgup2018', N'36|KhF')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (45, 3, N'Лапин ', N'Вячеслав', N'Геласьевич', N'loginDEdat2018', N'ussd8Q')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (46, 2, N'Зуев ', N'Ириней', N'Вадимович', N'loginDEffj2018', N'cJP+HC')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (47, 1, N'Коновалова ', N'Агафья', N' Митрофановна', N'loginDEisp2018', N'dfz5Ii')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (48, 1, N'Исаев ', N'Дмитрий', N'Аристархович', N'loginDEfrp2018', N'6dcR|9')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (49, 2, N'Белозёрова ', N'Алевтина', N'Лаврентьевна', N'loginDEaee2018', N'5&qONH')
GO
INSERT [dbo].[ExamUser] ([UserID], [RoleID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (50, 2, N'Самсонов ', N'Агафон', N'Максимович', N'loginDEthu2018', N'|0xWzV')
GO
SET IDENTITY_INSERT [dbo].[ExamUser] OFF
GO
ALTER TABLE [dbo].[ExamOrder]  WITH CHECK ADD  CONSTRAINT [FK_ExamOrder_ExamPickupPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[ExamPickupPoint] ([OrderPickupPoint])
GO
ALTER TABLE [dbo].[ExamOrder] CHECK CONSTRAINT [FK_ExamOrder_ExamPickupPoint]
GO
ALTER TABLE [dbo].[ExamOrder]  WITH CHECK ADD  CONSTRAINT [FK_ExamOrder_ExamUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[ExamUser] ([UserID])
GO
ALTER TABLE [dbo].[ExamOrder] CHECK CONSTRAINT [FK_ExamOrder_ExamUser]
GO
ALTER TABLE [dbo].[ExamOrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__ExamOrder__Order__403A8C7D] FOREIGN KEY([OrderID])
REFERENCES [dbo].[ExamOrder] ([OrderID])
GO
ALTER TABLE [dbo].[ExamOrderProduct] CHECK CONSTRAINT [FK__ExamOrder__Order__403A8C7D]
GO
ALTER TABLE [dbo].[ExamOrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__ExamOrder__Produ__412EB0B6] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[ExamProduct] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[ExamOrderProduct] CHECK CONSTRAINT [FK__ExamOrder__Produ__412EB0B6]
GO
ALTER TABLE [dbo].[ExamUser]  WITH CHECK ADD  CONSTRAINT [FK_ExamUser_ExamRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[ExamRole] ([RoleID])
GO
ALTER TABLE [dbo].[ExamUser] CHECK CONSTRAINT [FK_ExamUser_ExamRole]
GO
