USE [master]
GO
/****** Object:  Database [Winapp_Final_Project]    Script Date: 3/18/2024 9:43:38 PM ******/
CREATE DATABASE [Winapp_Final_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Winapp_Final_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Winapp_Final_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Winapp_Final_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Winapp_Final_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Winapp_Final_Project] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Winapp_Final_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Winapp_Final_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Winapp_Final_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Winapp_Final_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Winapp_Final_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Winapp_Final_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET RECOVERY FULL 
GO
ALTER DATABASE [Winapp_Final_Project] SET  MULTI_USER 
GO
ALTER DATABASE [Winapp_Final_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Winapp_Final_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Winapp_Final_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Winapp_Final_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Winapp_Final_Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Winapp_Final_Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Winapp_Final_Project', N'ON'
GO
ALTER DATABASE [Winapp_Final_Project] SET QUERY_STORE = ON
GO
ALTER DATABASE [Winapp_Final_Project] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Winapp_Final_Project]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 3/18/2024 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[Answer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Answer_Description] [nvarchar](max) NULL,
	[Answer_Image] [nvarchar](max) NULL,
	[Answer_Type] [int] NOT NULL,
	[Question_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Answer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 3/18/2024 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[History_Id] [int] IDENTITY(1,1) NOT NULL,
	[History_Date] [datetime] NULL,
	[History_Time] [time](7) NULL,
	[User_Id] [int] NULL,
	[License_Id] [int] NULL,
	[Set_Id] [int] NULL,
	[Score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[History_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History_Detail]    Script Date: 3/18/2024 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History_Detail](
	[History_Detail_Id] [int] IDENTITY(1,1) NOT NULL,
	[History_Id] [int] NULL,
	[Question_Id] [int] NULL,
	[Answer_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[History_Detail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[License]    Script Date: 3/18/2024 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[License](
	[License_Id] [int] IDENTITY(1,1) NOT NULL,
	[License_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[License_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 3/18/2024 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Question_Id] [int] IDENTITY(1,1) NOT NULL,
	[Question_Description] [nvarchar](max) NULL,
	[Question_Image] [nvarchar](max) NULL,
	[License_Id] [int] NULL,
	[Topic_Id] [int] NULL,
	[Set_Id] [int] NULL,
	[Question_Explain] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Question_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Set]    Script Date: 3/18/2024 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Set](
	[Set_Id] [int] IDENTITY(1,1) NOT NULL,
	[Set_Number] [int] NULL,
	[Set_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Set_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 3/18/2024 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Topic_Id] [int] IDENTITY(1,1) NOT NULL,
	[Topic_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Topic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/18/2024 9:43:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Phonenumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[User_Role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (1, N'Phần mặt đường và lề đường.', NULL, 0, 1)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (2, N'Phần đường xe chạy.', NULL, 1, 1)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (3, N'Phần đường xe cơ giới.', NULL, 0, 1)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (5, N'Phương tiện giao thông cơ giới đường bộ.', NULL, 0, 2)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (6, N'Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.', NULL, 0, 2)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (7, N'Cả ý 1 và ý 2.', NULL, 1, 2)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (8, N'Chỉ bị nhắc nhở.', NULL, 0, 3)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (9, N'Bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.', NULL, 1, 3)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (10, N'Không bị xử lý hình sự.', NULL, 0, 3)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (11, N'Không được vượt.', NULL, 1, 4)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (14, N'Được vượt khi đang đi trên cầu.', NULL, 0, 4)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (15, N'Được phép vượt khi đi qua nơi giao nhau có ít phương tiện cùng tham gia giao thông.', NULL, 0, 4)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (16, N'Được vượt khi đảm bảo an toàn.', NULL, 0, 4)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (17, N'Chỉ được kéo nếu đã nhìn thấy trạm xăng.', NULL, 0, 5)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (18, N'Chỉ được thực hiện trên đường vắng phương tiện cùng tham gia giao thông.', NULL, 0, 5)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (19, N'Không được phép.', NULL, 1, 5)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (20, N'Biển báo nguy hiểm.', NULL, 0, 6)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (21, N'Biển báo cấm.', NULL, 0, 6)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (22, N'Biển báo hiệu lệnh phải thi hành.', NULL, 1, 6)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (23, N'Biển báo chỉ dẫn.', NULL, 0, 6)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (24, N'Phải báo hiệu bằng đèn hoặc còi;', NULL, 0, 7)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (25, N'Chỉ được báo hiệu bằng còi.', NULL, 0, 7)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (26, N'Phải báo hiệu bằng cả còi và đèn.', NULL, 0, 7)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (27, N'Chỉ được báo hiệu bằng đèn.', NULL, 1, 7)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (28, N'Xe cơ giới, xe máy chuyên dùng phải bật đèn; xe thô sơ phải bật đèn hoặc có vật phát sáng báo hiệu; chỉ được dừng xe, đỗ xe ở nơi quy định.', NULL, 1, 8)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (29, N'Xe cơ giới phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', NULL, 0, 8)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (30, N'Xe máy chuyên dùng phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', NULL, 0, 8)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (31, N'Xe bị vượt bất ngờ tăng tốc độ và cố tình không nhường đường.', NULL, 0, 9)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (32, N'Xe bị vượt giảm tốc độ và nhường đường.', NULL, 0, 9)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (33, N'Phát hiện có xe đi ngược chiều.', NULL, 0, 9)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (34, N'Cả ý 1 và ý 3.', NULL, 1, 9)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (35, N'Chủ động giữ khoảng cách an toàn phù hợp với xe chạy liền trước xe của mình.', NULL, 0, 10)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (36, N'Đảm bảo khoảng cách an toàn theo mật độ phương tiện, tình hình giao thông thực tế.', NULL, 0, 10)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (37, N'Cả ý 1 và ý 2.', NULL, 1, 10)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (38, N'Ra tín hiệu bằng tay rồi cho xe vượt qua.', NULL, 0, 11)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (39, N'Tăng ga mạnh để gây sự chú ý rồi cho xe vượt qua.', NULL, 0, 11)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (40, N'Bạn phải có tín hiệu bằng đèn hoặc còi.', NULL, 1, 11)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (41, N'Giữ tay ga ở mức độ phù hợp, sử dụng phanh trước và phanh sau để giảm tốc độ.', NULL, 1, 12)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (42, N'Nhả hết tay ga, tắt động cơ, sử dụng phanh trước và phanh sau để giảm tốc độ.', NULL, 0, 12)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (43, N'Sử dụng phanh trước để giảm tốc độ kết hợp với tắt chìa khóa điện của xe.', NULL, 0, 12)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (44, N'Để điều khiển xe chạy về phía trước.', NULL, 0, 13)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (45, N'Để điều tiết công suất động cơ qua đó điều khiển tốc độ của xe.', NULL, 0, 13)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (46, N'Để điều khiển xe chạy lùi.', NULL, 0, 13)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (47, N'Cả ý 1 và ý 2.', NULL, 1, 13)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (48, N'Biển 1.', NULL, 1, 14)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (49, N'Biển 2.', NULL, 0, 14)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (50, N'Cả hai biển.', NULL, 0, 14)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (51, N'Biển 1.', NULL, 0, 15)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (52, N'Biển 2.', NULL, 0, 15)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (53, N'Biển 1 và 2.', NULL, 1, 15)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (54, N'Biển 1.', NULL, 0, 16)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (55, N'Biển 2.', NULL, 1, 16)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (56, N'Biển 3.', NULL, 0, 16)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (57, N'Biển 1 và 2.', NULL, 0, 17)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (58, N'Biển 1 và 3.', NULL, 1, 17)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (59, N'Biển 2 và 3.', NULL, 0, 17)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (60, N'Cả ba biển.', NULL, 0, 17)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (61, N'Biển 1.', NULL, 1, 18)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (62, N'Biển 2.', NULL, 0, 18)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (63, N'Biển 3.', NULL, 0, 18)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (64, N'Biển 1.', NULL, 0, 19)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (65, N'Biển 3.', NULL, 0, 19)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (66, N'Biển 2.', NULL, 1, 19)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (67, N'Biển 1.', NULL, 0, 20)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (68, N'Biển 2.', NULL, 0, 20)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (69, N'Biển 3.', NULL, 0, 20)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (70, N'Biển 2 và 3.', NULL, 1, 20)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (71, N'Vạch 1.', NULL, 0, 21)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (72, N'Vạch 2.', NULL, 1, 21)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (73, N'Vạch 3.
', NULL, 0, 21)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (74, N'Cả 3 vạch.', NULL, 0, 21)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (75, N'Mô tô.', NULL, 0, 22)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (76, N'Xe cứu thương.', NULL, 1, 22)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (77, N'Đúng.', NULL, 0, 23)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (78, N'Không đúng.', NULL, 1, 23)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (79, N'Cả ba hướng.', NULL, 0, 24)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (80, N'Hướng 1 và 2.', NULL, 0, 24)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (82, N'Hướng 1 và 3.', NULL, 1, 24)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (83, N'Hướng 2 và 3.', NULL, 0, 24)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (84, N'Xe con, xe tải, xe khách.', NULL, 0, 25)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (85, N'Xe tải, xe khách, xe mô tô.', NULL, 1, 25)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (86, N'Xe khách, xe mô tô, xe con.', NULL, 0, 25)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (87, N'Xe khách, xe mô tô, xe con.', NULL, 0, 25)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (88, N'Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, sử dụng cho xe chạy.', NULL, 0, 26)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (89, N'Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn.', NULL, 1, 26)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (90, N'Là đường cho xe ô tô chạy, dừng, đỗ an toàn.', NULL, 0, 26)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (91, N'Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.', NULL, 0, 27)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (92, N'Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.', NULL, 0, 27)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (93, N'Cả ý 1 và ý 2.', NULL, 1, 27)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (94, N'Người điều khiển: Xe ô tô, xe mô tô, xe đạp, xe gắn máy.', NULL, 1, 28)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (95, N'Người ngồi phía sau người điều khiển xe cơ giới.', NULL, 0, 28)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (96, N'Người đi bộ.', NULL, 0, 28)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (97, N'Cả ý 1 và ý 2.', NULL, 0, 28)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (98, N'Được phép.', NULL, 0, 29)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (99, N'Nếu phương tiện được kéo, đẩy có khối lượng nhỏ hơn phương tiện của mình.', NULL, 0, 29)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (100, N'Tuỳ trường hợp.', NULL, 0, 29)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (101, N'Không được phép.', NULL, 1, 29)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (102, N'Không được vận chuyển.', NULL, 1, 30)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (103, N'Chỉ được vận chuyển khi đã chằng buộc cẩn thận.', NULL, 0, 30)
GO
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (104, N'Chỉ được vận chuyển vật cồng kềnh trên xe máy nếu khoảng cách về nhà ngắn hơn 2 km.', NULL, 0, 30)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (105, N'Biển báo nguy hiểm.', NULL, 0, 31)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (106, N'Biển báo cấm.', NULL, 0, 31)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (107, N'Biển báo hiệu lệnh phải thi hành.', NULL, 0, 31)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (108, N'Biển báo chỉ dẫn.', NULL, 0, 31)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (109, N'Tăng tốc độ và ra hiệu cho xe sau vượt, không được gây trở ngại cho xe sau vượt.', NULL, 0, 32)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (110, N'Người điều khiển phương tiện phía trước phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại cho xe sau vượt.', NULL, 1, 32)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (111, N'Cho xe tránh về bên trái mình và ra hiệu cho xe sau vượt; nếu có chướng ngại vật phía trước hoặc thiếu điều kiện an toàn chưa cho vượt được phải ra hiệu cho xe sau biết; cấm gây trở ngại cho xe xin vượt.', NULL, 0, 32)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (112, N'Khi tham gia giao thông đường bộ.', NULL, 1, 33)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (113, N'Chỉ khi đi trên đường chuyên dùng; đường cao tốc.', NULL, 0, 33)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (114, N'Khi tham gia giao thông trên đường tỉnh lộ hoặc quốc lộ.', NULL, 0, 33)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (115, N'Nếu đủ điều kiện an toàn, người lái xe phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại đối với xe xin vượt.', NULL, 1, 34)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (116, N'Lái xe vào lề đường bên trái và giảm tốc độ để xe phía sau vượt qua, không được gây trở ngại đối với xe xin vượt.', NULL, 0, 34)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (117, N'Nếu đủ điều kiện an toàn, người lái xe phải tăng tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua.', NULL, 0, 34)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (118, N'Gặp biển báo nguy hiểm trên đường.', NULL, 1, 35)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (119, N'Gặp biển chỉ dẫn trên đường.', NULL, 0, 35)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (120, N'Gặp biển báo hết mọi lệnh cấm.', NULL, 0, 35)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (121, N'Gặp biển báo hết hạn chế tốc độ tối đa cho phép.', NULL, 0, 35)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (122, N'Đường ướt, đường có sỏi cát trên nền đường.', NULL, 0, 36)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (123, N'Đường hẹp có nhiều điểm giao cắt từ hai phía.', NULL, 0, 36)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (124, N'Đường đèo dốc, vòng liên tục.', NULL, 0, 36)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (125, N'Tất cả các ý nêu trên.', NULL, 1, 36)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (126, N'Quan sát biển báo hiệu để biết nơi được phép quay đầu; quan sát kỹ địa hình nơi chọn để quay đầu; lựa chọn quỹ đạo quay đầu xe cho thích hợp; quay đầu xe với tốc độ thấp; thường xuyên báo tín hiệu để người, các phương tiện xung quanh được biết; nếu quay đầu xe ở nơi nguy hiểm thì đưa đầu xe về phía nguy hiểm đưa đuôi xe về phía an toàn.', NULL, 1, 37)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (127, N'Quan sát biển báo hiệu để biết nơi được phép quay đầu; quan sát kỹ địa hình nơi chọn để quay đầu; lựa chọn quỹ đạo quay đầu xe; quay đầu xe với tốc độ tối đa; thường xuyên báo tín hiệu để người, các phương tiện xung quanh được biết; nếu quay đầu xe ở nơi nguy hiểm thì đưa đuôi xe về phía nguy hiểm và đầu xe về phía an toàn.', NULL, 0, 37)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (128, N'Để quan sát an toàn phía bên trái khi chuẩn bị rẽ trái.', NULL, 0, 38)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (129, N'Để quan sát an toàn phía bên phải khi chuẩn bị rẽ phải.', NULL, 0, 38)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (130, N'Để quan sát an toàn phía trước cả bên trái và bên phải trước khi chuyển hướng.', NULL, 0, 38)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (131, N'Để quan sát an toàn phía sau cả bên trái và bên phải trước khi chuyển hướng.', NULL, 1, 38)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (132, N'Biển 1.', NULL, 0, 39)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (133, N'Biển 2.', NULL, 1, 39)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (134, N'Không biển nào.', NULL, 0, 39)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (135, N'Biển 1.', NULL, 0, 40)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (136, N'Biển 2.', NULL, 1, 40)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (137, N'Cả ba biển.', NULL, 0, 40)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (138, N'Biển 1', NULL, 1, 41)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (139, N'Biển 2.', NULL, 0, 41)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (140, N'Biển 1 và 2.', NULL, 0, 42)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (141, N'Biển 1 và 3.', NULL, 0, 42)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (142, N'Biển 2 và 3.', NULL, 1, 42)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (143, N'Cả ba biển.', NULL, 0, 42)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (144, N'Biển 1.', NULL, 0, 43)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (145, N'Biển 2.', NULL, 1, 43)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (146, N'Biển 3.', NULL, 0, 43)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (147, N'Báo hiệu đường có ổ gà, lồi lõm.', NULL, 0, 44)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (148, N'Báo hiệu đường có gồ giảm tốc phía trước.', NULL, 1, 44)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (149, N'Biển 1.', NULL, 0, 45)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (150, N'Biển 2', NULL, 1, 45)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (151, N'Biển 3.', NULL, 0, 45)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (152, N'Cả ba biển', NULL, 0, 45)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (153, N'Vạch 1.', NULL, 0, 46)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (154, N'Vạch 2.', NULL, 0, 46)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (155, N'Vạch 3.', NULL, 0, 46)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (156, N'Vạch 1 và 3', NULL, 1, 46)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (157, N'Mô tô.', NULL, 0, 47)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (158, N'Xe con và xe khách.', NULL, 1, 47)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (159, N'Xe con.', NULL, 1, 48)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (160, N'Xe mô tô.', NULL, 0, 48)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (161, N'Xe công an, xe quân sự, xe con + mô tô.', NULL, 0, 49)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (162, N'Xe quân sự, xe công an, xe con + mô tô.', NULL, 1, 49)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (163, N'Xe mô tô + xe con, xe quân sự, xe công an.', NULL, 0, 49)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (164, N'Xe tải, mô tô.', NULL, 0, 50)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (165, N'Xe khách, mô tô.', NULL, 1, 50)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (166, N'Xe tải, xe con.', NULL, 0, 50)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (167, N'Mô tô, xe con.', NULL, 0, 50)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (169, N'Phần mặt đường và lề đường.', NULL, 0, 54)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (170, N'Phần đường xe chạy.', NULL, 1, 54)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (171, N'Phần đường xe cơ giới.', NULL, 0, 54)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (172, N'Diễn ra trên đường phố không có người qua lại.', NULL, 0, 55)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (173, N'Được người dân ủng hộ.', NULL, 0, 55)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (174, N'Được cơ quan có thẩm quyền cấp phép', NULL, 1, 55)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (175, N'Được phép.', NULL, 0, 56)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (176, N'Không được phép.', NULL, 1, 56)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (177, N'Tùy từng trường hợp.', NULL, 0, 56)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (178, N'Xe mô tô có dung tích xi-lanh 125 cm3.', NULL, 1, 57)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (179, N'Xe mô tô có dung tích xi-lanh từ 175 cm3 trở lên.', NULL, 0, 57)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (180, N'Xe mô tô có dung tích xi-lanh 100 cm3.', NULL, 0, 57)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (181, N'Tăng tốc độ và ra hiệu cho xe sau vượt, không được gây trở ngại cho xe sau vượt.', NULL, 0, 58)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (182, N'Người điều khiển phương tiện phía trước phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại cho xe sau vượt.', NULL, 1, 58)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (183, N'Cho xe tránh về bên trái mình và ra hiệu cho xe sau vượt; nếu có chướng ngại vật phía trước hoặc thiếu điều kiện an toàn chưa cho vượt được phải ra hiệu cho xe sau biết.', NULL, 0, 58)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (184, N'Được phép nhưng phải đảm bảo an toàn.', NULL, 0, 59)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (185, N'Không được phép.', NULL, 1, 59)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (186, N'Được phép tùy từng hoàn cảnh, điều kiện cụ thể.', NULL, 0, 59)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (187, N'Ô tô chở người trên 30 chỗ (trừ ô tô buýt), ô tô tải có trọng tải trên 3,5 tấn.', NULL, 0, 60)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (188, N'Xe ô tô con, xe ô tô chở người đến 30 chỗ (trừ xe buýt), ô tô tải có trọng tải nhỏ hơn hoặc bằng 3,5 tấn.', NULL, 0, 60)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (189, N'Ô tô kéo rơ moóc, ô tô kéo xe khác, ô tô trộn vữa, ô tô trộn bê tông, ô tô xi téc.', NULL, 1, 60)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (190, N'Giảm tốc độ cho xe vượt qua đường sắt.', NULL, 0, 61)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (191, N'Nhanh chóng cho xe vượt qua đường sắt trước khi tàu hỏa tới.', NULL, 0, 61)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (192, N'Giảm tốc độ cho xe vượt qua đường sắt trước khi tàu hỏa tới.', NULL, 0, 61)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (193, N'Cho xe dừng ngay lại và giữ khoảng cách tối thiểu 5 mét tính từ ray gấn nhất.', NULL, 1, 61)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (194, N'Cho xe chạy thật nhanh qua vũng nước.', NULL, 0, 62)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (195, N'Giảm tốc độ cho xe chạy chậm qua vũng nước.', NULL, 1, 62)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (196, N'Giảm tốc độ cho xe chạy qua làn đường dành cho mô tô để tránh vũng nước.', NULL, 0, 62)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (197, N'Không nên đi cố vào đường hẹp; xe đi ở sườn núi nên dừng lại trước để nhường đường; khi dừng xe nhường đường phải đỗ ngay ngắn.', NULL, 0, 63)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (198, N'Trong khi tránh nhau không nên đổi số; khi tránh nhau ban đêm, phải tắt đèn pha bật đèn cốt.', NULL, 0, 63)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (199, N'Khi tránh nhau ban đêm, phải thường xuyên bật đèn pha tắt đèn cốt.', NULL, 0, 63)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (200, N'Cả ý 1 và ý 2.', NULL, 1, 63)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (201, N'Là loại động cơ: Để hoàn thành một chu trình công tác của động cơ, pít tông thực hiện 2 (hai) hành trình, trong đó có một lần sinh công.', NULL, 0, 64)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (202, N'Là loại động cơ: Để hoàn thành một chu trình công tác của động cơ, pít tông thực hiện 4 (bốn) hành trình, trong đó có một lần sinh công.', NULL, 1, 64)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (203, N'Biển 1.', NULL, 1, 65)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (205, N'Biển 2', NULL, 0, 65)
GO
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (206, N'Cả hai biển.', NULL, 0, 65)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (207, N'Biển 1.', NULL, 0, 66)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (208, N'Biển 3.', NULL, 0, 66)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (209, N'Biển 2.', NULL, 1, 66)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (210, N'Biển 1.', NULL, 0, 67)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (211, N'Biển 2.', NULL, 1, 67)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (212, N'Biển 3.', NULL, 0, 67)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (213, N'Biển 1.', NULL, 0, 68)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (214, N'Biển 1 và 3.', NULL, 0, 68)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (215, N'Biển 3', NULL, 1, 68)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (216, N'Cả 3 Biển', NULL, 0, 68)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (217, N'Biển 1.', NULL, 0, 69)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (218, N'Biển 2.', NULL, 0, 69)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (219, N'Biển 3.', NULL, 1, 69)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (220, N'Biển 1.', NULL, 0, 70)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (221, N'Biển 2.', NULL, 0, 70)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (222, N'Biển 3.', NULL, 1, 70)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (223, N'Biển 1 Và Biển 2.', NULL, 0, 70)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (224, N'Để báo trước gần tới đoạn đường có hiện tượng đất đá từ trên ta luy dương sụt lở bất ngờ gây nguy hiểm cho xe cộ và người đi đường.', NULL, 1, 71)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (225, N'Để báo trước nơi có kết cấu mặt đường rời rạc, khi phương tiện đi qua, làm cho các viên đá, sỏi băng lên gây nguy hiểm và mất an toàn cho người và phương tiện tham gia giao thông.', NULL, 0, 71)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (226, N'Để cảnh báo những đoạn nền đường yếu, đoạn đường đang theo dõi lún mà việc vận hành xe ở tốc độ cao có thể gây nguy hiểm.', NULL, 0, 71)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (227, N'Biển 1.', NULL, 0, 72)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (228, N'Biển 2.', NULL, 0, 72)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (229, N'Biển 3.', NULL, 1, 72)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (231, N'Không biển nào.', NULL, 0, 72)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (232, N'Đi thẳng hoặc rẽ trái trên cầu vượt.', NULL, 0, 73)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (233, N'Đi thẳng hoặc rẽ phải trên cầu vượt.', NULL, 0, 73)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (234, N'Báo hiệu cầu vượt liên thông.', NULL, 1, 73)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (235, N'Vạch 1.', NULL, 0, 74)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (236, N'Vạch 2.', NULL, 0, 74)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (237, N'Vạch 3.', NULL, 0, 74)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (238, N'Vạch 1 và vạch 3.', NULL, 1, 74)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (239, N'Hướng 2, 3, 4.', NULL, 0, 75)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (240, N'Chỉ hướng 1.', NULL, 1, 75)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (241, N'Hướng 1 và 2.', NULL, 0, 75)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (242, N'Hướng 3 và 4.', NULL, 0, 75)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (243, N'Các xe ở phía tay phải và tay trái của người điều khiển được phép đi thẳng.', NULL, 0, 76)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (244, N'Cho phép các xe ở mọi hướng được rẽ phải.
', NULL, 0, 76)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (245, N'Tất cả các xe phải dừng lại trước ngã tư, trừ những xe đã ở trong ngã tư được phép tiếp tục đi.', NULL, 1, 76)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (246, N'Xe của bạn.', NULL, 0, 77)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (247, N'Xe tải.', NULL, 1, 77)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (248, N'Tăng tốc độ, rẽ phải trước xe tải và xe đạp.', NULL, 0, 78)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (249, N'Giảm tốc độ, rẽ phải sau xe tải và xe đạp.', NULL, 1, 78)
INSERT [dbo].[Answer] ([Answer_Id], [Answer_Description], [Answer_Image], [Answer_Type], [Question_Id]) VALUES (250, N'Tăng tốc độ, rẽ phải trước xe đạp.', NULL, 0, 78)
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
SET IDENTITY_INSERT [dbo].[History] ON 

INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1033, CAST(N'2024-03-10T00:00:00.000' AS DateTime), CAST(N'11:37:39.5462746' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1034, CAST(N'2024-03-10T00:00:00.000' AS DateTime), CAST(N'04:40:03.3188017' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1035, CAST(N'2024-03-10T00:00:00.000' AS DateTime), CAST(N'12:34:25.2798857' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1037, CAST(N'2024-03-11T00:00:00.000' AS DateTime), CAST(N'01:03:08.0202145' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1039, CAST(N'2024-03-11T00:00:00.000' AS DateTime), CAST(N'15:26:50.4483429' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1040, CAST(N'2024-03-11T00:00:00.000' AS DateTime), CAST(N'21:51:16.6726402' AS Time), 4, 1, 2, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1041, CAST(N'2024-03-11T00:00:00.000' AS DateTime), CAST(N'22:00:58.3043758' AS Time), 4, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1042, CAST(N'2024-03-11T00:00:00.000' AS DateTime), CAST(N'22:24:51.1841365' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1043, CAST(N'2024-03-12T00:00:00.000' AS DateTime), CAST(N'21:06:44.3881728' AS Time), 1, 1, 2, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1044, CAST(N'2024-03-12T00:00:00.000' AS DateTime), CAST(N'21:10:35.9732879' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1045, CAST(N'2024-03-12T00:00:00.000' AS DateTime), CAST(N'21:12:47.8072911' AS Time), 1, 1, 2, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1046, CAST(N'2024-03-13T00:00:00.000' AS DateTime), CAST(N'13:54:06.2411882' AS Time), 1, 1, 2, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1047, CAST(N'2024-03-13T00:00:00.000' AS DateTime), CAST(N'20:30:45.4118241' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1048, CAST(N'2024-03-13T00:00:00.000' AS DateTime), CAST(N'22:46:50.8802147' AS Time), 1, 1, 2, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1049, CAST(N'2024-03-14T00:00:00.000' AS DateTime), CAST(N'10:10:17.8865209' AS Time), 1, 1, 2, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1050, CAST(N'2024-03-14T00:00:00.000' AS DateTime), CAST(N'10:56:09.1215018' AS Time), 1, 2, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1051, CAST(N'2024-03-14T00:00:00.000' AS DateTime), CAST(N'10:57:08.7598951' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1052, CAST(N'2024-03-14T00:00:00.000' AS DateTime), CAST(N'13:02:23.2450414' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1053, CAST(N'2024-03-14T00:00:00.000' AS DateTime), CAST(N'13:16:51.9430246' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1054, CAST(N'2024-03-14T00:00:00.000' AS DateTime), CAST(N'13:31:44.5568190' AS Time), 1, 1, 1, 0)
INSERT [dbo].[History] ([History_Id], [History_Date], [History_Time], [User_Id], [License_Id], [Set_Id], [Score]) VALUES (1055, CAST(N'2024-03-14T00:00:00.000' AS DateTime), CAST(N'14:47:52.6836494' AS Time), 1, 1, 1, 3)
SET IDENTITY_INSERT [dbo].[History] OFF
GO
SET IDENTITY_INSERT [dbo].[History_Detail] ON 

INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1727, 1033, 1, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1728, 1033, 2, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1729, 1033, 3, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1730, 1033, 4, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1731, 1033, 7, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1732, 1033, 5, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1733, 1033, 8, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1734, 1033, 9, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1735, 1033, 10, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1736, 1033, 11, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1737, 1033, 12, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1738, 1033, 13, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1739, 1033, 6, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1740, 1033, 14, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1741, 1033, 15, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1742, 1033, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1743, 1033, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1744, 1033, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1745, 1033, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1746, 1033, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1747, 1033, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1748, 1033, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1749, 1033, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1750, 1033, 24, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1751, 1033, 25, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1752, 1034, 1, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1753, 1034, 2, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1754, 1034, 3, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1755, 1034, 4, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1756, 1034, 7, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1757, 1034, 5, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1758, 1034, 8, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1759, 1034, 9, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1760, 1034, 10, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1761, 1034, 11, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1762, 1034, 12, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1763, 1034, 13, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1764, 1034, 6, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1765, 1034, 14, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1766, 1034, 15, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1767, 1034, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1768, 1034, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1769, 1034, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1770, 1034, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1771, 1034, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1772, 1034, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1773, 1034, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1774, 1034, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1775, 1034, 24, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1776, 1034, 25, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1777, 1035, 1, 1)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1778, 1035, 2, 5)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1779, 1035, 3, 8)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1780, 1035, 4, 11)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1781, 1035, 7, 24)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1782, 1035, 5, 17)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1783, 1035, 8, 28)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1784, 1035, 9, 31)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1785, 1035, 10, 35)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1786, 1035, 11, 38)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1787, 1035, 12, 41)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1788, 1035, 13, 44)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1789, 1035, 6, 20)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1790, 1035, 14, 48)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1791, 1035, 15, 51)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1792, 1035, 16, 54)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1793, 1035, 17, 57)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1794, 1035, 18, 61)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1795, 1035, 19, 64)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1796, 1035, 20, 67)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1797, 1035, 21, 71)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1798, 1035, 22, 75)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1799, 1035, 23, 77)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1800, 1035, 24, 79)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1801, 1035, 25, 84)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1802, 1037, 1, 1)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1803, 1037, 2, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1804, 1037, 3, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1805, 1037, 4, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1806, 1037, 7, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1807, 1037, 5, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1808, 1037, 8, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1809, 1037, 9, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1810, 1037, 10, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1811, 1037, 11, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1812, 1037, 12, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1813, 1037, 13, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1814, 1037, 6, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1815, 1037, 14, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1816, 1037, 15, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1817, 1037, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1818, 1037, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1819, 1037, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1820, 1037, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1821, 1037, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1822, 1037, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1823, 1037, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1824, 1037, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1825, 1037, 24, NULL)
GO
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1826, 1037, 25, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1852, 1039, 1, 1)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1853, 1039, 2, 5)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1854, 1039, 3, 8)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1855, 1039, 4, 11)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1856, 1039, 7, 24)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1857, 1039, 5, 17)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1858, 1039, 8, 28)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1859, 1039, 9, 31)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1860, 1039, 10, 35)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1861, 1039, 11, 38)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1862, 1039, 12, 41)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1863, 1039, 13, 44)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1864, 1039, 6, 20)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1865, 1039, 14, 48)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1866, 1039, 15, 51)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1867, 1039, 16, 54)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1868, 1039, 17, 57)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1869, 1039, 18, 61)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1870, 1039, 19, 64)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1871, 1039, 20, 67)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1872, 1039, 21, 71)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1873, 1039, 22, 75)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1874, 1039, 23, 77)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1875, 1039, 24, 79)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1876, 1039, 25, 84)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1877, 1040, 26, 89)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1878, 1040, 27, 93)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1879, 1040, 28, 94)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1880, 1040, 29, 101)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1881, 1040, 30, 102)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1882, 1040, 35, 118)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1883, 1040, 33, 114)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1884, 1040, 32, 110)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1885, 1040, 34, 115)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1886, 1040, 36, 125)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1887, 1040, 37, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1888, 1040, 38, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1889, 1040, 31, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1890, 1040, 39, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1891, 1040, 40, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1892, 1040, 41, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1893, 1040, 42, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1894, 1040, 43, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1895, 1040, 44, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1896, 1040, 45, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1897, 1040, 46, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1898, 1040, 47, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1899, 1040, 48, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1900, 1040, 49, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1901, 1040, 50, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1902, 1041, 1, 1)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1903, 1041, 2, 7)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1904, 1041, 3, 9)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1905, 1041, 4, 15)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1906, 1041, 7, 27)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1907, 1041, 5, 19)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1908, 1041, 8, 28)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1909, 1041, 9, 34)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1910, 1041, 10, 37)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1911, 1041, 11, 40)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1912, 1041, 12, 41)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1913, 1041, 13, 47)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1914, 1041, 6, 22)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1915, 1041, 14, 48)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1916, 1041, 15, 53)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1917, 1041, 16, 55)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1918, 1041, 17, 58)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1919, 1041, 18, 61)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1920, 1041, 19, 65)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1921, 1041, 20, 69)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1922, 1041, 21, 74)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1923, 1041, 22, 76)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1924, 1041, 23, 78)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1925, 1041, 24, 82)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1926, 1041, 25, 86)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1927, 1042, 1, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1928, 1042, 2, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1929, 1042, 3, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1930, 1042, 4, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1931, 1042, 7, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1932, 1042, 5, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1933, 1042, 8, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1934, 1042, 9, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1935, 1042, 10, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1936, 1042, 11, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1937, 1042, 12, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1938, 1042, 13, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1939, 1042, 6, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1940, 1042, 14, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1941, 1042, 15, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1942, 1042, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1943, 1042, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1944, 1042, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1945, 1042, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1946, 1042, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1947, 1042, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1948, 1042, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1949, 1042, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1950, 1042, 24, NULL)
GO
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1951, 1042, 25, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1952, 1043, 26, 88)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1953, 1043, 27, 93)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1954, 1043, 28, 94)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1955, 1043, 29, 101)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1956, 1043, 30, 102)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1957, 1043, 35, 118)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1958, 1043, 33, 112)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1959, 1043, 32, 111)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1960, 1043, 34, 115)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1961, 1043, 36, 125)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1962, 1043, 37, 126)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1963, 1043, 38, 131)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1964, 1043, 31, 108)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1965, 1043, 39, 133)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1966, 1043, 40, 137)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1967, 1043, 41, 138)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1968, 1043, 42, 140)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1969, 1043, 43, 144)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1970, 1043, 44, 148)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1971, 1043, 45, 150)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1972, 1043, 46, 156)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1973, 1043, 47, 158)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1974, 1043, 48, 159)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1975, 1043, 49, 162)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1976, 1043, 50, 165)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1977, 1044, 1, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1978, 1044, 2, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1979, 1044, 3, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1980, 1044, 4, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1981, 1044, 7, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1982, 1044, 5, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1983, 1044, 8, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1984, 1044, 9, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1985, 1044, 10, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1986, 1044, 11, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1987, 1044, 12, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1988, 1044, 13, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1989, 1044, 6, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1990, 1044, 14, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1991, 1044, 15, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1992, 1044, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1993, 1044, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1994, 1044, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1995, 1044, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1996, 1044, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1997, 1044, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1998, 1044, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (1999, 1044, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2000, 1044, 24, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2001, 1044, 25, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2002, 1045, 26, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2003, 1045, 27, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2004, 1045, 28, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2005, 1045, 29, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2006, 1045, 30, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2007, 1045, 35, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2008, 1045, 33, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2009, 1045, 32, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2010, 1045, 34, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2011, 1045, 36, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2012, 1045, 37, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2013, 1045, 38, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2014, 1045, 31, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2015, 1045, 39, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2016, 1045, 40, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2017, 1045, 41, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2018, 1045, 42, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2019, 1045, 43, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2020, 1045, 44, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2021, 1045, 45, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2022, 1045, 46, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2023, 1045, 47, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2024, 1045, 48, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2025, 1045, 49, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2026, 1045, 50, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2027, 1046, 26, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2028, 1046, 27, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2029, 1046, 28, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2030, 1046, 29, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2031, 1046, 30, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2032, 1046, 35, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2033, 1046, 33, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2034, 1046, 32, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2035, 1046, 34, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2036, 1046, 36, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2037, 1046, 37, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2038, 1046, 38, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2039, 1046, 31, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2040, 1046, 39, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2041, 1046, 40, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2042, 1046, 41, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2043, 1046, 42, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2044, 1046, 43, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2045, 1046, 44, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2046, 1046, 45, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2047, 1046, 46, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2048, 1046, 47, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2049, 1046, 48, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2050, 1046, 49, NULL)
GO
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2051, 1046, 50, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2052, 1047, 1, 2)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2053, 1047, 2, 7)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2054, 1047, 3, 9)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2055, 1047, 4, 11)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2056, 1047, 7, 27)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2057, 1047, 5, 19)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2058, 1047, 8, 28)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2059, 1047, 9, 34)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2060, 1047, 10, 37)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2061, 1047, 11, 40)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2062, 1047, 12, 41)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2063, 1047, 13, 47)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2064, 1047, 6, 23)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2065, 1047, 14, 48)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2066, 1047, 15, 51)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2067, 1047, 16, 55)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2068, 1047, 17, 58)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2069, 1047, 18, 61)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2070, 1047, 19, 66)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2071, 1047, 20, 70)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2072, 1047, 21, 74)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2073, 1047, 22, 76)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2074, 1047, 23, 78)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2075, 1047, 24, 82)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2076, 1047, 25, 85)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2077, 1048, 26, 88)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2078, 1048, 27, 91)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2079, 1048, 28, 94)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2080, 1048, 29, 98)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2081, 1048, 30, 102)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2082, 1048, 35, 118)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2083, 1048, 33, 112)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2084, 1048, 32, 109)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2085, 1048, 34, 115)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2086, 1048, 36, 122)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2087, 1048, 37, 126)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2088, 1048, 38, 128)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2089, 1048, 31, 105)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2090, 1048, 39, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2091, 1048, 40, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2092, 1048, 41, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2093, 1048, 42, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2094, 1048, 43, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2095, 1048, 44, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2096, 1048, 45, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2097, 1048, 46, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2098, 1048, 47, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2099, 1048, 48, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2100, 1048, 49, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2101, 1048, 50, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2102, 1049, 26, 88)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2103, 1049, 27, 91)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2104, 1049, 28, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2105, 1049, 29, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2106, 1049, 30, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2107, 1049, 35, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2108, 1049, 33, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2109, 1049, 32, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2110, 1049, 34, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2111, 1049, 36, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2112, 1049, 37, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2113, 1049, 38, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2114, 1049, 31, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2115, 1049, 39, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2116, 1049, 40, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2117, 1049, 41, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2118, 1049, 42, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2119, 1049, 43, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2120, 1049, 44, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2121, 1049, 45, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2122, 1049, 46, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2123, 1049, 47, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2124, 1049, 48, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2125, 1049, 49, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2126, 1049, 50, 164)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2127, 1050, 54, 169)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2128, 1050, 55, 172)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2129, 1050, 56, 175)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2130, 1050, 58, 181)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2131, 1050, 60, 187)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2132, 1050, 62, 194)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2133, 1050, 59, 184)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2134, 1050, 61, 190)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2135, 1050, 57, 178)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2136, 1050, 63, 197)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2137, 1050, 64, 201)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2138, 1050, 65, 203)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2139, 1050, 66, 207)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2140, 1050, 67, 210)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2141, 1050, 68, 213)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2142, 1050, 69, 217)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2143, 1050, 70, 220)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2144, 1050, 71, 224)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2145, 1050, 72, 227)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2146, 1050, 73, 232)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2147, 1050, 74, 235)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2148, 1050, 75, 239)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2149, 1050, 76, 243)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2150, 1050, 77, 246)
GO
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2151, 1050, 78, 248)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2152, 1051, 1, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2153, 1051, 2, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2154, 1051, 3, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2155, 1051, 4, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2156, 1051, 7, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2157, 1051, 5, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2158, 1051, 8, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2159, 1051, 9, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2160, 1051, 10, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2161, 1051, 11, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2162, 1051, 12, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2163, 1051, 13, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2164, 1051, 6, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2165, 1051, 14, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2166, 1051, 15, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2167, 1051, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2168, 1051, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2169, 1051, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2170, 1051, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2171, 1051, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2172, 1051, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2173, 1051, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2174, 1051, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2175, 1051, 24, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2176, 1051, 25, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2177, 1052, 1, 1)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2178, 1052, 2, 5)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2179, 1052, 3, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2180, 1052, 4, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2181, 1052, 7, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2182, 1052, 5, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2183, 1052, 8, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2184, 1052, 9, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2185, 1052, 10, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2186, 1052, 11, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2187, 1052, 12, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2188, 1052, 13, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2189, 1052, 6, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2190, 1052, 14, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2191, 1052, 15, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2192, 1052, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2193, 1052, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2194, 1052, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2195, 1052, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2196, 1052, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2197, 1052, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2198, 1052, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2199, 1052, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2200, 1052, 24, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2201, 1052, 25, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2202, 1053, 1, 1)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2203, 1053, 2, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2204, 1053, 3, 8)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2205, 1053, 4, 11)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2206, 1053, 7, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2207, 1053, 5, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2208, 1053, 8, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2209, 1053, 9, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2210, 1053, 10, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2211, 1053, 11, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2212, 1053, 12, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2213, 1053, 13, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2214, 1053, 6, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2215, 1053, 14, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2216, 1053, 15, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2217, 1053, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2218, 1053, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2219, 1053, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2220, 1053, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2221, 1053, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2222, 1053, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2223, 1053, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2224, 1053, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2225, 1053, 24, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2226, 1053, 25, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2227, 1054, 1, 1)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2228, 1054, 2, 5)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2229, 1054, 3, 8)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2230, 1054, 4, 11)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2231, 1054, 7, 24)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2232, 1054, 5, 17)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2233, 1054, 8, 28)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2234, 1054, 9, 31)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2235, 1054, 10, 35)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2236, 1054, 11, 38)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2237, 1054, 12, 41)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2238, 1054, 13, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2239, 1054, 6, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2240, 1054, 14, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2241, 1054, 15, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2242, 1054, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2243, 1054, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2244, 1054, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2245, 1054, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2246, 1054, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2247, 1054, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2248, 1054, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2249, 1054, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2250, 1054, 24, NULL)
GO
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2251, 1054, 25, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2252, 1055, 1, 1)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2253, 1055, 2, 5)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2254, 1055, 3, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2255, 1055, 4, 11)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2256, 1055, 7, 24)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2257, 1055, 5, 17)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2258, 1055, 8, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2259, 1055, 9, 31)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2260, 1055, 10, 35)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2261, 1055, 11, 38)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2262, 1055, 12, 41)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2263, 1055, 13, 44)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2264, 1055, 6, 20)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2265, 1055, 14, 48)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2266, 1055, 15, 51)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2267, 1055, 16, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2268, 1055, 17, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2269, 1055, 18, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2270, 1055, 19, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2271, 1055, 20, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2272, 1055, 21, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2273, 1055, 22, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2274, 1055, 23, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2275, 1055, 24, NULL)
INSERT [dbo].[History_Detail] ([History_Detail_Id], [History_Id], [Question_Id], [Answer_Id]) VALUES (2276, 1055, 25, NULL)
SET IDENTITY_INSERT [dbo].[History_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[License] ON 

INSERT [dbo].[License] ([License_Id], [License_Name]) VALUES (1, N'A1')
INSERT [dbo].[License] ([License_Id], [License_Name]) VALUES (2, N'A2')
INSERT [dbo].[License] ([License_Id], [License_Name]) VALUES (3, N'A3')
INSERT [dbo].[License] ([License_Id], [License_Name]) VALUES (4, N'A4')
SET IDENTITY_INSERT [dbo].[License] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (1, N'Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại là gì?', N'', 1, 1, 1, N'Phần đường xe chạy là phần của đường bộ được sử dụng cho phương tiện giao thông qua lại.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (2, N'“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?', NULL, 1, 1, 1, N'Tại Khoản 17 Điều 3 Luật giao thông đường bộ 2008 có quy định về vấn đề này như sau: ''Phương tiện tham gia giao thông đường bộ gồm phương tiện giao thông đường bộ và xe máy chuyên dùng''.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (3, N'Sử dụng rượu bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?', N'', 1, 2, 1, N'Sử dụng rượu bia khi lái xe sẽ bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (4, N'Bạn đang lái xe phía trước có một xe cứu thương đang phát tín hiệu ưu tiên bạn có được phép vượt hay không?', NULL, 1, 2, 1, N'Xe cứu thương thuộc diện phương tiện xe ưu tiên, có phát tín hiệu ưu tiên. Bắt buộc các phương tiện khác phải nhường đường và không được vượt. Ngoại trừ các xe theo luật định như: Cứu hỏa, Quân Sự, Công An.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (5, N' Hành vi sử dụng xe mô tô để kéo, đẩy xe mô tô khác bị hết xăng đến trạm mua xăng có được phép hay không?', NULL, 1, 3, 1, N'Hành vi bám, kéo hoặc đẩy các phương tiện khác; sử dụng mô tô để kéo, đẩy mô tô khác bị hết xăng đến trạm mua xăng cũng không được phép, sẽ gây nguy hiểm cho các phương tiện khác tham gia giao thông là BỊ NGHIÊM CẤM theo luật định.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (6, N'Biển báo hiệu hình tròn có nền xanh lam có hình vẽ màu trắng là loại biển gì dưới đây?', N'de1-cau6.jpg', 1, 6, 1, N'Biển báo hiệu lệnh phải thi hành là loại biển báo hình tròn có nền màu xanh. Nội dung thể hiện bên trong nằm chính giữa và có màu trắng.

')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (7, N'Bạn đang lái xe trong khu vực đô thị từ 22 giờ đến 5 giờ sáng hôm sau và cần vượt một xe khác, bạn cần báo hiệu như thế nào để đảm bảo an toàn giao thông?', NULL, 1, 2, 1, N'Điều 14 Luật Giao thông đường bộ 2008; - Nghị định 46 năm 2016 quy định. Vượt xe trong khu vực đô thị từ 22 giờ đến 5 giờ sáng chỉ được báo hiệu bằng đèn.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (8, N'Người điều khiển phương tiện tham gia giao thông trong hầm đường bộ ngoài việc phải tuân thủ các quy tắc giao thông còn phải thực hiện những quy định nào dưới đây?', N'', 1, 4, 1, N'Trong hầm đường bộ, nghiêm cấm việc quay đầu và lùi xe.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (9, N'Trên đoạn đường hai chiều không có giải phân cách giữa, người lái xe không được vượt xe khác trong các trường hợp nào dưới đây?', NULL, 1, 4, 1, N'Khi muốn vượt một xe khác, chúng ta phải đảm bảo các yếu tố về an toàn. Trường hợp phát hiện có xe đi ngược chiều và xe đi trước (xe bị vượt) bất ngờ tăng tốc độ chúng ta sẽ không được vượt.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (10, N'Khi điều khiển xe chạy với tốc độ dưới 60 km/h, để đảm bảo khoảng cách an toàn giữa hai xe, người lái xe phải điều khiển xe như thế nào?', NULL, 1, 4, 1, N'Khi điều khiển xe chạy với tốc độ dưới 60 km/h, người lái xe phải chủ động giữ khoảng cách an toàn phù hợp với xe chạy liền trước xe của mình; khoảng cách này tùy thuộc vào mật độ phương tiện, tình hình giao thông thực tế để đảm bảo an toàn giao thông.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (11, N'Để báo hiệu cho xe phía trước biết xe mô tô của bạn muốn vượt, bạn phải có tín hiệu như thế nào dưới đây?', NULL, 1, 4, 1, N'Khi muốn vượt xe phía trước bắt buộc phải có tín hiệu bằng đèn hoặc còi, trường hợp trong khu đông dân cư trong khung giờ từ 22h - 5h bắt buộc phải sử dụng bằng đèn.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (12, N'Khi điều khiển xe mô tô tay ga xuống đường dốc dài, độ dốc cao, người lái xe cần thực hiện các thao tác nào dưới đây để đảm bảo an toàn?', NULL, 1, 5, 1, N'Khi điều khiển xe mô tô tay ga xuống đường dốc dài, độ dốc cao để đảm bảo an toàn người lái xe sẽ cần giữ tay ga ở mức độ phù hợp kết hợp giữa thắng trước và thắng sau để giảm tốc độ khi cần thiết. Tránh việc chỉ sử dụng thắng trước vì rất dễ gây tai nạn.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (13, N'Tay ga trên xe mô tô hai bánh có tác dụng gì trong các trường hợp dưới đây?', NULL, 1, 5, 1, N'Tay ga trên xe mô tô sẽ có tác dụng điều chỉnh tốc độ xe, cho phép xe tiến về phía trước. Không có tác dụng lùi xe.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (14, N'Biển nào cấm xe rẽ trái?', N'de1-cau14.jpg', 1, 6, 1, N'Biển 1 là biển cấm xe rẽ trái. Biển 2 là biển cấm xe quay đầu. Biển báo cấm quay đầu không có giá trị cấm rẽ trái.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (15, N'Biển nào dưới đây các phương tiện không được phép đi vào?', N'de1-cau15.jpg', 1, 6, 1, N'Biển 1: Biển báo đường cấm tất cả các loại phương tiện. Biển 2: Biển báo cấm đi ngược chiều. Biển 3: Biển báo cấm đỗ xe. Vì vậy chọn Biển 1 và Biển 2.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (16, N'Biển nào xe mô tô hai bánh không được đi vào?', N'de1-cau16.jpg', 1, 6, 1, N'Biển 1: Biển báo cấm xe ôtô không cấm xe môtô. Biển 2: Biển báo cấm xe môtô. Biển 3: Biển báo cấm xe tải không cấm xe mô tô. Vì vậy chọn Biển 2.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (17, N'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt?', N'de1-cau17,jpg', 1, 6, 1, N'Biển 1: Biển báo giao nhau với đường sắt có rào chắn. Biển 2: Biển báo giao nhau với đường hai chiều. Biển 3: Biển báo nơi đường sắt giao vuông góc với đường bộ. Vì vậy chọn Biển 1 và Biển 3.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (18, N'Biển nào báo hiệu “Đường giao nhau” của các tuyến đường cùng cấp?', N'de1-cau18.jpg', 1, 6, 1, N'Biển 1: Biển báo trước sắp đến nơi giao nhau cùng mức của các tuyến đường cùng cấp (không có đường nào ưu tiên). Biển 2: Biển báo giao nhau với đường không ưu tiên. Biển 3: Biển báo giao nhau với đường ưu tiên. Vì vậy chọn Biển 1.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (19, N'Biển nào chỉ dẫn nơi bắt đầu đoạn đường dành cho người đi bộ?', N'de1-cau19.jpg', 1, 6, 1, N'Biển 1: Biển báo hiệu sắp đến phần đường cắt ngang dành cho người đi bộ. Biển 2: Biển báo hiệu bắt đầu đoạn đường dành riêng cho người đi bộ. Biển 3: Biển báo hiệu gần đến đoạn đường thường xuyên có trẻ em đi ngang qua. Nên chọn biển 2.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (20, N'Biển nào dưới đây báo hiệu hết cấm vượt?', N'de1-cau20.jpg', 1, 6, 1, N'Biển 1: Hết hạn chế tốc độ tối đa. Biển 2: Hết tất cả lệnh cấm. Biển 3: Hết cấm vượt. Vì vậy chọn biển 2 và biển 3.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (21, N'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường), xe không được lấn làn, không được đè lên vạch?', N'de1-cau21.jpg', 1, 6, 1, N'Vạch 1: Vạch phân chia các làn xe cùng chiều, dạng vạch đơn, đứt nứt. Vạch 2: Vạch phân chia hai chiều xe chạy, dạng vạch đơn, nét liền. Vạch 3: Vạch phân chia các làn xe cùng chiều, dạng vạch đơn, nét liền. Vì vậy chọn vạch 2.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (22, N'Xe nào được quyền đi trước trong trường hợp này?', N'de1-cau22.jpg', 1, 7, 1, N'Thứ tự xét xe đi trong sa hình: Thứ 1. Xe nào nằm trong giao lộ xe đó được quyền đi trước. Thứ 2. Xe ưu tiên: xe cứu hỏa, xe quân sự, xe công an, xe cứu thương. Thứ 3. Xe ở trên Đường ưu tiên. Thứ 4. Quy tắc bên phải trống ( bên tay phải xe nào trống xe đó đi trước). Thứ 5: Rẽ phải, đi thẳng, rẽ trái. Vì xe cứu thương ở thứ tự thứ 2 nên sẽ đi trước xe mô tô.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (23, N'Xe tải kéo mô tô ba bánh như hình này có đúng quy tắc giao thông không?', N'de1-cau23.jpg', 1, 7, 1, N'Trong hình, có biển báo cấm xe kéo nên trường hợp này không đúng quy tắc giao thông')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (24, N'Theo hướng mũi tên, những hướng nào xe mô tô được phép đi?', N'de1-cau24.jpg', 1, 7, 1, N'Trên hình, Hướng 2 có biển báo cấm xe mô tô đi vào. Hướng 1 không có biển cấm. Hướng 3 cấm xe ô tô không cấm xe mô tô. Vì vậy chọn hướng 1 và hướng 3.

')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (25, N'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', N'de1-cau25.jpg', 1, 7, 1, N'Mũi tên đỏ hướng xe đang di chuyển. Xe con đèn xanh rẽ phải đúng. Xe tải đèn đỏ đi thẳng sai. Xe khách làn đường bắt buộc rẽ trái mà đi thẳng sai. Xe môtô đèn đỏ đi thẳng sai. Chọn xe khách, xe tải, môtô.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (26, N'“Làn đường” là gì?', NULL, 1, 1, 2, N'Quy chuẩn kỹ thuật quốc gia QCVN 41:2016/BGTVT về báo hiệu đường bộ: ''Làn đường là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có đủ bề rộng cho xe chạy an toàn. Một phần đường xe chạy có thể có một hoặc nhiều làn đường.''')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (27, N'“Người tham gia giao thông đường bộ” gồm những đối tượng nào?', NULL, 1, 1, 2, N'Người tham gia giao thông gồm: người điều khiển, người sử dụng phương tiện, dẫn dắt súc vật; người đi bộ trên đường bộ.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (28, N'Theo Luật phòng chống tác hại của rượu, bia, đối tượng nào dưới đây bị cấm sử dụng rượu bia khi tham gia giao thông?', NULL, 1, 2, 2, N'Người ngồi sau, người đi bộ vẫn có thể sử dụng rượu bia. Trường hợp người điểu khiển phương tiện tham gia giao thông sẽ bị cấm sử dụng. Đây là câu hỏi rất dễ nhầm lẫn, nếu các bạn không đọc kỹ rất dễ bị sai.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (29, N'Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo hoặc đẩy các phương tiện khác khi tham gia giao thông không?', NULL, 1, 2, 2, N'Khoản 3, Điều 30 - Luật Giao thông đường bộ năm 2008 quy định người điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy không được thực hiện các hành vi sau: Sử dụng xe để kéo, đẩy xe khác, vật khác, mang, vác và chở vật cồng kềnh;')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (30, N'Hành vi vận chuyển đồ vật cồng kềnh bằng xe mô tô, xe gắn máy khi tham gia giao thông có được phép hay không?', NULL, 1, 3, 2, N'Khoản 3, Điều 30 - Luật Giao thông đường bộ năm 2008 quy định người điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy không được thực hiện các hành vi sau: Sử dụng xe để kéo, đẩy xe khác, vật khác, mang, vác và chở vật cồng kềnh;')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (31, N'Biển báo hiệu hình chữ nhật hoặc hình vuông hoặc hình mũi tên nền xanh lam là loại biển gì dưới đây?', N'de2-cau6.jpg', 1, 6, 2, N'Biển chỉ dẫn là nhóm biển hình chữ nhật hoặc hình vuông, nền xanh, hình và chữ màu trắng.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (32, N'Khi điều khiển xe chạy trên đường biết có xe sau xin vượt nếu đủ điều kiện an toàn người lái xe phải làm gì?', NULL, 1, 5, 2, N'Xử lý cho xe sau vượt: giảm tốc độ và đi về bên phải.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (33, N'Người ngồi trên xe mô tô 2 bánh, xe gắn máy phải đội mũ bảo hiểm có cài quai đúng quy cách khi nào?', NULL, 1, 4, 2, N'Khi tham gia giao thông đường bộ bắt buộc phải đội mũ bảo hiểm.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (34, N'Người lái xe mô tô xử lý như thế nào khi cho xe mô tô phía sau vượt?', NULL, 1, 5, 2, N'Xử lý cho xe sau vượt: giảm tốc độ và đi về bên phải.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (35, N'Người lái xe phải giảm tốc độ thấp hơn tốc độ tối đa cho phép đến mức cần thiết, chú ý quan sát và chuẩn bị sẵn sàng những tình huống có thế xảy ra để phòng ngừa tai nạn trong các trường hợp nào dưới đây?', NULL, 1, 3, 2, N'Giảm tốc độ, chú ý quan sát khi thấy biển báo nguy hiểm.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (36, N'Người điều khiển xe mô tô phải giảm tốc độ và hết sức thận trọng khi qua những đoạn đường nào dưới đây?', NULL, 1, 5, 2, N'Giảm tốc độ: Đường ướt, đường hẹp, đường đèo dốc.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (37, N'Khi quay đầu xe, người lái xe cần phải quan sát và thực hiện các thao tác nào để đảm bảo an toàn giao thông?', NULL, 1, 5, 2, N'Quay đầu xe với tốc độ thấp mới đảm bảo được an toàn và có thời gian xử lý các tình huống bất ngờ.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (38, N'Gương chiếu hậu của xe mô tô hai bánh, có tác dụng gì trong các trường hợp dưới đây?', NULL, 1, 5, 2, N'Gương chiếu hậu của xe mô tô có chức năng giúp người điều khiển phương tiện có thể quan sát an toàn phía sau bên phải - trái, trước khi chuyển làn đường.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (39, N'Khi gặp biển nào xe được rẽ trái?', N'cau14-de2.jpg', 1, 6, 2, N'Biển 1 là biển cấm xe rẽ trái. Biển 2 là biển cấm xe quay đầu. Biển báo cấm quay đầu không có giá trị cấm rẽ trái.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (40, N'Khi gặp biển nào xe ưu tiên theo luật định vẫn phải dừng lại?', N'cau15-de2.jpg', 1, 6, 2, N'Biển báo cấm STOP có ý nghĩa bắt buộc đối với các phương tiện xe cơ giới và phương tiện xe thô sơ kể cả các phương tiện xe cơ giới được ưu tiên theo quy định của nhà nước phải dừng lại trước biển báo này hay trước vạch kẻ ngang đường. Người tham gia giao thông chỉ được phép đi tiếp khi có tín hiệu đèn, cờ hay tín hiệu của người điều khiển giao thông cho phép được đi tiếp.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (41, N'Biển báo nào báo hiệu bắt đầu đoạn đường vào phạm vi khu dân cư?', N'cau16-de2.jpg', 1, 6, 2, N'Biển báo ''bắt đầu khu đông dân cư'' (R.420 - Biển 1) có hiệu lực từ vị trí đặt biển đối với tất cả các tuyến đường trong khu đông dân cư đến vị trí đặt biển báo ''hết khu đông dân cư'' (R.421 - Biển 2).')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (42, N'Biển nào báo hiệu Đường sắt giao nhau với đường bộ không có rào chắn?', N'cau17-de2.jpg', 1, 6, 2, N'Biển 1 là biển báo nguy hiểm giao nhau với đường sắt có rào chắn. Biển 2 là Biển báo nguy hiểm giao nhau với đường sắt không có rào chắn. Biển 3 là biển báo nguy hiểm đường sắt giao vuông góc với đường bộ.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (43, N'Biển nào báo hiệu “Đường đôi”?', N'cau18-de2.jpg', 1, 6, 2, N'Biển 1 là biển báo chỉ dẫn ưu tiên qua đường hẹp. Biển 2 là biển báo nguy hiểm báo hiệu đường đôi. Biển 3 là biển báo nguy hiểm báo hiệu hết đường đôi.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (44, N'Biển báo này có ý nghĩa gì', N'cau19-de2.jpg', 1, 6, 2, N'Đây là biển báo hiệu đường có gồ giảm tốc phía trước. Còn gọi là biển báo đường không bằng phẳng.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (45, N'Trong các biển dưới đây biển nào là biển “Hết mọi lệnh cấm”?', N'cau20-de2.jpg', 1, 6, 2, N'Biển 1 là biển báo hết tốc độ tối đa. Biển 2 là biển báo ''hết mọi lệnh cấm''. Biển 3 là biển báo hết tốc độ tối thiểu.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (46, N'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường)?', N'cau21-de2.jpg', 1, 6, 2, N'Vạch 1: Dạng vạch vàng đơn, đứt nét. Dùng để phân chia các làn đường ngược chiều, không có dải phân cách giữa. Xe được phép cắt qua để sử dụng làn ngược chiều từ cả hai phía. Vạch 2: Vạch trắng nét đứt dùng để phân chia các làn xe cùng chiều. Trong trường hợp này, xe được phép thực hiện việc chuyển làn đường qua vạch. Vạch 3: Ý nghĩa tương tự vạch vàng nét đứt, nhưng với nét liền, xe không được lấn làn hoặc đè lên vạch.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (47, N'Theo tín hiệu đèn, xe nào được phép đi?', N'cau22-de2.jpg', 1, 7, 2, N'Chỉ cần chú ý đèn báo hiệu, chúng ta sẽ thấy đèn xanh ở phía xe khách và xe con được phép đi. Xe mô tô đang đứng ở đèn đỏ nên sẽ phải dừng lại.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (48, N'Xe nào được quyền đi trước trong trường hợp này?', N'cau23-de2.jpg', 1, 7, 2, N'Theo quy tắc giải sa hình, dựa theo nguyên tắc giải sa hình theo hướng đi. Những xe đi theo hướng thẳng, rẽ phải xe đi trước còn xe rẽ sang bên trái sẽ đi sau. Vì thế hình trên, xe mô tô được phép đi trước. Các bạn xem lại video giải sa hình để dễ hình dung hơn.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (49, N'Trong trường hợp này, thứ tự xe đi như thế nào là đúng quy tắc giao thông?', N'cau24-de2.jpg', 1, 7, 2, N'Vì ở hình trên xuất hiện những xe ưu tiên theo luật định, cho nên những xe ưu tiên được quyền đi trước rồi tới những xe khác. Xét theo quy định thứ tự các xe ưu tiên sẽ là Hỏa (Cứu Hỏa) -> Sự (Quân Sự) -> Công (Công An) -> Thương (Cứu Thương). Vì thế trình tự theo đáp án 2 là chính xác.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (50, N'Các xe đi theo hướng mũi tên, xe nào chấp hành đúng quy tắc giao thông?', N'cau25-de2.jpg', 1, 7, 2, N'Chú ý kỹ đến đèn báo giao thông, đèn báo màu xanh sẽ được phép đi và đèn báo đỏ bắt buộc phải dừng lại. Chỉ có mỗi xe khách và mô tô là đi đúng quy tắc giao thông. Trường hợp này không áp dụng mẹo thi sa hình liên quan những câu hỏi nào có xe con chúng ta sẽ loại trừ đi đáp án đó.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (54, N'Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại là gì?', NULL, 2, 1, 1, N'Phần đường xe chạy là phần của đường bộ được sử dụng cho phương tiện giao thông qua lại.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (55, N'“Cuộc đua xe chỉ được thực hiện khi nào?"', NULL, 2, 1, 1, N'Giải đua xe phải do Sở Văn Hóa và Thể Thao cấp phép mới được tổ chức - Cơ quan có thẩm quyền.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (56, N'Ở phần đường dành cho người đi bộ qua đường, trên cầu, đầu cầu, đường cao tốc, đường hẹp, đường dốc, tại nơi đường bộ giao nhau cùng mức với đường sắt có được quay đầu xe hay không?', NULL, 2, 2, 1, N'“KHÔNG ĐƯỢC PHÉP” quay đầu xe trên: đường cao tốc, đường dốc, đường hẹp...

')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (57, N'Người có GPLX mô tô hạng A1 không được phép điều khiển loại xe nào dưới đây?', NULL, 2, 4, 1, N'GPLX hạng A1 được chạy xe từ 50 cm3 – dưới 175 cm3. GPLX hạng A2 được chạy xe trên 175 cm3. Vì vậy chọn Ý 2.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (58, N'Khi điều khiển xe chạy trên đường biết có xe sau xin vượt nếu đủ điều kiện an toàn người lái xe phải làm gì?', NULL, 2, 2, 1, N'Xe sau xin vượt thì: Phải giảm tốc độ và đi sát lề đường bên phải, không gây cản trở.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (59, N'Người điều khiển xe mô tô hai bánh, xe gắn máy có được đi xe dàn hàng ngang; đi xe vào phần đường dành cho người đi bộ và phương tiện khác; sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính) hay không ?', NULL, 2, 3, 1, N'Hành vi nghiêm cấm: đi xe dàn hàng ngang, sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính).')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (60, N'Trên đường bộ ngoài khu vực đông dân cư, đường đôi có dải phân cách giữa (trừ đường cao tốc), loại xe nào dưới đây tham gia giao thông với tốc độ tối đa cho phép là 60 km/h?', NULL, 2, 2, 1, N'Đường đôi có giải phân cách ngoài khu vực đông dân cư tốc độ xe chạy: 60 km/h: ÔTÔ XI TÉC, ô tô kéo rơ moóc. 70 km/h: Xe MÔTÔ, ÔTÔ Buýt. 80 km/h: Xe ÔTÔ trên 30 chỗ, ôtô TẢI trên 3,5 tấn. 90 km/h: Xe ÔTÔ CON, Xe ÔTÔ dưới 30 chỗ.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (61, N'Khi xe ô tô, mô tô đến gần vị trí giao nhau giữa đường bộ và đường sắt không có rào chắn, khi đèn tín hiệu màu đỏ đã bật sáng hoặc khi có tiếng chuông báo hiệu, người lái xe xử lý như thế nào?', NULL, 2, 3, 1, N'Khi có xe tàu hỏa chạy qua, dừng lại cách đường ray gần nhất ít nhất 5 mét.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (62, N'Trên làn đường dành cho ô tô có vũng nước lớn, có nhiều người đi xe mô tô trên làn đường bên cạnh, người lái xe ô tô xử lý như thế nào là có văn hóa giao thông?', NULL, 2, 2, 1, N'Gặp vũng nước thì phải chạy chậm để không văng nước vào xe đi trong lề.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (63, N'Khi tránh nhau trên đường hẹp, người lái xe cần phải chú ý những điểm nào để đảm bảo an toàn giao thông?', NULL, 2, 5, 1, N'Ý 1: Phải nhường đường là đúng Ý 2: Tránh xe ban đêm thì bật đèn cốt là đúng Ý 3: Tránh xe ban đêm bật đèn pha là sai. Vì vậy chọn Ý 1 và Ý 2.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (64, N'Thế nào là động cơ 4 kỳ?', NULL, 2, 5, 1, N'Động cơ 4 kỳ là động cơ có pít tông thực hiện 4 hành trình sinh công.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (65, N'Biển nào cấm xe rẽ trái?', N'de3-cau12.jpg', 2, 6, 1, N'Biển 1: Cấm rẽ trái. Không cấm quay đầu. Biển 2: Cấm quay đầu. Không cấm rẽ trái. Vì vậy chọn biển 1.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (66, N'Gặp biển nào xe xích lô được phép đi vào?', N'de3-cau13jpg', 2, 6, 1, N'Biển 1: Cấm xe lam. Biển 2: Cấm xe xích lô máy. Biển 3: Cấm xe xích lô. Biển 1 và Biển 2 cấm xe lam và xích lô máy không cấm xích lô nên xích lô được phép đi.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (67, N'Biển nào xe mô tô hai bánh không được đi vào?', N'de3-cau14.jpg', 2, 6, 1, N'Biển 1: Cấm ô tô không cấm xe mô tô. Biển 2: Cấm xe mô tô hai bánh. Biển 3: Cấm xe tải không cấm xe mô tô. Vì vậy chọn Biển 2.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (68, N'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này?', N'de3-cau15.jpg', 2, 6, 1, N'Biển 1: Báo hiệu nhường đường cho người đi bộ. Biển 2: Cấm người đi bộ vào. Biển 3: Đường này chỉ dành cho người đi bộ. Vì vậy chọn biển 3.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (69, N'Biển nào báo hiệu “Giao nhau với đường ưu tiên”?', N'de3-cau16.jpg', 2, 6, 1, N'Biển 1: Giao nhau với đường cùng cấp (Cùng Cấp dấu Cộng) Biển 2: Giao nhau với đường không ưu tiên, đi trên đường này được quyền ưu tiên đi trước. Biển 3: Giao nhau với đường ưu tiên, gặp biển này phải nhường đường')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (70, N'Biển nào sau đây là biển “Kè, vực sâu bên đường phía bên trái”?', N'de3-cau17.jpg', 2, 6, 1, N'Biển 1: Kè, vực sâu phía trước. Biển 2: Kè, vực sâu bên đường phía bên phải. Có hình hai bánh xe bên tay phải sắp rơi xuống kè, vực bên phải. Biển 3: Kè, vực sâu bên đường phái bên trái. Có hình hai bánh xe bên tay trái sắp rơi xuống kè, vực bên trái.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (71, N'Biển báo này có ý nghĩa gì?', N'de3-cau18.jpg', 2, 6, 1, N'Biển 1 và Biển 2: Đá lở. Có hình đá rơi từ trên núi xuống nên tìm đáp án có chữ đất đá!')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (72, N'Biển nào cho phép được quay đầu xe đi theo hướng ngược lại khi đặt biển trước ngã ba, ngã tư?', N'de3-cau19.jpg', 2, 6, 1, N'Biển 1: Đặt trước ngã 3, ngã 4, chỉ được rẽ trái ở phạm vi ngã 3 ngã 4 phía sau mặt biển. Biển 2: Đặt phía sau ngã 3, 4 có hiệu lực phía trước mặt biển. Gặp biển này chỉ được rẽ trái hoặc phải. Biển 3: Đặt trước ngã 3, ngã tư được phép đi thẳng hoặc rẽ trái phía sau mặt biển và được quay đầu xe để đi theo hướng ngược lại.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (73, N'Biển số 1 có ý nghĩa gì?', N'de3-cau20.jpg', 2, 6, 1, N'Biển 1 báo hiệu cầu vượt liên thông Biển 2 và 3 báo hiệu cầu vượt cắt ngang.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (74, N'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường)?', N'de3-cau21.jpg', 2, 6, 1, N'Vạch trắng phân chia cùng chiều, nhiều làn xe Vạch vàng phân chia hai chiều xe chạy.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (75, N'Theo tín hiệu đèn, xe tải đi theo hướng nào là đúng quy tắc giao thông?', N'de3-cau22.jpg', 2, 7, 1, N'Theo tín hiệu đèn: Hướng 1 đèn xanh rẽ phải nên được phép đi. Hướng đi thẳng đèn tín hiệu đỏ do đó các hướng 2, 3, 4 không được đi. Vì vậy chỉ hướng 1 được đi.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (76, N'Các xe đi như thế nào là đúng quy tắc giao thông?', N'de3-cau23jpg', 2, 7, 1, N'Cảnh sát giao thông giơ tay thẳng đứng nghĩa là tất cả các xe phải dừng lại trừ xe đã vào ngã 3, 4')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (77, N'Xe nào đi trước là đúng quy tắc giao thông?', N'de3-cau24.jpg', 2, 7, 1, N'Biển báo phía trước là biển giao nhau với đường ưu tiên. Xe tải đang đi trên đường ưu tiên, xe của bạn đi trên đường không ưu tiên. Vì vậy phải nhường xe tải đi trước.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (78, N'Bạn xử lý như thế nào trong trường hợp này?', N'de3-cau25.jpg', 2, 7, 1, N'Trên hình xe tải đã vào ngã tư trước nên ưu tiên đi trước. Biển báo phải trước là đường ưu tiên dành cho xe thô sơ nên nhường đường cho xe đạp.Vì vậy xe bạn giảm tốc độ và rẽ phải sau cùng.')
INSERT [dbo].[Question] ([Question_Id], [Question_Description], [Question_Image], [License_Id], [Topic_Id], [Set_Id], [Question_Explain]) VALUES (80, N'Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại là gì?', N'', 1, 1, 5, N'Phần đường xe chạy là phần của đường bộ được sử dụng cho phương tiện giao thông qua lại.')
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Set] ON 

INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (1, 1, NULL)
INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (2, 2, NULL)
INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (3, 3, NULL)
INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (4, 4, NULL)
INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (5, 5, NULL)
INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (6, 6, NULL)
INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (7, 7, NULL)
INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (8, 8, NULL)
INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (9, 9, NULL)
INSERT [dbo].[Set] ([Set_Id], [Set_Number], [Set_Name]) VALUES (10, 10, NULL)
SET IDENTITY_INSERT [dbo].[Set] OFF
GO
SET IDENTITY_INSERT [dbo].[Topic] ON 

INSERT [dbo].[Topic] ([Topic_Id], [Topic_Name]) VALUES (1, N'Khái niệm')
INSERT [dbo].[Topic] ([Topic_Id], [Topic_Name]) VALUES (2, N'VHGT và đạo đức người lái xe')
INSERT [dbo].[Topic] ([Topic_Id], [Topic_Name]) VALUES (3, N'Tình huống mất ATGT nghiêm trọng')
INSERT [dbo].[Topic] ([Topic_Id], [Topic_Name]) VALUES (4, N'Quy tắc giao thông')
INSERT [dbo].[Topic] ([Topic_Id], [Topic_Name]) VALUES (5, N'Kỹ thuật lái xe hoặc cấu tạo sửa chữa')
INSERT [dbo].[Topic] ([Topic_Id], [Topic_Name]) VALUES (6, N'Hệ thống biển báo đường bộ')
INSERT [dbo].[Topic] ([Topic_Id], [Topic_Name]) VALUES (7, N'Sa hình và kỹ năng xử lý tình huống GT')
SET IDENTITY_INSERT [dbo].[Topic] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([User_Id], [Username], [Password], [Fullname], [Phonenumber], [Email], [User_Role]) VALUES (1, N'minh', N'1', N'Quang Minh', N'0943081570', N'minhnqhe176167@fpt.edu.vn', 0)
INSERT [dbo].[User] ([User_Id], [Username], [Password], [Fullname], [Phonenumber], [Email], [User_Role]) VALUES (2, N'admin', N'1', NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([User_Id], [Username], [Password], [Fullname], [Phonenumber], [Email], [User_Role]) VALUES (3, N'minhh', N'1', N'Nguyen Quang Minh', N'0943081570', N'mahsb@gmail.con', 0)
INSERT [dbo].[User] ([User_Id], [Username], [Password], [Fullname], [Phonenumber], [Email], [User_Role]) VALUES (4, N'linh', N'1', N'Dieu Linh', N'1111111111', N'wwww', 0)
INSERT [dbo].[User] ([User_Id], [Username], [Password], [Fullname], [Phonenumber], [Email], [User_Role]) VALUES (7, N'minhh', N'1', N'Nguyen Quang Minh', N'0943081570', N'mahsb@gmail.con', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([Question_Id])
REFERENCES [dbo].[Question] ([Question_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([User_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_License] FOREIGN KEY([License_Id])
REFERENCES [dbo].[License] ([License_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_License]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Set] FOREIGN KEY([Set_Id])
REFERENCES [dbo].[Set] ([Set_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Set]
GO
ALTER TABLE [dbo].[History_Detail]  WITH CHECK ADD FOREIGN KEY([Answer_Id])
REFERENCES [dbo].[Answer] ([Answer_Id])
GO
ALTER TABLE [dbo].[History_Detail]  WITH CHECK ADD FOREIGN KEY([History_Id])
REFERENCES [dbo].[History] ([History_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History_Detail]  WITH CHECK ADD FOREIGN KEY([Question_Id])
REFERENCES [dbo].[Question] ([Question_Id])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([License_Id])
REFERENCES [dbo].[License] ([License_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([Set_Id])
REFERENCES [dbo].[Set] ([Set_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([Topic_Id])
REFERENCES [dbo].[Topic] ([Topic_Id])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [Winapp_Final_Project] SET  READ_WRITE 
GO
