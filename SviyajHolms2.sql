USE [master]
GO
/****** Object:  Database [SwiyaghHolms]    Script Date: 08.10.2022 9:51:26 ******/
CREATE DATABASE [SwiyaghHolms]
 
GO
ALTER DATABASE [SwiyaghHolms] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET ARITHABORT OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SwiyaghHolms] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SwiyaghHolms] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SwiyaghHolms] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SwiyaghHolms] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SwiyaghHolms] SET  MULTI_USER 
GO
ALTER DATABASE [SwiyaghHolms] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SwiyaghHolms] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SwiyaghHolms] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SwiyaghHolms] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SwiyaghHolms] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SwiyaghHolms] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SwiyaghHolms] SET QUERY_STORE = OFF
GO
USE [SwiyaghHolms]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 08.10.2022 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Familiya] [nvarchar](20) NOT NULL,
	[Imya] [nvarchar](20) NOT NULL,
	[Otchestvo] [nvarchar](20) NULL,
	[ID] [int] NOT NULL,
	[Pasport] [nchar](10) NOT NULL,
	[DataRoghdeniya] [date] NOT NULL,
	[Adres] [nvarchar](max) NOT NULL,
	[Pochta] [nvarchar](50) NOT NULL,
	[Parol] [nchar](7) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doljnost]    Script Date: 08.10.2022 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doljnost](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naimenovanie] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Doljnost] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudniki]    Script Date: 08.10.2022 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudniki](
	[ID] [nchar](6) NOT NULL,
	[IDDoljnost] [int] NOT NULL,
	[Familiya] [nvarchar](20) NOT NULL,
	[Imya] [nvarchar](20) NOT NULL,
	[Otchestvo] [nvarchar](20) NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Parol] [nchar](6) NOT NULL,
	[PoslVhod] [datetime] NOT NULL,
	[IDTipVhoda] [int] NOT NULL,
	[Foto] [image] NULL,
 CONSTRAINT [PK_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusZakaza]    Script Date: 08.10.2022 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusZakaza](
	[ID] [int] NOT NULL,
	[StatusZ] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_StatusZakaza] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipVhoda]    Script Date: 08.10.2022 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipVhoda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StatusV] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_TipVhoda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uslugi]    Script Date: 08.10.2022 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uslugi](
	[ID] [int] NOT NULL,
	[Naimenovanie] [nvarchar](50) NOT NULL,
	[Kod] [nvarchar](15) NOT NULL,
	[Stoimost] [money] NOT NULL,
 CONSTRAINT [PK_Uslugi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UslugiZakaza]    Script Date: 08.10.2022 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UslugiZakaza](
	[IDZakaz] [int] NOT NULL,
	[IDUsluga] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakazi]    Script Date: 08.10.2022 9:51:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakazi](
	[ID] [int] NOT NULL,
	[KodZakaza] [nchar](19) NOT NULL,
	[DataSozdaniya] [date] NOT NULL,
	[VremyaZakaza] [time](0) NOT NULL,
	[KodKlienta] [int] NOT NULL,
	[IDStatus] [int] NOT NULL,
	[DataZakritiya] [date] NULL,
	[VremyaProkata] [int] NOT NULL,
 CONSTRAINT [PK_Zakazi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Фролов', N'Андрей', N'Иванович', 45462526, N'1180176596', CAST(N'2001-07-14' AS Date), N'344288, г. Казань, ул. Чехова, 1, кв. 34', N'gohufreilagrau-3818@yopmail.com', N'cl12345')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Николаев', N'Даниил', N'Всеволодович', 45462527, N'2280223523', CAST(N'2001-02-10' AS Date), N'614164, г. Казань, ул. Степная, 30, кв. 75', N'xawugosune-1385@yopmail.com', N'cl12346')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Снегирев', N'Макар', N'Иванович', 45462528, N'4560354155', CAST(N'1998-05-21' AS Date), N'394242, г. Казань, ул. Коммунистическая, 43, кв. 57', N'satrahuddusei-4458@yopmail.com', N'cl12347')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Иванов', N'Иван', N'Ильич', 45462529, N'9120554296', CAST(N'1998-10-01' AS Date), N'660540, г. Казань, ул. Солнечная, 25, кв. 78', N'boippaxeufrepra-7093@yopmail.com', N'cl12348')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Филиппова', N'Анна', N'Глебовна', 45462530, N'2367558134', CAST(N'1976-05-31' AS Date), N'125837, г. Казань, ул. Шоссейная, 40, кв. 92', N'zapramaxesu-7741@yopmail.com', N'cl12349')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Иванов', N'Михаил', N'Владимирович', 45462531, N'7101669343', CAST(N'1985-11-04' AS Date), N'125703, г. Казань, ул. Партизанская, 49, кв. 84', N'rouzecroummegre-3899@yopmail.com', N'cl12350')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Власов', N'Дмитрий', N'Александрович', 45462532, N'3455719630', CAST(N'1998-08-17' AS Date), N'625283, г. Казань, ул. Победы, 46, кв. 7', N'ziyeuddocrabri-4748@yopmail.com', N'cl12351')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Серова', N'Екатерина', N'Львовна', 45462533, N'2377871623', CAST(N'1984-10-24' AS Date), N'614611, г. Казань, ул. Молодежная, 50, кв. 78', N'ketameissoinnei-1951@yopmail.com', N'cl12352')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Борисова', N'Ирина', N'Ивановна', 45462534, N'8755921148', CAST(N'1976-10-14' AS Date), N'454311, г. Казань, ул. Новая, 19, кв. 78', N'yipraubaponou-5849@yopmail.com', N'cl12353')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Зайцев', N'Никита', N'Артёмович', 45462535, N'4355104594', CAST(N'1999-10-14' AS Date), N'660007, г. Казань, ул. Октябрьская, 19, кв. 42', N'crapedocouca-3572@yopmail.com', N'cl12354')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Медведев', N'Святослав', N'Евгеньевич', 45462536, N'2791114390', CAST(N'1985-07-13' AS Date), N'603036, г. Казань, ул. Садовая, 4, кв. 13', N'ceigoixakaunni-9227@yopmail.com', N'cl12355')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Коротков', N'Кирилл', N'Алексеевич', 45462537, N'5582126286', CAST(N'1976-05-26' AS Date), N'450983, г. Казань, ул. Комсомольская, 26, кв. 60', N'yeimmeiwauzomo-7054@yopmail.com', N'cl12356')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Калашникова', N'Арина', N'Максимовна', 45462538, N'2978133653', CAST(N'1999-08-13' AS Date), N'394782, г. Казань, ул. Чехова, 3, кв. 14', N'poleifenevi-1560@yopmail.com', N'cl12357')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Минина', N'Таисия', N'Кирилловна', 45462539, N'7512141956', CAST(N'1985-10-13' AS Date), N'603002, г. Казань, ул. Дзержинского, 28, кв. 56', N'kauprezofautei-6607@yopmail.com', N'cl12358')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Наумов', N'Серафим', N'Романович', 45462540, N'5046158433', CAST(N'1999-04-15' AS Date), N'450558, г. Казань, ул. Набережная, 30, кв. 71', N'quaffaullelourei-1667@yopmail.com', N'cl12359')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Воробьева', N'Василиса', N'Евгеньевна', 45462541, N'2460169505', CAST(N'1999-01-13' AS Date), N'394060, г. Казань, ул. Фрунзе, 43, кв. 79', N'jsteele@rojas-robinson.net', N'cl12360')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Калинин', N'Александр', N'Андреевич', 45462542, N'3412174593', CAST(N'1999-01-07' AS Date), N'410661, г. Казань, ул. Школьная, 50, кв. 53', N'vhopkins@lewis-mullen.com', N'cl12361')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Кузнецова', N'Милана', N'Владиславовна', 45462543, N'4950183034', CAST(N'1999-01-24' AS Date), N'625590, г. Казань, ул. Коммунистическая, 20, кв. 34', N'nlewis@yahoo.com', N'cl12362')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Фирсов', N'Егор', N'Романович', 45462544, N'5829219464', CAST(N'1993-09-02' AS Date), N'625683, г. Казань, ул. 8 Марта, 20, кв. 21', N'garciadavid@mckinney-mcbride.com', N'cl12363')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Зимина', N'Агния', N'Александровна', 45462545, N'6443208059', CAST(N'1998-09-03' AS Date), N'400562, г. Казань, ул. Зеленая, 32, кв. 67', N'cbradley@castro.com', N'cl12364')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Титов', N'Андрей', N'Глебович', 45462546, N'7079213265', CAST(N'1985-10-23' AS Date), N'614510, г. Казань, ул. Маяковского, 47, кв. 72', N'cuevascatherine@carlson.biz', N'cl12365')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Орлов', N'Николай', N'Егорович', 45462547, N'8207522702', CAST(N'1985-07-27' AS Date), N'410542, г. Казань, ул. Светлая, 46, кв. 82', N'thomasmoore@wilson-singh.net', N'cl12366')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Кузнецова', N'Аиша', N'Михайловна', 45462548, N'9307232158', CAST(N'1998-10-04' AS Date), N'620839, г. Казань, ул. Цветочная, 8, кв. 100', N'jessica84@hotmail.com', N'cl12367')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Куликов', N'Никита', N'Георгиевич', 45462549, N'1357242839', CAST(N'1999-04-23' AS Date), N'443890, г. Казань, ул. Коммунистическая, 1, кв. 10', N'jessicapark@hotmail.com', N'cl12368')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Карпова', N'София', N'Егоровна', 45462550, N'1167256636', CAST(N'1993-10-01' AS Date), N'603379, г. Казань, ул. Спортивная, 46, кв. 95', N'ginaritter@schneider-buchanan.com', N'cl12369')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Смирнова', N'Дарья', N'Макаровна', 45462551, N'1768266986', CAST(N'1976-03-22' AS Date), N'603721, г. Казань, ул. Гоголя, 41, кв. 57', N'stephen99@yahoo.com', N'cl12370')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Абрамова', N'Александра', N'Мироновна', 45462552, N'1710427875', CAST(N'1999-03-26' AS Date), N'410172, г. Казань, ул. Северная, 13, кв. 86', N'lopezlisa@hotmail.com', N'cl12371')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Наумов', N'Руслан', N'Михайлович', 45462553, N'1806289145', CAST(N'1999-10-11' AS Date), N'420151, г. Казань, ул. Вишневая, 32, кв. 81', N'lori17@hotmail.com', N'cl12372')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Бочаров', N'Никита', N'Матвеевич', 45462554, N'1587291249', CAST(N'1997-06-29' AS Date), N'125061, г. Казань, ул. Подгорная, 8, кв. 74', N'campbellkevin@gardner.com', N'cl12373')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Соловьев', N'Давид', N'Ильич', 45462555, N'1647306372', CAST(N'1984-03-06' AS Date), N'630370, г. Казань, ул. Шоссейная, 24, кв. 81', N'morganhoward@clark.com', N'cl12374')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Васильева', N'Валерия', N'Дмитриевна', 45462556, N'1742316556', CAST(N'1999-09-30' AS Date), N'614753, г. Казань, ул. Полевая, 35, кв. 39', N'carsontamara@gmail.com', N'cl12375')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Макарова', N'Василиса', N'Андреевна', 45462557, N'1474326347', CAST(N'1999-04-08' AS Date), N'426030, г. Казань, ул. Маяковского, 44, кв. 93', N'kevinpatel@gmail.com', N'cl12376')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Алексеев', N'Матвей', N'Викторович', 45462558, N'1452339539', CAST(N'1998-08-02' AS Date), N'450375, г. Казань, ул. Клубная, 44, кв. 80', N'sethbishop@yahoo.com', N'cl12377')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Никитина', N'Полина', N'Александровна', 45462559, N'2077443480', CAST(N'1976-09-19' AS Date), N'625560, г. Казань, ул. Некрасова, 12, кв. 66', N'drollins@schultz-soto.net', N'cl12378')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Окулова', N'Олеся', N'Алексеевна', 45462560, N'2147357518', CAST(N'1999-04-03' AS Date), N'630201, г. Казань, ул. Комсомольская, 17, кв. 25', N'pblack@copeland-winters.org', N'cl12379')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Захарова', N'Полина', N'Яновна', 45462561, N'2687363884', CAST(N'1976-04-21' AS Date), N'190949, г. Казань, ул. Мичурина, 26, кв. 93', N'johnathon.oberbrunner@yahoo.com', N'cl12380')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Зайцев', N'Владимир', N'Давидович', 45462562, N'2376443711', CAST(N'1998-01-26' AS Date), N'350501, г. Казань, ул. Парковая, 2, кв. 7', N'bradly29@gmail.com', N'cl12381')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Иванов', N'Виталий', N'Даниилович', 45462563, N'2568386237', CAST(N'1976-08-11' AS Date), N'450048, г. Казань, ул. Коммунистическая, 21, кв. 3', N'stark.cristina@hilpert.biz', N'cl12382')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Захаров', N'Матвей', N'Романович', 45462564, N'2556439376', CAST(N'1993-07-12' AS Date), N'644921, г. Казань, ул. Школьная, 46, кв. 37', N'bruen.eleanore@yahoo.com', N'cl12383')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Иванов', N'Степан', N'Степанович', 45462565, N'2737407501', CAST(N'1998-09-19' AS Date), N'614228, г. Казань, ул. Дорожная, 36, кв. 54', N'percival.halvorson@yahoo.com', N'cl12384')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Ткачева', N'Милана', N'Тимуровна', 45462566, N'2581441645', CAST(N'1998-05-24' AS Date), N'350940, г. Казань, ул. Первомайская, 23, кв. 2', N'javonte71@kuhlman.biz', N'cl12385')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Семенов', N'Даниил', N'Иванович', 45462567, N'2675427933', CAST(N'1976-01-04' AS Date), N'344990, г. Казань, ул. Красноармейская, 19, кв. 92', N'vconnelly@kautzer.com', N'cl12386')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Виноградов', N'Вячеслав', N'Дмитриевич', 45462568, N'2967434531', CAST(N'1976-07-12' AS Date), N'410248, г. Казань, ул. Чкалова, 11, кв. 75', N'anabelle07@schultz.info', N'cl12387')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Соболева', N'Николь', N'Фёдоровна', 45462569, N'3070449655', CAST(N'1976-05-02' AS Date), N'400839, г. Казань, ул. 8 Марта, 46, кв. 44', N'nitzsche.katlynn@yahoo.com', N'cl12388')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Тихонова', N'Анна', N'Львовна', 45462570, N'3108451174', CAST(N'1985-03-23' AS Date), N'450539, г. Казань, ул. Заводская, 3, кв. 81', N'corine16@von.com', N'cl12389')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Кузнецова', N'Ульяна', N'Савельевна', 45462571, N'3250464705', CAST(N'1999-06-03' AS Date), N'614591, г. Казань, ул. Цветочная, 20, кв. 40', N'otha.wisozk@lubowitz.org', N'cl12390')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Смирнова', N'Анна', N'Германовна', 45462572, N'3392471644', CAST(N'1997-07-18' AS Date), N'400260, г. Казань, ул. Больничная, 30, кв. 53', N'may.kirlin@hotmail.com', N'cl12391')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Черепанова', N'Анна', N'Давидовна', 45462573, N'3497487819', CAST(N'1985-11-06' AS Date), N'660924, г. Казань, ул. Молодежная, 32, кв. 59', N'bryana.kautzer@yahoo.com', N'cl12392')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Григорьев', N'Максим', N'Кириллович', 45462574, N'3560491260', CAST(N'1999-05-26' AS Date), N'644133, г. Казань, ул. Гагарина, 28, кв. 69', N'deborah.christiansen@quigley.biz', N'cl12393')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Голубев', N'Даниэль', N'Александрович', 45462575, N'3620506034', CAST(N'1999-06-14' AS Date), N'450698, г. Казань, ул. Вокзальная, 14, кв. 37', N'connelly.makayla@yahoo.com', N'cl12394')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Миронов', N'Юрий', N'Денисович', 45462576, N'3774511438', CAST(N'1985-01-26' AS Date), N'620653, г. Казань, ул. Западная, 15, кв. 25', N'tatum.collins@fay.org', N'cl12395')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Терехов', N'Михаил', N'Андреевич', 45462577, N'3862521377', CAST(N'1976-07-06' AS Date), N'644321, г. Казань, ул. Клубная, 32, кв. 10', N'itzel73@anderson.com', N'cl12396')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Орлова', N'Алиса', N'Михайловна', 45462578, N'3084535966', CAST(N'1997-02-24' AS Date), N'603653, г. Казань, ул. Молодежная, 2, кв. 45', N'arjun39@hotmail.com', N'cl12397')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Кулаков', N'Константин', N'Даниилович', 45462579, N'4021541528', CAST(N'1993-06-20' AS Date), N'410181, г. Казань, ул. Механизаторов, 16, кв. 74', N'ohara.rebeka@yahoo.com', N'cl12398')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Кудрявцев', N'Максим', N'Романович', 45462580, N'4109554053', CAST(N'1998-05-10' AS Date), N'394207, г. Казань, ул. Свердлова, 31, кв. 28', N'danika58@rath.com', N'cl12399')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Соболева', N'Кира', N'Фёдоровна', 45462581, N'4537564868', CAST(N'1998-03-14' AS Date), N'420633, г. Казань, ул. Матросова, 18, кв. 41', N'janae.bogan@gmail.com', N'cl12400')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Коновалов', N'Арсений', N'Максимович', 45462582, N'4914572471', CAST(N'1985-02-18' AS Date), N'445720, г. Казань, ул. Матросова, 50, кв. 67', N'vern91@yahoo.com', N'cl12401')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Гусев', N'Михаил', N'Дмитриевич', 45462583, N'4445581302', CAST(N'1999-11-23' AS Date), N'400646, г. Казань, ул. Октябрьская, 47, кв. 65', N'mariana.leannon@larkin.net', N'cl12402')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Суханова', N'Варвара', N'Матвеевна', 45462584, N'4743598180', CAST(N'1993-09-13' AS Date), N'644410, г. Казань, ул. Красная, 17, кв. 69', N'vmoore@gmail.com', N'cl12403')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Орлова', N'Ясмина', N'Васильевна', 45462585, N'4741601821', CAST(N'1984-06-24' AS Date), N'400750, г. Казань, ул. Школьная, 36, кв. 71', N'damon.mcclure@mills.com', N'cl12404')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Васильева', N'Ксения', N'Константиновна', 45462586, N'4783612567', CAST(N'1999-08-01' AS Date), N'660590, г. Казань, ул. Дачная, 37, кв. 70', N'grady.reilly@block.com', N'cl12405')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Борисова', N'Тамара', N'Данииловна', 45462587, N'4658621200', CAST(N'1993-05-29' AS Date), N'426083, г. Казань, ул. Механизаторов, 41, кв. 26', N'boyd.koss@yahoo.com', N'cl12406')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Дмитриев', N'Мирон', N'Ильич', 45462588, N'4908634613', CAST(N'1985-04-13' AS Date), N'410569, г. Казань, ул. Парковая, 36, кв. 17', N'obartell@franecki.info', N'cl12407')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Лебедева', N'Анна', N'Александровна', 45462589, N'5092642468', CAST(N'1985-03-30' AS Date), N'443375, г. Казань, ул. Дзержинского, 50, кв. 95', N'reina75@ferry.net', N'cl12408')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Пономарев', N'Артём', N'Маркович', 45462590, N'5155465274', CAST(N'1984-06-02' AS Date), N'614316, г. Казань, ул. Первомайская, 48, кв. 31', N'karson28@hotmail.com', N'cl12409')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Борисова', N'Елена', N'Михайловна', 45462591, N'5086666893', CAST(N'1976-05-23' AS Date), N'445685, г. Казань, ул. Зеленая, 7, кв. 47', N'damaris61@okon.com', N'cl12410')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Моисеев', N'Камиль', N'Максимович', 45462592, N'5333675375', CAST(N'1999-06-17' AS Date), N'614505, г. Казань, ул. Нагорная, 37, кв. 31', N'carroll.jerod@hotmail.com', N'cl12411')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Герасимова', N'Дарья', N'Константиновна', 45462593, N'5493684572', CAST(N'1984-10-13' AS Date), N'426629, г. Казань, ул. Весенняя, 32, кв. 46', N'ron.treutel@quitzon.com', N'cl12412')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Михайлова', N'Мария', N'Марковна', 45462594, N'5150696226', CAST(N'1976-12-02' AS Date), N'603743, г. Казань, ул. Матросова, 19, кв. 20', N'olen79@yahoo.com', N'cl12413')
INSERT [dbo].[Client] ([Familiya], [Imya], [Otchestvo], [ID], [Pasport], [DataRoghdeniya], [Adres], [Pochta], [Parol]) VALUES (N'Коршунов', N'Кирилл', N'Максимович', 45462595, N'1308703305', CAST(N'1985-05-22' AS Date), N'450750, г. Казань, ул. Клубная, 23, кв. 90', N'pacocha.robbie@yahoo.com', N'cl12414')
GO
SET IDENTITY_INSERT [dbo].[Doljnost] ON 

INSERT [dbo].[Doljnost] ([ID], [Naimenovanie]) VALUES (1, N'Продавец')
INSERT [dbo].[Doljnost] ([ID], [Naimenovanie]) VALUES (2, N'Администратор')
INSERT [dbo].[Doljnost] ([ID], [Naimenovanie]) VALUES (3, N'Старший смены')
SET IDENTITY_INSERT [dbo].[Doljnost] OFF
GO
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 101', 1, N'Иванов', N'Иван', N'Иванович', N'Ivanov@namecomp.ru', N'2L6KZG', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 102', 1, N'Петров', N'Петр', N'Петрович', N'petrov@namecomp.ru', N'uzWC67', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 103', 2, N'Федоров', N'Федор', N'Федорович', N'fedorov@namecomp.ru', N'8ntwUp', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 104', 3, N'Миронов', N'Вениамин', N'Куприянович', N'mironov@namecomp.ru', N'YOyhfR', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 105', 3, N'Ширяев', N'Ермолай', N'Вениаминович', N'shiryev@namecomp.ru', N'RSbvHv', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 106', 3, N'Игнатов', N'Кассиан', N'Васильевич', N'ignatov@namecomp.ru', N'rwVDh9', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 107', 1, N'Хохлов', N'Владимир', N'Мэлсович', N'hohlov@namecomp.ru', N'LdNyos', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 108', 1, N'Стрелков', N'Мстислав', N'Георгьевич', N'strelkov@namecomp.ru', N'gynQMT', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 109', 1, N'Беляева', N'Лилия', N'Наумовна', N'belyeva@@namecomp.ru', N'AtnDjr', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[Sotrudniki] ([ID], [IDDoljnost], [Familiya], [Imya], [Otchestvo], [Login], [Parol], [PoslVhod], [IDTipVhoda], [Foto]) VALUES (N'ID 110', 1, N'Смирнова', N'Ульяна', N'Гордеевна', N'smirnova@@namecomp.ru', N'JlFRCZ', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, NULL)
GO
INSERT [dbo].[StatusZakaza] ([ID], [StatusZ]) VALUES (1, N'Новая')
INSERT [dbo].[StatusZakaza] ([ID], [StatusZ]) VALUES (2, N'Закрыта')
INSERT [dbo].[StatusZakaza] ([ID], [StatusZ]) VALUES (3, N'В прокате')
GO
SET IDENTITY_INSERT [dbo].[TipVhoda] ON 

INSERT [dbo].[TipVhoda] ([ID], [StatusV]) VALUES (1, N'Успешно')
INSERT [dbo].[TipVhoda] ([ID], [StatusV]) VALUES (2, N'Неуспешно')
SET IDENTITY_INSERT [dbo].[TipVhoda] OFF
GO
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (31, N'Прокат сноуборда', N'JUR8R', 1200.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (34, N'Прокат обуви для сноуборда', N'JKFBJ09', 400.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (44, N'Прокат коньков', N'DHBGFY563', 900.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (45, N'Прокат защитных подушек для сноубордистов', N'JFH7382', 300.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (57, N'Подъем на 1 уровень', N'JHVSJF6', 300.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (88, N'Подъем на 2  уровень', N'DJHGBS982', 700.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (89, N'Прокат очков для лыжников', N'OIJNB12', 150.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (92, N'Прокат санок', N'HJBUJE21J', 300.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (98, N'Прокат шлема', N'63748HF', 300.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (99, N'Прокат вартушки', N'BSFBHV63', 100.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (123, N'Подъем на 3 уровень', N'638VVNQ3', 1200.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (336, N'Прокат лыж', N'8HFJHG443', 800.0000)
INSERT [dbo].[Uslugi] ([ID], [Naimenovanie], [Kod], [Stoimost]) VALUES (353, N'Прокат лыжных палок', N'87FDJKHJ', 100.0000)
GO
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (1, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (2, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (3, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (4, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (5, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (6, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (7, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (8, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (9, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (10, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (11, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (12, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (13, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (14, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (15, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (16, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (17, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (18, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (19, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (20, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (21, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (22, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (23, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (24, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (25, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (26, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (27, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (28, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (29, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (30, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (31, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (32, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (33, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (34, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (35, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (36, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (37, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (38, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (39, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (40, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (41, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (42, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (43, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (44, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (45, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (46, 34)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (47, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (48, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (49, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (50, 98)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (1, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (2, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (3, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (4, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (5, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (6, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (7, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (8, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (9, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (10, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (11, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (12, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (13, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (14, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (15, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (16, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (17, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (18, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (19, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (20, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (21, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (22, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (23, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (24, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (25, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (26, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (27, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (28, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (29, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (30, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (31, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (32, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (33, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (34, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (35, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (36, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (37, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (38, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (39, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (40, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (41, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (42, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (43, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (44, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (45, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (46, 31)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (47, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (48, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (49, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (50, 45)
GO
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (1, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (2, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (3, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (4, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (5, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (6, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (7, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (8, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (9, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (10, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (11, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (12, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (13, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (14, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (15, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (16, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (17, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (18, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (19, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (20, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (21, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (22, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (23, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (24, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (25, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (26, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (27, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (28, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (29, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (30, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (31, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (32, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (33, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (34, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (35, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (36, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (37, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (38, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (39, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (40, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (41, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (42, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (43, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (44, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (45, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (46, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (47, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (48, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (49, 57)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (50, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (1, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (2, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (3, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (4, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (5, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (7, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (8, 89)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (9, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (10, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (12, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (14, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (15, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (17, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (19, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (20, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (22, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (23, 92)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (24, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (25, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (27, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (29, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (30, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (32, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (34, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (35, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (37, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (39, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (40, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (42, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (44, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (45, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (47, 99)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (49, 88)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (50, 353)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (2, 123)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (4, 44)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (5, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (9, 45)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (10, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (15, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (20, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (25, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (30, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (35, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (40, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (45, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (50, 336)
INSERT [dbo].[UslugiZakaza] ([IDZakaz], [IDUsluga]) VALUES (5, 34)
GO
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (1, N'45462526/12.03.2022', CAST(N'2022-03-12' AS Date), CAST(N'09:10:00' AS Time), 45462526, 1, NULL, 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (2, N'45462527/13.03.2022', CAST(N'2022-03-13' AS Date), CAST(N'10:10:00' AS Time), 45462527, 3, NULL, 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (3, N'45462528/14.03.2022', CAST(N'2022-03-14' AS Date), CAST(N'11:10:00' AS Time), 45462528, 3, NULL, 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (4, N'45462529/15.03.2022', CAST(N'2022-03-15' AS Date), CAST(N'12:10:00' AS Time), 45462529, 1, NULL, 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (5, N'45462530/16.03.2022', CAST(N'2022-03-16' AS Date), CAST(N'13:10:00' AS Time), 45462530, 2, CAST(N'2022-04-16' AS Date), 320)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (6, N'45462531/17.03.2022', CAST(N'2022-03-17' AS Date), CAST(N'14:10:00' AS Time), 45462531, 1, NULL, 480)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (7, N'45462532/18.03.2022', CAST(N'2022-03-18' AS Date), CAST(N'15:10:00' AS Time), 45462532, 1, NULL, 240)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (8, N'45462533/19.03.2022', CAST(N'2022-03-19' AS Date), CAST(N'16:10:00' AS Time), 45462533, 3, NULL, 360)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (9, N'45462534/20.03.2022', CAST(N'2022-03-20' AS Date), CAST(N'10:00:00' AS Time), 45462534, 3, NULL, 720)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (10, N'45462535/21.03.2022', CAST(N'2022-03-21' AS Date), CAST(N'11:00:00' AS Time), 45462535, 1, NULL, 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (11, N'45462536/22.03.2022', CAST(N'2022-03-22' AS Date), CAST(N'12:00:00' AS Time), 45462536, 2, CAST(N'2022-03-22' AS Date), 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (12, N'45462537/23.03.2022', CAST(N'2022-03-23' AS Date), CAST(N'13:00:00' AS Time), 45462537, 3, NULL, 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (13, N'45462538/24.03.2022', CAST(N'2022-03-24' AS Date), CAST(N'14:00:00' AS Time), 45462538, 3, NULL, 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (14, N'45462539/25.03.2022', CAST(N'2022-03-25' AS Date), CAST(N'15:00:00' AS Time), 45462539, 3, NULL, 320)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (15, N'45462540/26.03.2022', CAST(N'2022-03-26' AS Date), CAST(N'16:00:00' AS Time), 45462540, 2, CAST(N'2022-04-26' AS Date), 480)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (16, N'45462541/27.03.2022', CAST(N'2022-03-27' AS Date), CAST(N'17:00:00' AS Time), 45462541, 1, NULL, 240)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (17, N'45462542/28.03.2022', CAST(N'2022-03-28' AS Date), CAST(N'18:00:00' AS Time), 45462542, 3, NULL, 360)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (18, N'45462543/29.03.2022', CAST(N'2022-03-29' AS Date), CAST(N'19:00:00' AS Time), 45462543, 3, NULL, 720)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (19, N'45462544/30.03.2022', CAST(N'2022-03-30' AS Date), CAST(N'12:30:00' AS Time), 45462544, 1, NULL, 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (20, N'45462545/31.03.2022', CAST(N'2022-03-31' AS Date), CAST(N'13:30:00' AS Time), 45462545, 1, NULL, 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (21, N'45462546/01.04.2022', CAST(N'2022-04-01' AS Date), CAST(N'14:30:00' AS Time), 45462546, 2, CAST(N'2022-04-01' AS Date), 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (22, N'45462547/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462547, 1, NULL, 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (23, N'45462548/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462548, 1, NULL, 320)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (24, N'45462549/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462549, 3, NULL, 480)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (25, N'45462550/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'18:30:00' AS Time), 45462550, 3, NULL, 240)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (26, N'45462551/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'15:30:00' AS Time), 45462551, 3, NULL, 360)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (27, N'45462552/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'16:30:00' AS Time), 45462552, 3, NULL, 720)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (28, N'45462553/08.04.2022', CAST(N'2022-04-08' AS Date), CAST(N'17:30:00' AS Time), 45462553, 2, CAST(N'2022-04-08' AS Date), 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (29, N'45462554/09.04.2022', CAST(N'2022-04-09' AS Date), CAST(N'18:30:00' AS Time), 45462554, 1, NULL, 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (30, N'45462555/10.04.2022', CAST(N'2022-04-10' AS Date), CAST(N'19:30:00' AS Time), 45462555, 3, NULL, 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (31, N'45462556/11.04.2022', CAST(N'2022-04-11' AS Date), CAST(N'10:30:00' AS Time), 45462556, 3, NULL, 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (32, N'45462557/12.04.2022', CAST(N'2022-04-12' AS Date), CAST(N'11:30:00' AS Time), 45462557, 1, NULL, 320)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (33, N'45462558/13.04.2022', CAST(N'2022-04-13' AS Date), CAST(N'12:30:00' AS Time), 45462558, 1, NULL, 480)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (34, N'45462559/14.04.2022', CAST(N'2022-04-14' AS Date), CAST(N'13:30:00' AS Time), 45462559, 1, NULL, 240)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (35, N'45462560/15.04.2022', CAST(N'2022-04-15' AS Date), CAST(N'14:30:00' AS Time), 45462560, 3, NULL, 360)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (36, N'45462561/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462561, 3, NULL, 720)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (37, N'45462562/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462562, 3, NULL, 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (38, N'45462563/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462563, 2, CAST(N'2022-04-04' AS Date), 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (39, N'45462564/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'10:15:00' AS Time), 45462564, 3, NULL, 120)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (40, N'45462565/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'11:15:00' AS Time), 45462565, 1, NULL, 600)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (41, N'45462566/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'12:15:00' AS Time), 45462566, 2, CAST(N'2022-04-07' AS Date), 320)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (42, N'45462567/08.04.2022', CAST(N'2022-04-08' AS Date), CAST(N'13:15:00' AS Time), 45462567, 3, NULL, 480)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (43, N'45462568/09.04.2022', CAST(N'2022-04-09' AS Date), CAST(N'14:15:00' AS Time), 45462568, 3, NULL, 240)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (44, N'45462569/01.04.2022', CAST(N'2022-04-01' AS Date), CAST(N'15:15:00' AS Time), 45462569, 3, NULL, 360)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (45, N'45462570/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'16:15:00' AS Time), 45462570, 3, NULL, 720)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (46, N'45462571/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'10:45:00' AS Time), 45462571, 3, NULL, 480)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (47, N'45462572/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'11:45:00' AS Time), 45462572, 2, CAST(N'2022-04-04' AS Date), 320)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (48, N'45462573/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'12:45:00' AS Time), 45462573, 1, NULL, 480)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (49, N'45462574/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'13:45:00' AS Time), 45462574, 1, NULL, 240)
INSERT [dbo].[Zakazi] ([ID], [KodZakaza], [DataSozdaniya], [VremyaZakaza], [KodKlienta], [IDStatus], [DataZakritiya], [VremyaProkata]) VALUES (50, N'45462575/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'14:45:00' AS Time), 45462575, 1, NULL, 360)
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Doljnost] FOREIGN KEY([IDDoljnost])
REFERENCES [dbo].[Doljnost] ([ID])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Doljnost]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_TipVhoda] FOREIGN KEY([IDTipVhoda])
REFERENCES [dbo].[TipVhoda] ([ID])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_TipVhoda]
GO
ALTER TABLE [dbo].[UslugiZakaza]  WITH CHECK ADD  CONSTRAINT [FK_UslugiZakaza_Uslugi] FOREIGN KEY([IDUsluga])
REFERENCES [dbo].[Uslugi] ([ID])
GO
ALTER TABLE [dbo].[UslugiZakaza] CHECK CONSTRAINT [FK_UslugiZakaza_Uslugi]
GO
ALTER TABLE [dbo].[UslugiZakaza]  WITH CHECK ADD  CONSTRAINT [FK_UslugiZakaza_Zakazi] FOREIGN KEY([IDZakaz])
REFERENCES [dbo].[Zakazi] ([ID])
GO
ALTER TABLE [dbo].[UslugiZakaza] CHECK CONSTRAINT [FK_UslugiZakaza_Zakazi]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_Client] FOREIGN KEY([KodKlienta])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_Client]
GO
ALTER TABLE [dbo].[Zakazi]  WITH CHECK ADD  CONSTRAINT [FK_Zakazi_StatusZakaza] FOREIGN KEY([IDStatus])
REFERENCES [dbo].[StatusZakaza] ([ID])
GO
ALTER TABLE [dbo].[Zakazi] CHECK CONSTRAINT [FK_Zakazi_StatusZakaza]
GO
USE [master]
GO
ALTER DATABASE [SwiyaghHolms] SET  READ_WRITE 
GO
