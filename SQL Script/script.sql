USE [master]
GO
/****** Object:  Database [db_Community_Medicine_Bangladesh]    Script Date: 2/5/2015 2:11:33 AM ******/
CREATE DATABASE [db_Community_Medicine_Bangladesh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Community_Medicine_Bangladesh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_Community_Medicine_Bangladesh.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'db_Community_Medicine_Bangladesh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\db_Community_Medicine_Bangladesh_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Community_Medicine_Bangladesh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET RECOVERY FULL 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET  MULTI_USER 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_Community_Medicine_Bangladesh', N'ON'
GO
USE [db_Community_Medicine_Bangladesh]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/5/2015 2:11:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 2/5/2015 2:11:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 2/5/2015 2:11:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[DoctorID] [int] IDENTITY(1,1) NOT NULL,
	[Nmae] [nvarchar](max) NULL,
	[Degree] [nvarchar](max) NULL,
	[Speciality] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Doctors] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201502041959423_InitialCreate', N'WebMedicineAutoCenter.Models.CenterGatewayDB', 0x1F8B0800000000000400CD59CD6EE33610BE17E83B083AB540D6CACFA50DE45D3876B208BA4E8228D99E6969EC08A54895A452FBD9F6D047EA2B7424EA5FB22C791D6F904B4472BE197E9CA13E8DFFFBF6AFFD691D50E31584F4391B9B67A353D300E672CF67ABB119A9E587DFCC4F1F7FFEC9BEF682B5F1355B7711AF434B26C7E68B52E1A56549F70502224781EF0A2EF9528D5C1E58C4E3D6F9E9E9EFD6D999050861229661D88F11537E00C9033E4E3973215411A173EE0195E938CE3809AA714702902171616CFE098B3978BEEB3398448A4F812910236D671A13EA138CC901BA340DC218574461C497CF121C25385B39210E10FAB40901D72D099590EEE4B258DE7753A7E7F1A6ACC230837223A9783010F0EC2265C9AA9BEFC5B599B3883C5E23DF6A13EF3AE1726CCEB8ABB8308DBAABCB2915F1B26EA247DAFCC498F220881842674BAF085B51E2817C39C9D305B32AFEC3D51155918031834809424F8C8768417DF70FD83CF1BF808D594469396C0C1CE72A0338F4207808426D1E6159D9CCEDCC34ACAAB55537CF8D1B967AD3B74C5D9C9BC61D06421614F20C2911E4A0017C06068228F01E88425AF0806F3D48386EC450F3781710C8BC614A629D99C69CACBF005BA997B189FF9AC68DBF062F1B492378663E96251A2911C12E27335809787B374E082E1653B2EB83BAB2AD22613BD318E9F791F7AE3CEE48D12C9B5394F792CE6938FBE473C9F458099DBA3C4A5EA7BE26ABDCD58C23E7D0B2C15E40F8E251C455B76CC98F153B12ED813896B7191EE9FDF2CA17EA25670C879EF0E5BB2F6713CF1320E5B176E0F0F88A71C08D0426E35D142C0ECE5EEFDBE611422E3A2F9BCE97A6367F2FB78C8E669F4BA6B03CD61DA33DC6993B308BBB8F36297FE45FA46EF4717D46E87FC86676D572D0A823D3B396692655E3D6B80EA88ABEC06229C2D0EA74940930AB1B20AD823684FCDDB7034293D78690E5731B6339378518B7B41ACF54BBB545B6DB731286589725199F8E188ED6F0D30FCE70491B680CCB952DCA368F36F784E49215D4666335E0C18D2F649C4C6441E27C997A4173592D13B6309C79AB1E76BDF60ADEB3F5F1FFDAA687CAAEE3157CDEE01603B448760B7954B9BA6F18265F548412B155064F398D02D62DABBB90B40C28A3E891FE089976AD44928EF547294BD3325279BC89665B3566EB476935CEB27677D653A357E2E4457EB0CCC9EE86E1A9B3D5721BD325C959267AAB88ED81D54CA2CAC460BC442FB6C025E383D12AA2B105B5323F183DD3872DC0D9D460CC8A0A6C01AECC0F673713846D0C67738351DB755F8B8BF685EFA6B6B3B7EFC14A3B7D690FAFEC6D86DB0EA2907965D6B7C9C6DD485ABE35B1F4F8910FAC2173EA4B72EFB9DCA9C91A3B9518BB5B960DCDA1979806D2F4EA7BB1DE70365241308A178C9CBFE9946A65972D9813E62F412AADF8CDF3D3B3F35AAFF3FDF41D2D293DDAABF9F8433B7D7ECCEFCECF92819FC8E526087B25C27D21E29780AC7F2D230D6FE07D1754B34937006E7023EE07B7BBDEE4545B3A5CDF7522CD2ED69272A20ED8C43A4478D546D521105B9A511E0EA9C335A30E116557C3E92D2AA7EDB57CEC0ECE9B944DB369D3F3B407366D1A5FF47D5A321D1D19FD76C66817713DE928F33E4EBF764D57B7A60DBEE8F2F4EAE574B472DAD0F306D09E7D9EA6D0B1ADF22FB8F60CA4BF2A20E2DF7319B8B1822840B335F13595250AEEAB1C51B6A4964773500433874C84F29778D1E1B48B359F747EBF121AE1926B2C52EF96DD472A8CD4444A0816B4F2816F5BDDFE9366563566FB3E8C9FE421B68061FA71F2DFB3ABC8A75E1EF74D4BF26F8188D33C2D4E8CCA517191AE3639D21D673D8152FA6610C6173C534F108414C1E43D73C82BEC13DBB3842FB022EE26D3ABDB41761F4495767BE6939520814C310A7B7CC41CF682F5C7FF01F6318137C8200000, N'6.1.2-31219')
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([district_id], [district_name]) VALUES (1, N'Bagerhat                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (2, N'Bandarban                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (3, N'Barguna                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (4, N'Barisal                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (5, N'Bhola                         ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (6, N'Bogra                         ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (7, N'Brahmanbaria                  ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (8, N'Chandpur                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (9, N'Chapainawabganj               ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (10, N'Chittagong                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (11, N'Chuadanga                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (12, N'Comilla                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (13, N'Coxs-Bazar                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (14, N'Dhaka                         ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (15, N'Dinajpur                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (16, N'Faridpur                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (17, N'Feni                          ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (18, N'Gaibandha                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (19, N'Gazipur                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (20, N'Gopalganj                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (21, N'Habiganj                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (22, N'Jamalpur                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (23, N'Jessore                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (24, N'Jhalokati                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (25, N'Jhenaidah                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (26, N'Joypurhat                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (27, N'Khagrachhari                  ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (28, N'Khulna                        ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (29, N'Kishoreganj                   ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (30, N'Kurigram                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (31, N'Kushtia                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (32, N'Lakshmipur                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (33, N'Lalmonirhat                   ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (34, N'Madaripur                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (35, N'Magura                        ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (36, N'Manikganj                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (37, N'Meherpur                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (38, N'Moulvibazar                   ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (39, N'Munshiganj                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (40, N'Mymensingh                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (41, N'Naogaon                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (42, N'Narail                        ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (43, N'Narayanganj                   ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (44, N'Narsingdi                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (45, N'Natore                        ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (46, N'Netrakona                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (47, N'Nilphamari                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (48, N'Noakhali                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (49, N'Pabna                         ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (50, N'Panchagarh                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (51, N'Patuakhali                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (52, N'Pirojpur                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (53, N'Rajbari                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (54, N'Rajshahi                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (55, N'Rangamati                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (56, N'Rangpur                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (57, N'Satkhira                      ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (58, N'Shariatpur                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (59, N'Sherpur                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (60, N'Sirajganj                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (61, N'Sunamganj                     ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (62, N'Sylhet                        ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (63, N'Tangail                       ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (64, N'Thakurgaon                    ')
INSERT [dbo].[District] ([district_id], [district_name]) VALUES (65, N'                              ')
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Doctors] ON 

INSERT [dbo].[Doctors] ([DoctorID], [Nmae], [Degree], [Speciality]) VALUES (1, N'sai', N'dai', N'vai')
SET IDENTITY_INSERT [dbo].[Doctors] OFF
USE [master]
GO
ALTER DATABASE [db_Community_Medicine_Bangladesh] SET  READ_WRITE 
GO
