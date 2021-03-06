USE [master]
GO

/****** Object:  Database [mycos_fund]    Script Date: 3/5/2021 1:54:54 AM ******/
CREATE DATABASE [mycos_fund]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fund', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SA\MSSQL\DATA\fund.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'fund_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SA\MSSQL\DATA\fund_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [mycos_fund] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mycos_fund].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [mycos_fund] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [mycos_fund] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [mycos_fund] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [mycos_fund] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [mycos_fund] SET ARITHABORT OFF 
GO

ALTER DATABASE [mycos_fund] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [mycos_fund] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [mycos_fund] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [mycos_fund] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [mycos_fund] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [mycos_fund] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [mycos_fund] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [mycos_fund] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [mycos_fund] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [mycos_fund] SET  DISABLE_BROKER 
GO

ALTER DATABASE [mycos_fund] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [mycos_fund] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [mycos_fund] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [mycos_fund] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [mycos_fund] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [mycos_fund] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [mycos_fund] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [mycos_fund] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [mycos_fund] SET  MULTI_USER 
GO

ALTER DATABASE [mycos_fund] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [mycos_fund] SET DB_CHAINING OFF 
GO

ALTER DATABASE [mycos_fund] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [mycos_fund] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [mycos_fund] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [mycos_fund] SET  READ_WRITE 
GO


