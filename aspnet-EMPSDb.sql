USE [master]
GO
/****** Object:  Database [aspnet-EMPSDb]    Script Date: 1/15/2018 6:37:36 PM ******/
CREATE DATABASE [aspnet-EMPSDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-EMPSDb', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\aspnet-EMPSDb.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'aspnet-EMPSDb_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\aspnet-EMPSDb_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [aspnet-EMPSDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-EMPSDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-EMPSDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet-EMPSDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-EMPSDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-EMPSDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-EMPSDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-EMPSDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-EMPSDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-EMPSDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-EMPSDb] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-EMPSDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-EMPSDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-EMPSDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-EMPSDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [aspnet-EMPSDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/15/2018 6:37:37 PM ******/
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
/****** Object:  Table [dbo].[Certifications]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CertificationName] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Certifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [nvarchar](5) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [nvarchar](5) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Designations]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DesignationCode] [nvarchar](5) NOT NULL,
	[DesignationName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Designations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Districts]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DivisionId] [int] NOT NULL,
	[DistrictCode] [nvarchar](5) NOT NULL,
	[DistrictName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Districts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Divisions]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Divisions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[DivisionCode] [nvarchar](5) NOT NULL,
	[DivisionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Divisions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Educations]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Educations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EducationName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Educations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeCertifications]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeCertifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[CertificationId] [int] NOT NULL,
	[InstituteName] [nvarchar](max) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeCertifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeEducations]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeEducations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[EducationId] [int] NOT NULL,
	[ExamId] [int] NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[InstituteName] [nvarchar](max) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[Duration] [nvarchar](25) NOT NULL,
	[PassingYear] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EmployeEducations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeLanguages]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeLanguages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Reading] [nvarchar](50) NOT NULL,
	[Speaking] [nvarchar](50) NOT NULL,
	[Writing] [nvarchar](50) NOT NULL,
	[Understanding] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeLanguages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](100) NOT NULL,
	[FathersName] [nvarchar](100) NOT NULL,
	[MothersName] [nvarchar](100) NOT NULL,
	[MaritalStatus] [int] NOT NULL,
	[SpouseName] [nvarchar](100) NULL,
	[Gender] [int] NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[BloodGroup] [int] NOT NULL,
	[Religion] [int] NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Mobile] [nvarchar](20) NOT NULL,
	[Nationality] [nvarchar](20) NOT NULL,
	[NationalID] [nvarchar](17) NOT NULL,
	[HouseNo] [nvarchar](max) NOT NULL,
	[RoadNo] [nvarchar](max) NOT NULL,
	[Village] [nvarchar](max) NOT NULL,
	[CountryId] [int] NOT NULL,
	[DivisionId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PoliceStationId] [int] NOT NULL,
	[UnionId] [int] NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[JoiningDate] [datetime] NOT NULL,
	[EmployementStatus] [int] NOT NULL,
	[PayGrade] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[EmployeeRegNo] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](50) NOT NULL,
	[ContactMobileNo] [nvarchar](20) NOT NULL,
	[ContactEmail] [nvarchar](255) NOT NULL,
	[ContactRelation] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeSkills]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSkills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
	[Details] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeSkills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeTrainingHistories]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTrainingHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[TrainingTitle] [nvarchar](100) NOT NULL,
	[TrainingTopic] [nvarchar](100) NOT NULL,
	[TrainingInstitute] [nvarchar](100) NOT NULL,
	[IstituteLocation] [nvarchar](25) NOT NULL,
	[InstituteCountry] [nvarchar](25) NOT NULL,
	[TrainingYear] [int] NOT NULL,
	[TrainingDuration] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeTrainingHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmploymentHistories]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploymentHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
	[CompanyLocation] [nvarchar](100) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[EmploymentFromDate] [datetime] NOT NULL,
	[IsCurrentEmployee] [int] NOT NULL,
	[EmploymentToDate] [datetime] NOT NULL,
	[Responsibilities] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_dbo.EmploymentHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exams]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExamName] [nvarchar](100) NOT NULL,
	[EducationId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Exams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageCode] [nvarchar](3) NOT NULL,
	[LanguageName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dbo.Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PoliceStations]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PoliceStations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PoliceStationCode] [nvarchar](5) NOT NULL,
	[PoliceStationName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.PoliceStations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skills]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unions]    Script Date: 1/15/2018 6:37:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PoliceStationId] [int] NOT NULL,
	[UnionCode] [nvarchar](5) NOT NULL,
	[UnionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Unions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CertificationName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CertificationName] ON [dbo].[Certifications]
(
	[CertificationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CountryCode]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CountryCode] ON [dbo].[Countries]
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CountryName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_CountryName] ON [dbo].[Countries]
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DepartmentCode]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DepartmentCode] ON [dbo].[Departments]
(
	[DepartmentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DepartmentName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DepartmentName] ON [dbo].[Departments]
(
	[DepartmentName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DesignationCode]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DesignationCode] ON [dbo].[Designations]
(
	[DesignationCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DesignationName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DesignationName] ON [dbo].[Designations]
(
	[DesignationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DistrictCode]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DistrictCode] ON [dbo].[Districts]
(
	[DistrictCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DistrictName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DistrictName] ON [dbo].[Districts]
(
	[DistrictName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DivisionId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_DivisionId] ON [dbo].[Districts]
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_CountryId] ON [dbo].[Divisions]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DivisionCode]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DivisionCode] ON [dbo].[Divisions]
(
	[DivisionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DivisionName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_DivisionName] ON [dbo].[Divisions]
(
	[DivisionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_EducationName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_EducationName] ON [dbo].[Educations]
(
	[EducationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CertificationId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_CertificationId] ON [dbo].[EmployeeCertifications]
(
	[CertificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[EmployeeCertifications]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EducationId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_EducationId] ON [dbo].[EmployeEducations]
(
	[EducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[EmployeEducations]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExamId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExamId] ON [dbo].[EmployeEducations]
(
	[ExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[EmployeeLanguages]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LanguageId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_LanguageId] ON [dbo].[EmployeeLanguages]
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CountryId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_CountryId] ON [dbo].[Employees]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepartmentId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepartmentId] ON [dbo].[Employees]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DesignationId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_DesignationId] ON [dbo].[Employees]
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DistrictId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_DistrictId] ON [dbo].[Employees]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DivisionId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_DivisionId] ON [dbo].[Employees]
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Email]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Email] ON [dbo].[Employees]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Mobile]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Mobile] ON [dbo].[Employees]
(
	[Mobile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_NationalID]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_NationalID] ON [dbo].[Employees]
(
	[NationalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PoliceStationId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_PoliceStationId] ON [dbo].[Employees]
(
	[PoliceStationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UnionId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_UnionId] ON [dbo].[Employees]
(
	[UnionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[EmployeeSkills]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SkillId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_SkillId] ON [dbo].[EmployeeSkills]
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[EmployeeTrainingHistories]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepartmentId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepartmentId] ON [dbo].[EmploymentHistories]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DesignationId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_DesignationId] ON [dbo].[EmploymentHistories]
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmployeeId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmployeeId] ON [dbo].[EmploymentHistories]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EducationId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_EducationId] ON [dbo].[Exams]
(
	[EducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ExamName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ExamName] ON [dbo].[Exams]
(
	[ExamName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LanguageCode]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LanguageCode] ON [dbo].[Languages]
(
	[LanguageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LanguageName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_LanguageName] ON [dbo].[Languages]
(
	[LanguageName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DistrictId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_DistrictId] ON [dbo].[PoliceStations]
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PoliceStationCode]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PoliceStationCode] ON [dbo].[PoliceStations]
(
	[PoliceStationCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PoliceStationName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_PoliceStationName] ON [dbo].[PoliceStations]
(
	[PoliceStationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SkillName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_SkillName] ON [dbo].[Skills]
(
	[SkillName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PoliceStationId]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_PoliceStationId] ON [dbo].[Unions]
(
	[PoliceStationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UnionCode]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_UnionCode] ON [dbo].[Unions]
(
	[UnionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UnionName]    Script Date: 1/15/2018 6:37:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_UnionName] ON [dbo].[Unions]
(
	[UnionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ('') FOR [ContactPerson]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ('') FOR [ContactMobileNo]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ('') FOR [ContactEmail]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [ContactRelation]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Districts_dbo.Divisions_DivisionId] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([Id])
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_dbo.Districts_dbo.Divisions_DivisionId]
GO
ALTER TABLE [dbo].[Divisions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Divisions_dbo.Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Divisions] CHECK CONSTRAINT [FK_dbo.Divisions_dbo.Countries_CountryId]
GO
ALTER TABLE [dbo].[EmployeeCertifications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeCertifications_dbo.Certifications_CertificationId] FOREIGN KEY([CertificationId])
REFERENCES [dbo].[Certifications] ([Id])
GO
ALTER TABLE [dbo].[EmployeeCertifications] CHECK CONSTRAINT [FK_dbo.EmployeeCertifications_dbo.Certifications_CertificationId]
GO
ALTER TABLE [dbo].[EmployeeCertifications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeCertifications_dbo.Employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EmployeeCertifications] CHECK CONSTRAINT [FK_dbo.EmployeeCertifications_dbo.Employees_EmployeeId]
GO
ALTER TABLE [dbo].[EmployeEducations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeEducations_dbo.Educations_EducationId] FOREIGN KEY([EducationId])
REFERENCES [dbo].[Educations] ([Id])
GO
ALTER TABLE [dbo].[EmployeEducations] CHECK CONSTRAINT [FK_dbo.EmployeEducations_dbo.Educations_EducationId]
GO
ALTER TABLE [dbo].[EmployeEducations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeEducations_dbo.Employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EmployeEducations] CHECK CONSTRAINT [FK_dbo.EmployeEducations_dbo.Employees_EmployeeId]
GO
ALTER TABLE [dbo].[EmployeEducations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeEducations_dbo.Exams_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exams] ([Id])
GO
ALTER TABLE [dbo].[EmployeEducations] CHECK CONSTRAINT [FK_dbo.EmployeEducations_dbo.Exams_ExamId]
GO
ALTER TABLE [dbo].[EmployeeLanguages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeLanguages_dbo.Employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EmployeeLanguages] CHECK CONSTRAINT [FK_dbo.EmployeeLanguages_dbo.Employees_EmployeeId]
GO
ALTER TABLE [dbo].[EmployeeLanguages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeLanguages_dbo.Languages_LanguageId] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([Id])
GO
ALTER TABLE [dbo].[EmployeeLanguages] CHECK CONSTRAINT [FK_dbo.EmployeeLanguages_dbo.Languages_LanguageId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employees_dbo.Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_dbo.Employees_dbo.Countries_CountryId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employees_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_dbo.Employees_dbo.Departments_DepartmentId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employees_dbo.Designations_DesignationId] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designations] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_dbo.Employees_dbo.Designations_DesignationId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employees_dbo.Districts_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Districts] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_dbo.Employees_dbo.Districts_DistrictId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employees_dbo.Divisions_DivisionId] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Divisions] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_dbo.Employees_dbo.Divisions_DivisionId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employees_dbo.PoliceStations_PoliceStationId] FOREIGN KEY([PoliceStationId])
REFERENCES [dbo].[PoliceStations] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_dbo.Employees_dbo.PoliceStations_PoliceStationId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employees_dbo.Unions_UnionId] FOREIGN KEY([UnionId])
REFERENCES [dbo].[Unions] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_dbo.Employees_dbo.Unions_UnionId]
GO
ALTER TABLE [dbo].[EmployeeSkills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeSkills_dbo.Employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EmployeeSkills] CHECK CONSTRAINT [FK_dbo.EmployeeSkills_dbo.Employees_EmployeeId]
GO
ALTER TABLE [dbo].[EmployeeSkills]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeSkills_dbo.Skills_SkillId] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([Id])
GO
ALTER TABLE [dbo].[EmployeeSkills] CHECK CONSTRAINT [FK_dbo.EmployeeSkills_dbo.Skills_SkillId]
GO
ALTER TABLE [dbo].[EmployeeTrainingHistories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmployeeTrainingHistories_dbo.Employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EmployeeTrainingHistories] CHECK CONSTRAINT [FK_dbo.EmployeeTrainingHistories_dbo.Employees_EmployeeId]
GO
ALTER TABLE [dbo].[EmploymentHistories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmploymentHistories_dbo.Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[EmploymentHistories] CHECK CONSTRAINT [FK_dbo.EmploymentHistories_dbo.Departments_DepartmentId]
GO
ALTER TABLE [dbo].[EmploymentHistories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmploymentHistories_dbo.Designations_DesignationId] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designations] ([Id])
GO
ALTER TABLE [dbo].[EmploymentHistories] CHECK CONSTRAINT [FK_dbo.EmploymentHistories_dbo.Designations_DesignationId]
GO
ALTER TABLE [dbo].[EmploymentHistories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmploymentHistories_dbo.Employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[EmploymentHistories] CHECK CONSTRAINT [FK_dbo.EmploymentHistories_dbo.Employees_EmployeeId]
GO
ALTER TABLE [dbo].[Exams]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Exams_dbo.Educations_EducationId] FOREIGN KEY([EducationId])
REFERENCES [dbo].[Educations] ([Id])
GO
ALTER TABLE [dbo].[Exams] CHECK CONSTRAINT [FK_dbo.Exams_dbo.Educations_EducationId]
GO
ALTER TABLE [dbo].[PoliceStations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PoliceStations_dbo.Districts_DistrictId] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Districts] ([Id])
GO
ALTER TABLE [dbo].[PoliceStations] CHECK CONSTRAINT [FK_dbo.PoliceStations_dbo.Districts_DistrictId]
GO
ALTER TABLE [dbo].[Unions]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Unions_dbo.PoliceStations_PoliceStationId] FOREIGN KEY([PoliceStationId])
REFERENCES [dbo].[PoliceStations] ([Id])
GO
ALTER TABLE [dbo].[Unions] CHECK CONSTRAINT [FK_dbo.Unions_dbo.PoliceStations_PoliceStationId]
GO
USE [master]
GO
ALTER DATABASE [aspnet-EMPSDb] SET  READ_WRITE 
GO
