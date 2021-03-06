USE [master]
GO
/****** Object:  Database [Kiosco]    Script Date: 03/09/2021 09:39:12 ******/
CREATE DATABASE [Kiosco]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kiosco', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Kiosco.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Kiosco_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Kiosco_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Kiosco] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kiosco].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kiosco] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kiosco] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kiosco] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kiosco] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kiosco] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kiosco] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kiosco] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Kiosco] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kiosco] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kiosco] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kiosco] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kiosco] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kiosco] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kiosco] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kiosco] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kiosco] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kiosco] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kiosco] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kiosco] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kiosco] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kiosco] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kiosco] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kiosco] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kiosco] SET RECOVERY FULL 
GO
ALTER DATABASE [Kiosco] SET  MULTI_USER 
GO
ALTER DATABASE [Kiosco] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kiosco] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kiosco] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kiosco] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Kiosco', N'ON'
GO
USE [Kiosco]
GO
/****** Object:  Table [dbo].[Anulaciones]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Anulaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[Nro] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Anulaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Articulos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rubro] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Marca] [varchar](50) NULL,
	[PrecioVenta] [float] NULL,
	[PrecioCompra] [float] NULL,
	[FechaNovedad] [varchar](50) NULL,
	[StockMinimo] [float] NULL,
	[Stock] [float] NULL,
	[FechaCompra] [varchar](50) NULL,
	[FechaModif] [varchar](50) NULL,
	[EnPromocion] [bit] NULL,
	[PrecioPromocion] [float] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArticulosXPromocion]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArticulosXPromocion](
	[PromocionId] [int] NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[FechaInicio] [varchar](50) NULL,
	[FechaFin] [varchar](50) NULL,
	[PrecioIndvProducto] [float] NULL,
 CONSTRAINT [PK_ArticulosXPromocion] PRIMARY KEY CLUSTERED 
(
	[PromocionId] ASC,
	[ArticuloId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auditoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[Hora] [varchar](50) NOT NULL,
	[UsuarioNro] [int] NOT NULL,
	[UsuarioNombre] [varchar](50) NOT NULL,
	[Accion] [varchar](70) NOT NULL,
 CONSTRAINT [PK_Auditoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Deuda] [float] NOT NULL,
	[LimiteDeuda] [int] NOT NULL,
	[FechaModif] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facturas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[Total] [float] NOT NULL,
	[Hora] [varchar](50) NOT NULL,
	[MontoIva] [float] NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gastos]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gastos](
	[Id] [int] NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[MotivosGastosId] [int] NULL,
	[Importe] [float] NOT NULL,
 CONSTRAINT [PK_Gastos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ingresos]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ingresos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[Hora] [varchar](50) NOT NULL,
	[MotivoIngresoId] [int] NOT NULL,
	[Importe] [float] NOT NULL,
 CONSTRAINT [PK_Ingresos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marcas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descrpcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MotivosGastos]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MotivosGastos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MotivosGastos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MotivosIngresos]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MotivosIngresos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MotivosIngresos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MotivosSalidaProductos]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MotivosSalidaProductos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Motivo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MotivosRetiroProductos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoSalida]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductoSalida](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Motivo] [varchar](50) NOT NULL,
	[Costo] [float] NOT NULL,
	[PrecioVenta] [float] NOT NULL,
	[Cantidad] [float] NOT NULL,
 CONSTRAINT [PK_ItemSalida] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductosVendidos]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductosVendidos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad] [float] NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[RubroId] [int] NOT NULL,
	[MarcaId] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[PrecioUnitario] [float] NOT NULL,
	[FacturaId] [int] NOT NULL,
	[Costo] [float] NOT NULL,
 CONSTRAINT [PK_ProductosVendidos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promociones]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promociones](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [float] NOT NULL,
 CONSTRAINT [PK_Promociones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Contacto] [varchar](50) NULL,
	[Rubro] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](50) NULL,
	[CodigoPostal] [int] NULL,
	[Localidad] [varchar](50) NULL,
	[Provincia] [varchar](50) NULL,
	[CUILT] [varchar](50) NULL,
	[Celular] [int] NULL,
	[Mail] [varchar](50) NULL,
	[Web] [varchar](50) NULL,
	[Saldo] [float] NULL,
	[FechaModif] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rubros]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rubros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rubro] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockModif]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockModif](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[ArticuloID] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[StockAnterior] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StockModif] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 03/09/2021 09:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Kiosco] SET  READ_WRITE 
GO


-------------------------------------
-- =============================================
-- Author:		mbenso
-- Create date: 170921
-- Description:	Inserta un nuevo usuaorio
-- =============================================
CREATE PROCEDURE UsuarioCreate
	@Nombre varchar(50),
	@Password varchar(50),
	@Active bit
AS
BEGIN	
	BEGIN TRANSACTION
		INSERT INTO Usuarios VALUES(@Nombre, @Password, @Active);
		SELECT @@IDENTITY;
	COMMIT TRANSACTION
END
GO



------------------------------

USE [Kiosco]
GO
/****** Object:  StoredProcedure [dbo].[UsuarioCreate]    Script Date: 17/09/2021 8:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		mbenso
-- Create date: 170921
-- Description:	Inserta un nuevo usuaorio
-- =============================================
CREATE PROCEDURE [dbo].[UsuarioRead]
	@Nombre varchar(50),
	@Password varchar(50),
	@Active bit
AS
BEGIN	
	select * from Usuarios
	where Name = @Nombre
	and Password = @Password
	and Active = @Active;
END