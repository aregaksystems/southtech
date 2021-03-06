USE [master]
GO
/****** Object:  Database [SouthTech]    Script Date: 9/16/2017 3:50:35 PM ******/
CREATE DATABASE [SouthTech]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SouthTech', FILENAME = N'D:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SouthTech.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SouthTech_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\SouthTech_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SouthTech] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SouthTech].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SouthTech] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SouthTech] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SouthTech] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SouthTech] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SouthTech] SET ARITHABORT OFF 
GO
ALTER DATABASE [SouthTech] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SouthTech] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SouthTech] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SouthTech] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SouthTech] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SouthTech] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SouthTech] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SouthTech] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SouthTech] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SouthTech] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SouthTech] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SouthTech] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SouthTech] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SouthTech] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SouthTech] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SouthTech] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SouthTech] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SouthTech] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SouthTech] SET  MULTI_USER 
GO
ALTER DATABASE [SouthTech] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SouthTech] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SouthTech] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SouthTech] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SouthTech] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SouthTech] SET QUERY_STORE = OFF
GO
USE [SouthTech]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SouthTech]
GO
/****** Object:  Table [dbo].[Tbl_Contact]    Script Date: 9/16/2017 3:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Contact](
	[fld_Contact_ID] [int] IDENTITY(1,1) NOT NULL,
	[fld_Contact_Name] [nvarchar](250) NULL,
	[fld_Group_ID] [int] NULL,
 CONSTRAINT [PK_Tbl_Contact] PRIMARY KEY CLUSTERED 
(
	[fld_Contact_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Group]    Script Date: 9/16/2017 3:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Group](
	[fld_Group_ID] [int] IDENTITY(1,1) NOT NULL,
	[fld_Group_Title] [nvarchar](250) NULL,
 CONSTRAINT [PK_Tbl_Group] PRIMARY KEY CLUSTERED 
(
	[fld_Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_PhoneContact]    Script Date: 9/16/2017 3:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_PhoneContact](
	[fld_Phone_ID] [int] IDENTITY(1,1) NOT NULL,
	[fld_Phone_Number] [nvarchar](50) NULL,
	[fld_Contact_ID] [int] NULL,
 CONSTRAINT [PK_Tbl_PhoneContact] PRIMARY KEY CLUSTERED 
(
	[fld_Phone_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SystemErrorLog]    Script Date: 9/16/2017 3:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SystemErrorLog](
	[fld_ErrorLog_ID] [int] IDENTITY(1,1) NOT NULL,
	[fld_ErrorLog_Text] [ntext] NULL,
	[fld_ErrorLog_IPAddress] [nvarchar](50) NULL,
	[fld_ErrorLog_Date] [date] NULL,
	[fld_ErrorLog_Time] [time](7) NULL,
 CONSTRAINT [PK_Tbl_SystemErrorLog] PRIMARY KEY CLUSTERED 
(
	[fld_ErrorLog_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Contact] ON 

INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (1, N'anas', 1)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (2, N'tim', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (3, N'jon', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (4, N'yyy', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (5, N'vbc', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (6, N'vbc', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (7, N're', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (8, N're', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (9, N'asd', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (10, N'asd', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (11, N'asa', NULL)
INSERT [dbo].[Tbl_Contact] ([fld_Contact_ID], [fld_Contact_Name], [fld_Group_ID]) VALUES (12, N'dss', NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Contact] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Group] ON 

INSERT [dbo].[Tbl_Group] ([fld_Group_ID], [fld_Group_Title]) VALUES (1, N'Friends')
INSERT [dbo].[Tbl_Group] ([fld_Group_ID], [fld_Group_Title]) VALUES (2, N'Family')
SET IDENTITY_INSERT [dbo].[Tbl_Group] OFF
SET IDENTITY_INSERT [dbo].[Tbl_PhoneContact] ON 

INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (1, N'0544432681', 1)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (2, N'0544432691', 1)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (3, N'5 55-55555', 2)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (4, N'9 99-9999', 3)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (5, N'6 66-8888', 4)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (6, N'5 44-5456', 5)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (7, N'5 44-5456', 6)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (8, N'23 3-333', 7)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (9, N'23 3-333', 8)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (10, N'2 22-676', 9)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (11, N'3 33-343', 10)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (12, N'4 44-444', 11)
INSERT [dbo].[Tbl_PhoneContact] ([fld_Phone_ID], [fld_Phone_Number], [fld_Contact_ID]) VALUES (13, N'3 33-444', 12)
SET IDENTITY_INSERT [dbo].[Tbl_PhoneContact] OFF
SET IDENTITY_INSERT [dbo].[Tbl_SystemErrorLog] ON 

INSERT [dbo].[Tbl_SystemErrorLog] ([fld_ErrorLog_ID], [fld_ErrorLog_Text], [fld_ErrorLog_IPAddress], [fld_ErrorLog_Date], [fld_ErrorLog_Time]) VALUES (1, N'XML parsing: line 1, character 39, unable to switch the encoding', NULL, CAST(N'2017-09-16' AS Date), CAST(N'12:29:46' AS Time))
INSERT [dbo].[Tbl_SystemErrorLog] ([fld_ErrorLog_ID], [fld_ErrorLog_Text], [fld_ErrorLog_IPAddress], [fld_ErrorLog_Date], [fld_ErrorLog_Time]) VALUES (2, N'XML parsing: line 1, character 39, unable to switch the encoding', NULL, CAST(N'2017-09-16' AS Date), CAST(N'12:34:49' AS Time))
INSERT [dbo].[Tbl_SystemErrorLog] ([fld_ErrorLog_ID], [fld_ErrorLog_Text], [fld_ErrorLog_IPAddress], [fld_ErrorLog_Date], [fld_ErrorLog_Time]) VALUES (3, N'XML parsing: line 1, character 39, unable to switch the encoding', NULL, CAST(N'2017-09-16' AS Date), CAST(N'12:34:49' AS Time))
SET IDENTITY_INSERT [dbo].[Tbl_SystemErrorLog] OFF
ALTER TABLE [dbo].[Tbl_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Contact_Tbl_Group] FOREIGN KEY([fld_Group_ID])
REFERENCES [dbo].[Tbl_Group] ([fld_Group_ID])
GO
ALTER TABLE [dbo].[Tbl_Contact] CHECK CONSTRAINT [FK_Tbl_Contact_Tbl_Group]
GO
ALTER TABLE [dbo].[Tbl_PhoneContact]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_PhoneContact_Tbl_Contact] FOREIGN KEY([fld_Contact_ID])
REFERENCES [dbo].[Tbl_Contact] ([fld_Contact_ID])
GO
ALTER TABLE [dbo].[Tbl_PhoneContact] CHECK CONSTRAINT [FK_Tbl_PhoneContact_Tbl_Contact]
GO
/****** Object:  StoredProcedure [dbo].[sp_contactTransactions]    Script Date: 9/16/2017 3:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_contactTransactions]
 @fld_Contact_Name nvarchar(250)=null
,@fld_Group_ID     int=null
,@fld_Contact_ID   int=null
,@xmlPhone		   nvarchar(4000)=null
AS
BEGIN
BEGIN TRY
BEGIN TRAN
DECLARE @XmlMsg xml, @ContactID int
SET @XmlMsg=@xmlPhone
IF @fld_Contact_ID IS NULL
BEGIN
INSERT INTO [dbo].[Tbl_Contact]
           ([fld_Contact_Name]
           ,[fld_Group_ID])
     VALUES
           ( @fld_Contact_Name
		   ,@fld_Group_ID)
SET @ContactID=(Select @@IDENTITY)
if (@xmlPhone <> '<?xml version="1.0" encoding="utf-16"?><root />' )
BEGIN
INSERT INTO [dbo].[Tbl_PhoneContact]
           ([fld_Phone_Number]
           ,[fld_Contact_ID])
SELECT 
       doc.col.value('fld_Phone_Number[1]','nvarchar(50)') as Phone
      ,@ContactID
      From 
      @XmlMsg.nodes('/root/Phone') doc(col)

END
Select[Tbl_Contact].[fld_Contact_ID],[fld_Contact_Name],[fld_Group_ID],[fld_Phone_Number] 
from [dbo].[Tbl_Contact] 
inner join [dbo].[Tbl_PhoneContact] 
on [Tbl_Contact].fld_Contact_ID=[dbo].[Tbl_PhoneContact].fld_Contact_ID
Where [Tbl_Contact].fld_Contact_ID=@ContactID
END			
ELSE
BEGIN
UPDATE [dbo].[Tbl_Contact]
   SET [fld_Contact_Name] = @fld_Contact_Name
      ,[fld_Group_ID] = @fld_Group_ID
 WHERE fld_Contact_ID=@fld_Contact_ID

 if (@xmlPhone <> '<?xml version="1.0" encoding="utf-16"?><root />' )
BEGIN
Delete From Tbl_PhoneContact Where fld_Contact_ID=@fld_Contact_ID 
INSERT INTO [dbo].[Tbl_PhoneContact]
           ([fld_Phone_Number]
           ,[fld_Contact_ID])
SELECT 
       doc.col.value('fld_Phone_Number[1]','nvarchar(50)') as Phone
      ,@fld_Contact_ID
      From 
      @XmlMsg.nodes('/root/Phone') doc(col)

END
Select[Tbl_Contact].[fld_Contact_ID],[fld_Contact_Name],[fld_Group_ID],[fld_Phone_Number] 
from [dbo].[Tbl_Contact] 
inner join [dbo].[Tbl_PhoneContact] 
on [Tbl_Contact].fld_Contact_ID=[dbo].[Tbl_PhoneContact].fld_Contact_ID
Where [Tbl_Contact].fld_Contact_ID=@fld_Contact_ID

END
COMMIT TRAN
END TRY 
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
ROLLBACK TRAN
 END
-- Error Message
DECLARE @Err nvarchar(1000)
SET @Err = ERROR_MESSAGE()
INSERT INTO [dbo].[Tbl_SystemErrorLog]
           ([fld_ErrorLog_Text]
           ,[fld_ErrorLog_IPAddress]
           ,[fld_ErrorLog_Date]
           ,[fld_ErrorLog_Time])
     VALUES
           (@Err
		   ,NULL
		   ,GETDATE()
		   ,(SELECT
CONVERT(VARCHAR(8),GETDATE(),108) AS HourMinuteSecond))
RAISERROR (@Err,16,1)
END CATCH
END
GO
USE [master]
GO
ALTER DATABASE [SouthTech] SET  READ_WRITE 
GO
