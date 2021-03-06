USE [master]
GO
/****** Object:  Database [Calculadora]    Script Date: 28/11/2018 17:24:01 ******/
CREATE DATABASE [Calculadora]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Calculadora', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Calculadora.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Calculadora_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Calculadora_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Calculadora] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Calculadora].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Calculadora] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Calculadora] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Calculadora] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Calculadora] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Calculadora] SET ARITHABORT OFF 
GO
ALTER DATABASE [Calculadora] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Calculadora] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Calculadora] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Calculadora] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Calculadora] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Calculadora] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Calculadora] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Calculadora] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Calculadora] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Calculadora] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Calculadora] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Calculadora] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Calculadora] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Calculadora] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Calculadora] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Calculadora] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Calculadora] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Calculadora] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Calculadora] SET  MULTI_USER 
GO
ALTER DATABASE [Calculadora] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Calculadora] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Calculadora] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Calculadora] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Calculadora] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Calculadora] SET QUERY_STORE = OFF
GO
USE [Calculadora]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [Calculadora]
GO
/****** Object:  Table [dbo].[CustoGeral]    Script Date: 28/11/2018 17:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustoGeral](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](200) NOT NULL,
	[ValorCusto] [float] NOT NULL,
 CONSTRAINT [PK_CustoGeral] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustoMaquina]    Script Date: 28/11/2018 17:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustoMaquina](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProduto] [int] NOT NULL,
	[IdMaquina] [int] NOT NULL,
	[TempoUnitario] [float] NOT NULL,
 CONSTRAINT [PK_CustoMaquina] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustoProducao]    Script Date: 28/11/2018 17:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustoProducao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProduto] [int] NOT NULL,
	[TipoCusto] [bit] NOT NULL,
	[Descricao] [nvarchar](200) NOT NULL,
	[ValorCusto] [float] NULL,
 CONSTRAINT [PK_CustoProducao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maquinas]    Script Date: 28/11/2018 17:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquinas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](200) NOT NULL,
	[Kwh] [float] NOT NULL,
 CONSTRAINT [PK_Maquinas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 28/11/2018 17:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](200) NOT NULL,
	[PrecoVenda] [float] NOT NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCusto]    Script Date: 28/11/2018 17:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCusto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_TipoCusto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustoGeral] ON 

INSERT [dbo].[CustoGeral] ([Id], [Descricao], [ValorCusto]) VALUES (1, N'geral 1', 23425)
SET IDENTITY_INSERT [dbo].[CustoGeral] OFF
SET IDENTITY_INSERT [dbo].[CustoMaquina] ON 

INSERT [dbo].[CustoMaquina] ([Id], [IdProduto], [IdMaquina], [TempoUnitario]) VALUES (1, 8, 2, 123)
INSERT [dbo].[CustoMaquina] ([Id], [IdProduto], [IdMaquina], [TempoUnitario]) VALUES (2, 9, 1, 123)
SET IDENTITY_INSERT [dbo].[CustoMaquina] OFF
SET IDENTITY_INSERT [dbo].[CustoProducao] ON 

INSERT [dbo].[CustoProducao] ([Id], [IdProduto], [TipoCusto], [Descricao], [ValorCusto]) VALUES (1, 8, 1, N'custoProdteste', 123)
INSERT [dbo].[CustoProducao] ([Id], [IdProduto], [TipoCusto], [Descricao], [ValorCusto]) VALUES (2, 2, 0, N'custo2', 214)
INSERT [dbo].[CustoProducao] ([Id], [IdProduto], [TipoCusto], [Descricao], [ValorCusto]) VALUES (3, 8, 1, N'test3', 1234)
INSERT [dbo].[CustoProducao] ([Id], [IdProduto], [TipoCusto], [Descricao], [ValorCusto]) VALUES (4, 8, 1, N'maisum', 124132)
INSERT [dbo].[CustoProducao] ([Id], [IdProduto], [TipoCusto], [Descricao], [ValorCusto]) VALUES (5, 2, 0, N'teste5', 21)
SET IDENTITY_INSERT [dbo].[CustoProducao] OFF
SET IDENTITY_INSERT [dbo].[Maquinas] ON 

INSERT [dbo].[Maquinas] ([Id], [Descricao], [Kwh]) VALUES (1, N'Maquina 1', 123)
INSERT [dbo].[Maquinas] ([Id], [Descricao], [Kwh]) VALUES (2, N'Maquina 2', 523)
INSERT [dbo].[Maquinas] ([Id], [Descricao], [Kwh]) VALUES (4, N'Maquina 3', 5345)
SET IDENTITY_INSERT [dbo].[Maquinas] OFF
SET IDENTITY_INSERT [dbo].[Produtos] ON 

INSERT [dbo].[Produtos] ([Id], [Descricao], [PrecoVenda]) VALUES (2, N'Produto 1', 543)
INSERT [dbo].[Produtos] ([Id], [Descricao], [PrecoVenda]) VALUES (8, N'Produto 2', 235)
INSERT [dbo].[Produtos] ([Id], [Descricao], [PrecoVenda]) VALUES (9, N'Produto 3', 123123120)
SET IDENTITY_INSERT [dbo].[Produtos] OFF
SET IDENTITY_INSERT [dbo].[TipoCusto] ON 

INSERT [dbo].[TipoCusto] ([Id], [Descricao]) VALUES (1, N'Fixo')
INSERT [dbo].[TipoCusto] ([Id], [Descricao]) VALUES (2, N'Variavel')
SET IDENTITY_INSERT [dbo].[TipoCusto] OFF
USE [master]
GO
ALTER DATABASE [Calculadora] SET  READ_WRITE 
GO
