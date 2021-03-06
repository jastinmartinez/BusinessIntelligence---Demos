USE [master]
GO
/****** Object:  Database [OdontologyConsultant]    Script Date: 10/15/2021 12:21:01 PM ******/
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
/****** Object:  Table [dbo].[binnacle]    Script Date: 10/15/2021 12:21:01 PM ******/
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
/****** Object:  Table [dbo].[medical_appointment]    Script Date: 10/15/2021 12:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medical_appointment](
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
/****** Object:  Table [dbo].[source_medical_appointment]    Script Date: 10/15/2021 12:21:01 PM ******/
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
/****** Object:  Table [dbo].[stage_medical_appointment]    Script Date: 10/15/2021 12:21:01 PM ******/
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
USE [master]
GO
ALTER DATABASE [OdontologyConsultant] SET  READ_WRITE 
GO
