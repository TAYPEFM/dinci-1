USE [master]
GO
/****** Object:  Database [DINCI]    Script Date: 11/11/2017 17:35:17 ******/
CREATE DATABASE [DINCI] ON  PRIMARY 
( NAME = N'DINCI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DINCI.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DINCI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DINCI_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DINCI] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DINCI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DINCI] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DINCI] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DINCI] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DINCI] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DINCI] SET ARITHABORT OFF
GO
ALTER DATABASE [DINCI] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DINCI] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DINCI] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DINCI] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DINCI] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DINCI] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DINCI] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DINCI] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DINCI] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DINCI] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DINCI] SET  ENABLE_BROKER
GO
ALTER DATABASE [DINCI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DINCI] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DINCI] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DINCI] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DINCI] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DINCI] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DINCI] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DINCI] SET  READ_WRITE
GO
ALTER DATABASE [DINCI] SET RECOVERY FULL
GO
ALTER DATABASE [DINCI] SET  MULTI_USER
GO
ALTER DATABASE [DINCI] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DINCI] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DINCI', N'ON'
GO
USE [DINCI]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 11/11/2017 17:35:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[Id_employee] [int] IDENTITY(1,1) NOT NULL,
	[name_employee] [varchar](100) NULL,
	[password_employee] [varchar](50) NULL,
	[area_employee] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_employee] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON
INSERT [dbo].[employee] ([Id_employee], [name_employee], [password_employee], [area_employee]) VALUES (1, N'Administrador', N'admin', N'Jardineria')
SET IDENTITY_INSERT [dbo].[employee] OFF
/****** Object:  Table [dbo].[citizen]    Script Date: 11/11/2017 17:35:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[citizen](
	[Id_citizen] [int] IDENTITY(1,1) NOT NULL,
	[name_citizen] [varchar](100) NULL,
	[password_citizen] [varchar](50) NULL,
	[phonenumber_citizen] [varchar](50) NULL,
	[status_citizen] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_citizen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[citizen] ON
INSERT [dbo].[citizen] ([Id_citizen], [name_citizen], [password_citizen], [phonenumber_citizen], [status_citizen]) VALUES (1, N'APANTA', N'TONY', N'958085458', N'0')
INSERT [dbo].[citizen] ([Id_citizen], [name_citizen], [password_citizen], [phonenumber_citizen], [status_citizen]) VALUES (2, N'RESCUDERO', N'BUBUS', N'992054345', N'0')
INSERT [dbo].[citizen] ([Id_citizen], [name_citizen], [password_citizen], [phonenumber_citizen], [status_citizen]) VALUES (3, N'DENILSON', N'PACHORRAS', N'123456', N'1')
INSERT [dbo].[citizen] ([Id_citizen], [name_citizen], [password_citizen], [phonenumber_citizen], [status_citizen]) VALUES (4, N'FLOR', N'ABC', N'1111', N'0')
SET IDENTITY_INSERT [dbo].[citizen] OFF
/****** Object:  Table [dbo].[status_incident]    Script Date: 11/11/2017 17:35:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[status_incident](
	[Id_status] [int] IDENTITY(1,1) NOT NULL,
	[description_status] [varchar](255) NULL,
	[status_inc_st] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[status_incident] ON
INSERT [dbo].[status_incident] ([Id_status], [description_status], [status_inc_st]) VALUES (1, N'Pendiente', N'0')
INSERT [dbo].[status_incident] ([Id_status], [description_status], [status_inc_st]) VALUES (2, N'Atendido', N'0')
INSERT [dbo].[status_incident] ([Id_status], [description_status], [status_inc_st]) VALUES (3, N'Observado', N'0')
INSERT [dbo].[status_incident] ([Id_status], [description_status], [status_inc_st]) VALUES (4, N'En Procedo', N'0')
INSERT [dbo].[status_incident] ([Id_status], [description_status], [status_inc_st]) VALUES (5, N'Cancelado', N'0')
SET IDENTITY_INSERT [dbo].[status_incident] OFF
/****** Object:  Table [dbo].[incident_type]    Script Date: 11/11/2017 17:35:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[incident_type](
	[Id_incident_type] [int] IDENTITY(1,1) NOT NULL,
	[description_incident_type] [varchar](255) NULL,
	[status_incident_type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_incident_type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[incident_type] ON
INSERT [dbo].[incident_type] ([Id_incident_type], [description_incident_type], [status_incident_type]) VALUES (1, N'Limpieza Publica', 0)
INSERT [dbo].[incident_type] ([Id_incident_type], [description_incident_type], [status_incident_type]) VALUES (2, N'Seguridad Vial', 0)
INSERT [dbo].[incident_type] ([Id_incident_type], [description_incident_type], [status_incident_type]) VALUES (3, N'Parques y Jardines', 0)
INSERT [dbo].[incident_type] ([Id_incident_type], [description_incident_type], [status_incident_type]) VALUES (4, N'Ruidos Molestosos', 0)
INSERT [dbo].[incident_type] ([Id_incident_type], [description_incident_type], [status_incident_type]) VALUES (5, N'Iluminacion Publica', 0)
SET IDENTITY_INSERT [dbo].[incident_type] OFF
/****** Object:  Table [dbo].[incident]    Script Date: 11/11/2017 17:35:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[incident](
	[Id_incident] [int] IDENTITY(1,1) NOT NULL,
	[id_incident_type] [int] NULL,
	[date_incident] [date] NULL,
	[ubication_incident] [varchar](255) NULL,
	[commets_incident] [varchar](255) NULL,
	[id_status] [int] NULL,
	[id_citizen] [int] NULL,
	[id_employee] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_incident] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteCitizen]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Usp_DeleteCitizen]
(
@Id_citizen int
--@description_incident_type varchar(255)
--@status_incident_type int=0
)
as begin
update citizen set status_citizen=1
where Id_citizen=@Id_citizen
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_AddStatusIncident]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Usp_AddStatusIncident]
(
  
  --@Id_status int,
  @description_status varchar(255) 
  --,@status_inc_st char(1) 
)
as begin
insert into status_incident values (@description_status,0)
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_AddIncidentType]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_AddIncidentType]
(
--@id_incident_type int,
@description_incident_type varchar(255)
--@status_incident_type int=0
)
as begin
insert into incident_type values (@description_incident_type,0)
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllCitizen]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_GetAllCitizen]
(
@Id_citizen int
)
as begin
select * 
from citizen 
where Id_citizen=isnull(@Id_citizen,Id_citizen)
and status_citizen=0
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteStatusIncident]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_DeleteStatusIncident]
(
  @Id_status int,
  @description_status varchar(255) 
  --,@status_inc_st char(1) 
)
as begin
update status_incident 
set status_inc_st=1
where Id_status=@Id_status
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteIncidentType]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_DeleteIncidentType]
(
@Id_incident_type int
--@description_incident_type varchar(255)
--@status_incident_type int=0
--select * from incident_type
)
as begin
update incident_type set status_incident_type=1
where Id_incident_type=@Id_incident_type
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateCitizen]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_UpdateCitizen]
(
@Id_citizen int,
  @name_citizen varchar(100) ,
  @password_citizen varchar(50),
  @phonenumber_citizen varchar(50)
--@status_incident_type int=0
)
as begin
update citizen 
set password_citizen=@password_citizen,
name_citizen=@name_citizen,
phonenumber_citizen=@phonenumber_citizen
where Id_citizen=@Id_citizen
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllStatusIncident]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Usp_GetAllStatusIncident]
(
@Id_status int
)
as begin
select * 
from status_incident 
where Id_status=isnull(@Id_status,Id_status)
and Id_status=0
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllIncidentType]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM [dbo].[incident_type]
--[Usp_GetAllIncidentType] '1'
CREATE PROC [dbo].[Usp_GetAllIncidentType]
(
@id_incident_type int
)
as begin
select * from incident_type where id_incident_type=isnull(@id_incident_type,id_incident_type)
and status_incident_type=0
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_AddCitizen]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_AddCitizen]
(
  
  @name_citizen varchar(100) ,
  @password_citizen varchar(50),
  @phonenumber_citizen varchar(50)

)
as begin
insert into citizen values (@name_citizen,@password_citizen,@phonenumber_citizen,0)
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateStatusIncident]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Usp_UpdateStatusIncident]
(
  @Id_status int,
  @description_status varchar(255) 
  --,@status_inc_st char(1) 
)
as begin
update status_incident 
set description_status=@description_status
where Id_status=@Id_status
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateIncidentType]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_UpdateIncidentType]
(
@id_incident_type int,
@description_incident_type varchar(255)
--@status_incident_type int=0
)
as begin
update incident_type set description_incident_type=@description_incident_type
where id_incident_type=@id_incident_type
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UpdateIncident]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_UpdateIncident]
(
 @Id_incident int ,
 --,@id_incident_type int ,
  --@date_incident date DEFAULT NULL,
 @ubication_incident varchar(255),-- DEFAULT NULL,
  @commets_incident varchar(255),-- DEFAULT NULL,
  @id_status int-- DEFAULT NULL,
  --@id_citizen int,-- DEFAULT NULL,
  --@id_employee int=0
)
as begin
update incident 
set ubication_incident=@ubication_incident,
commets_incident=@commets_incident,
id_status=@id_status
where Id_incident=@Id_incident

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllIncident]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_GetAllIncident]
(
@Id_incident int,
@Id_citizen int,
@Id_incident_type int
--,@Id_incident_type int
)
as begin
select * 
from incident 
where Id_incident=isnull(@Id_incident,Id_incident)
and Id_incident_type=isnull(@Id_incident_type,Id_incident_type)
and Id_citizen=isnull(@Id_citizen,Id_citizen)
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_DeleteIncident]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Usp_DeleteIncident]
(
 @Id_incident int 
 --,@Id_status int 
)
as begin
update incident 
set [id_status]=5--@Id_status
where Id_incident=@Id_incident
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_AddIncident]    Script Date: 11/11/2017 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[Usp_AddIncident]
(
 --@Id_incident int NOT NULL identity,
  @id_incident_type int ,
  --@date_incident date DEFAULT NULL,
  @ubication_incident varchar(255),-- DEFAULT NULL,
  @commets_incident varchar(255),-- DEFAULT NULL,
  --@id_status int,-- DEFAULT NULL,
  @id_citizen int,-- DEFAULT NULL,
  @id_employee int=0
)
as begin
insert into incident values (@id_incident_type,getdate(),@ubication_incident,@commets_incident,0,@id_citizen,@id_employee)
end
GO
/****** Object:  Default [DF__employee__name_e__08EA5793]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[employee] ADD  DEFAULT (NULL) FOR [name_employee]
GO
/****** Object:  Default [DF__employee__passwo__09DE7BCC]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[employee] ADD  DEFAULT (NULL) FOR [password_employee]
GO
/****** Object:  Default [DF__employee__area_e__0AD2A005]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[employee] ADD  DEFAULT (NULL) FOR [area_employee]
GO
/****** Object:  Default [DF__citizen__name_ci__014935CB]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[citizen] ADD  DEFAULT (NULL) FOR [name_citizen]
GO
/****** Object:  Default [DF__citizen__passwor__023D5A04]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[citizen] ADD  DEFAULT (NULL) FOR [password_citizen]
GO
/****** Object:  Default [DF__citizen__phonenu__03317E3D]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[citizen] ADD  DEFAULT (NULL) FOR [phonenumber_citizen]
GO
/****** Object:  Default [DF__citizen__status___0425A276]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[citizen] ADD  DEFAULT (NULL) FOR [status_citizen]
GO
/****** Object:  Default [DF__status_in__descr__1920BF5C]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[status_incident] ADD  DEFAULT (NULL) FOR [description_status]
GO
/****** Object:  Default [DF__status_in__statu__1A14E395]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[status_incident] ADD  DEFAULT (NULL) FOR [status_inc_st]
GO
/****** Object:  Default [DF__incident___descr__1367E606]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident_type] ADD  DEFAULT (NULL) FOR [description_incident_type]
GO
/****** Object:  Default [DF__incident___statu__145C0A3F]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident_type] ADD  DEFAULT ((0)) FOR [status_incident_type]
GO
/****** Object:  Default [DF__incident__id_inc__1B0907CE]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident] ADD  DEFAULT (NULL) FOR [id_incident_type]
GO
/****** Object:  Default [DF__incident__date_i__1BFD2C07]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident] ADD  DEFAULT (NULL) FOR [date_incident]
GO
/****** Object:  Default [DF__incident__ubicat__1CF15040]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident] ADD  DEFAULT (NULL) FOR [ubication_incident]
GO
/****** Object:  Default [DF__incident__commet__1DE57479]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident] ADD  DEFAULT (NULL) FOR [commets_incident]
GO
/****** Object:  Default [DF__incident__id_sta__1ED998B2]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident] ADD  DEFAULT (NULL) FOR [id_status]
GO
/****** Object:  Default [DF__incident__id_cit__1FCDBCEB]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident] ADD  DEFAULT (NULL) FOR [id_citizen]
GO
/****** Object:  Default [DF__incident__id_emp__20C1E124]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident] ADD  DEFAULT (NULL) FOR [id_employee]
GO
/****** Object:  ForeignKey [FK__incident__id_cit__21B6055D]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident]  WITH CHECK ADD FOREIGN KEY([id_citizen])
REFERENCES [dbo].[citizen] ([Id_citizen])
GO
/****** Object:  ForeignKey [FK__incident__id_emp__22AA2996]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident]  WITH CHECK ADD FOREIGN KEY([id_employee])
REFERENCES [dbo].[employee] ([Id_employee])
GO
/****** Object:  ForeignKey [FK__incident__id_inc__239E4DCF]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident]  WITH CHECK ADD FOREIGN KEY([id_incident_type])
REFERENCES [dbo].[incident_type] ([Id_incident_type])
GO
/****** Object:  ForeignKey [FK__incident__id_sta__24927208]    Script Date: 11/11/2017 17:35:17 ******/
ALTER TABLE [dbo].[incident]  WITH CHECK ADD FOREIGN KEY([id_status])
REFERENCES [dbo].[status_incident] ([Id_status])
GO
