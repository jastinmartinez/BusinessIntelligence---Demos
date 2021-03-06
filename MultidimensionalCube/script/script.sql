USE [master]
GO
/****** Object:  Database [OdontologyConsultant]    Script Date: 11/12/2021 10:59:40 AM ******/
CREATE DATABASE [OdontologyConsultant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OdontologyConsultant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OdontologyConsultant.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OdontologyConsultant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OdontologyConsultant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OdontologyConsultant] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OdontologyConsultant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OdontologyConsultant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET ARITHABORT OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OdontologyConsultant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OdontologyConsultant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OdontologyConsultant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OdontologyConsultant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET RECOVERY FULL 
GO
ALTER DATABASE [OdontologyConsultant] SET  MULTI_USER 
GO
ALTER DATABASE [OdontologyConsultant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OdontologyConsultant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OdontologyConsultant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OdontologyConsultant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OdontologyConsultant] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OdontologyConsultant] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'OdontologyConsultant', N'ON'
GO
ALTER DATABASE [OdontologyConsultant] SET QUERY_STORE = OFF
GO
USE [OdontologyConsultant]
GO
/****** Object:  Table [dbo].[appointment_logs]    Script Date: 11/12/2021 10:59:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appointment_logs](
	[appoinment_logs_id] [int] IDENTITY(1,1) NOT NULL,
	[appointment_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[time] [time](0) NOT NULL,
 CONSTRAINT [PK_appoiment_logs] PRIMARY KEY CLUSTERED 
(
	[appoinment_logs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appointment_status]    Script Date: 11/12/2021 10:59:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appointment_status](
	[appointment_status_id] [int] IDENTITY(1,1) NOT NULL,
	[apppoinment_id] [int] NOT NULL,
	[appointment_status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_appointment_status] PRIMARY KEY CLUSTERED 
(
	[appointment_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[binnacle]    Script Date: 11/12/2021 10:59:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[binnacle](
	[binnacle_source] [varchar](50) NOT NULL,
	[binnacle_amount_records] [int] NOT NULL,
	[binnacle_date] [date] NOT NULL,
	[binnacle_time] [time](0) NOT NULL,
	[binnacle_estate] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[center]    Script Date: 11/12/2021 10:59:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[center](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CenterName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Center] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[center_appoinment]    Script Date: 11/12/2021 10:59:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[center_appoinment](
	[CenterID] [int] NOT NULL,
	[AppointmentID] [int] NOT NULL,
 CONSTRAINT [PK_center_appoinment] PRIMARY KEY CLUSTERED 
(
	[CenterID] ASC,
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medical_appointment]    Script Date: 11/12/2021 10:59:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medical_appointment](
	[medical_appointment_id] [int] IDENTITY(1,1) NOT NULL,
	[medical_appointment_description] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_first_name] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_last_name] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_phone] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_email] [nvarchar](300) NOT NULL,
	[medical_appointment_is_surgery_required] [nvarchar](300) NOT NULL,
	[medical_appointment_is_new_customer] [nvarchar](300) NOT NULL,
	[medical_appointment_has_dental_issues] [nvarchar](300) NOT NULL,
	[medical_appointment_date] [date] NOT NULL,
	[medical_appointment_time] [time](0) NOT NULL,
 CONSTRAINT [PK_medical_appointment] PRIMARY KEY CLUSTERED 
(
	[medical_appointment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[source_medical_appointment]    Script Date: 11/12/2021 10:59:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[source_medical_appointment](
	[medical_appointment_description] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_first_name] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_last_name] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_phone] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_email] [nvarchar](300) NOT NULL,
	[medical_appointment_is_surgery_required] [nvarchar](300) NOT NULL,
	[medical_appointment_is_new_customer] [nvarchar](300) NOT NULL,
	[medical_appointment_has_dental_issues] [nvarchar](300) NOT NULL,
	[medical_appointment_date] [date] NOT NULL,
	[medical_appointment_time] [time](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stage_medical_appointment]    Script Date: 11/12/2021 10:59:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stage_medical_appointment](
	[medical_appointment_description] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_first_name] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_last_name] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_phone] [nvarchar](300) NOT NULL,
	[medical_appointment_customer_email] [nvarchar](300) NOT NULL,
	[medical_appointment_is_surgery_required] [nvarchar](300) NOT NULL,
	[medical_appointment_is_new_customer] [nvarchar](300) NOT NULL,
	[medical_appointment_has_dental_issues] [nvarchar](300) NOT NULL,
	[medical_appointment_date] [date] NOT NULL,
	[medical_appointment_time] [time](0) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[appointment_logs] ON 

INSERT [dbo].[appointment_logs] ([appoinment_logs_id], [appointment_id], [date], [time]) VALUES (1, 10, CAST(N'2021-11-12' AS Date), CAST(N'08:35:01' AS Time))
INSERT [dbo].[appointment_logs] ([appoinment_logs_id], [appointment_id], [date], [time]) VALUES (2, 6, CAST(N'2021-11-12' AS Date), CAST(N'08:35:46' AS Time))
INSERT [dbo].[appointment_logs] ([appoinment_logs_id], [appointment_id], [date], [time]) VALUES (3, 5, CAST(N'2021-11-12' AS Date), CAST(N'08:35:46' AS Time))
INSERT [dbo].[appointment_logs] ([appoinment_logs_id], [appointment_id], [date], [time]) VALUES (4, 11, CAST(N'2021-11-12' AS Date), CAST(N'08:35:46' AS Time))
INSERT [dbo].[appointment_logs] ([appoinment_logs_id], [appointment_id], [date], [time]) VALUES (5, 8, CAST(N'2021-11-12' AS Date), CAST(N'08:35:46' AS Time))
INSERT [dbo].[appointment_logs] ([appoinment_logs_id], [appointment_id], [date], [time]) VALUES (6, 9, CAST(N'2021-11-12' AS Date), CAST(N'08:35:46' AS Time))
INSERT [dbo].[appointment_logs] ([appoinment_logs_id], [appointment_id], [date], [time]) VALUES (7, 3, CAST(N'2021-11-12' AS Date), CAST(N'08:35:46' AS Time))
INSERT [dbo].[appointment_logs] ([appoinment_logs_id], [appointment_id], [date], [time]) VALUES (8, 2, CAST(N'2021-11-12' AS Date), CAST(N'08:35:46' AS Time))
SET IDENTITY_INSERT [dbo].[appointment_logs] OFF
GO
SET IDENTITY_INSERT [dbo].[appointment_status] ON 

INSERT [dbo].[appointment_status] ([appointment_status_id], [apppoinment_id], [appointment_status]) VALUES (1, 1, N'Cancel')
INSERT [dbo].[appointment_status] ([appointment_status_id], [apppoinment_id], [appointment_status]) VALUES (2, 2, N'Done')
INSERT [dbo].[appointment_status] ([appointment_status_id], [apppoinment_id], [appointment_status]) VALUES (3, 3, N'Issue is on hold')
SET IDENTITY_INSERT [dbo].[appointment_status] OFF
GO
SET IDENTITY_INSERT [dbo].[center] ON 

INSERT [dbo].[center] ([ID], [CenterName]) VALUES (1, N'Boston Center')
INSERT [dbo].[center] ([ID], [CenterName]) VALUES (2, N'Miami Center')
INSERT [dbo].[center] ([ID], [CenterName]) VALUES (3, N'New York Center')
SET IDENTITY_INSERT [dbo].[center] OFF
GO
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (1, 5)
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (1, 11)
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (2, 2)
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (2, 6)
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (2, 10)
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (2, 11)
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (3, 1)
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (3, 7)
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (3, 8)
INSERT [dbo].[center_appoinment] ([CenterID], [AppointmentID]) VALUES (3, 9)
GO
SET IDENTITY_INSERT [dbo].[medical_appointment] ON 

INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (1, N'Asistencia 1', N'Jastin', N'Martinez', N'809-001-9030', N'martinezjastin@hotmail.com', N'Si', N'Si', N'Si', CAST(N'2021-11-23' AS Date), CAST(N'08:36:00' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (2, N'Asistencia 2', N'Nicolas', N'Pimentez', N'809-001-9031', N'pimentelnicolas@gmail.com', N'No', N'Si', N'Si', CAST(N'2021-10-14' AS Date), CAST(N'11:49:52' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (3, N'Asistencia 3', N'Alexis', N'Colon', N'809-001-9032', N'alexiscolon@gmail.com', N'No', N'No', N'No', CAST(N'2021-10-06' AS Date), CAST(N'10:58:51' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (4, N'Asistencia 4', N'Pedro', N'Vasquez', N'809-001-9033', N'pedrovasquez@gmail.com', N'Si', N'Si', N'Si', CAST(N'2021-11-07' AS Date), CAST(N'08:44:49' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (5, N'Asistencia 5', N'Francis', N'Aquino', N'809-001-9034', N'francisaquino@gmail.com', N'No', N'Si', N'No', CAST(N'2021-11-08' AS Date), CAST(N'07:05:37' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (6, N'Asistencia 6', N'Ezequiel', N'Molina', N'809-001-9035', N'ezequielmolina@gmail.com', N'Si', N'Si', N'Si', CAST(N'2021-11-11' AS Date), CAST(N'09:01:51' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (7, N'Asistencia 7', N'Francisco', N'Rojas', N'809-001-9036', N'franciscoroja@gmail.com', N'No', N'No', N'No', CAST(N'2021-11-12' AS Date), CAST(N'10:11:05' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (8, N'Asistencia 8', N'Daniel', N'Pena', N'809-001-9037', N'danielpena@gmail.com', N'No', N'No', N'No', CAST(N'2021-11-09' AS Date), CAST(N'10:13:40' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (9, N'Asistencia 9', N'Andres', N'Parra', N'809-001-9038', N'andresparra@gmail.com', N'Si', N'Si', N'No', CAST(N'2021-10-19' AS Date), CAST(N'07:13:54' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (10, N'Asistencia 10', N'Erick', N'Restituyo', N'809-001-9039', N'erickrestituyo@gmail.com', N'No', N'No', N'Si', CAST(N'2021-10-15' AS Date), CAST(N'09:50:13' AS Time))
INSERT [dbo].[medical_appointment] ([medical_appointment_id], [medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (11, N'Asistencia 11', N'Cesar', N'Encarnacion', N'809-001-9040', N'cesarencarnacion@gmail.com', N'No', N'No', N'Si', CAST(N'2021-11-01' AS Date), CAST(N'08:02:22' AS Time))
SET IDENTITY_INSERT [dbo].[medical_appointment] OFF
GO
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 1', N'Jastin', N'Martinez', N'809-001-9030', N'martinezjastin@hotmail.com', N'Si', N'Si', N'Si', CAST(N'2021-11-23' AS Date), CAST(N'08:36:00' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 2', N'Nicolas', N'Pimentez', N'809-001-9031', N'pimentelnicolas@gmail.com', N'No', N'Si', N'Si', CAST(N'2021-10-14' AS Date), CAST(N'11:49:52' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 3', N'Alexis', N'Colon', N'809-001-9032', N'alexiscolon@gmail.com', N'No', N'No', N'No', CAST(N'2021-10-06' AS Date), CAST(N'10:58:51' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 4', N'Pedro', N'Vasquez', N'809-001-9033', N'pedrovasquez@gmail.com', N'Si', N'Si', N'Si', CAST(N'2021-11-07' AS Date), CAST(N'08:44:49' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 5', N'Francis', N'Aquino', N'809-001-9034', N'francisaquino@gmail.com', N'No', N'Si', N'No', CAST(N'2021-11-08' AS Date), CAST(N'07:05:37' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 6', N'Ezequiel', N'Molina', N'809-001-9035', N'ezequielmolina@gmail.com', N'Si', N'Si', N'Si', CAST(N'2021-11-11' AS Date), CAST(N'09:01:51' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 7', N'Francisco', N'Rojas', N'809-001-9036', N'franciscoroja@gmail.com', N'No', N'No', N'No', CAST(N'2021-11-12' AS Date), CAST(N'10:11:05' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 8', N'Daniel', N'Pena', N'809-001-9037', N'danielpena@gmail.com', N'No', N'No', N'No', CAST(N'2021-11-09' AS Date), CAST(N'10:13:40' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 9', N'Andres', N'Parra', N'809-001-9038', N'andresparra@gmail.com', N'Si', N'Si', N'No', CAST(N'2021-10-19' AS Date), CAST(N'07:13:54' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 10', N'Erick', N'Restituyo', N'809-001-9039', N'erickrestituyo@gmail.com', N'No', N'No', N'Si', CAST(N'2021-10-15' AS Date), CAST(N'09:50:13' AS Time))
INSERT [dbo].[source_medical_appointment] ([medical_appointment_description], [medical_appointment_customer_first_name], [medical_appointment_customer_last_name], [medical_appointment_customer_phone], [medical_appointment_customer_email], [medical_appointment_is_surgery_required], [medical_appointment_is_new_customer], [medical_appointment_has_dental_issues], [medical_appointment_date], [medical_appointment_time]) VALUES (N'Asistencia 11', N'Cesar', N'Encarnacion', N'809-001-9040', N'cesarencarnacion@gmail.com', N'No', N'No', N'Si', CAST(N'2021-11-01' AS Date), CAST(N'08:02:22' AS Time))
GO
ALTER TABLE [dbo].[appointment_logs]  WITH CHECK ADD  CONSTRAINT [FK_appoiment_logs_medical_appointment] FOREIGN KEY([appointment_id])
REFERENCES [dbo].[medical_appointment] ([medical_appointment_id])
GO
ALTER TABLE [dbo].[appointment_logs] CHECK CONSTRAINT [FK_appoiment_logs_medical_appointment]
GO
ALTER TABLE [dbo].[appointment_status]  WITH CHECK ADD  CONSTRAINT [FK_appointment_status_medical_appointment] FOREIGN KEY([appointment_status_id])
REFERENCES [dbo].[medical_appointment] ([medical_appointment_id])
GO
ALTER TABLE [dbo].[appointment_status] CHECK CONSTRAINT [FK_appointment_status_medical_appointment]
GO
ALTER TABLE [dbo].[center_appoinment]  WITH CHECK ADD  CONSTRAINT [FK_center_appoinment_Center] FOREIGN KEY([CenterID])
REFERENCES [dbo].[center] ([ID])
GO
ALTER TABLE [dbo].[center_appoinment] CHECK CONSTRAINT [FK_center_appoinment_Center]
GO
ALTER TABLE [dbo].[center_appoinment]  WITH CHECK ADD  CONSTRAINT [FK_center_appoinment_medical_appointment] FOREIGN KEY([AppointmentID])
REFERENCES [dbo].[medical_appointment] ([medical_appointment_id])
GO
ALTER TABLE [dbo].[center_appoinment] CHECK CONSTRAINT [FK_center_appoinment_medical_appointment]
GO
USE [master]
GO
ALTER DATABASE [OdontologyConsultant] SET  READ_WRITE 
GO
