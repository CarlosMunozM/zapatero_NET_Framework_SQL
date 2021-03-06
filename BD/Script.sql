USE [zapatero]
GO
/****** Object:  Table [dbo].[CabeceraOrden]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CabeceraOrden](
	[IdOrden] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[TotalPares] [int] NOT NULL,
 CONSTRAINT [PK_CabeceraOrden] PRIMARY KEY CLUSTERED 
(
	[IdOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleOrden]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleOrden](
	[IdOrden] [int] NOT NULL,
	[IdOrdenDetalle] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoZapato] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_DetalleOrden_1] PRIMARY KEY CLUSTERED 
(
	[IdOrdenDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NOT NULL,
	[Apellidos] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Estado] [tinyint] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoZapato]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoZapato](
	[IdTipoZapato] [int] IDENTITY(1,1) NOT NULL,
	[TipoZapato] [varchar](100) NOT NULL,
	[Estado] [tinyint] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_TipoZapato] PRIMARY KEY CLUSTERED 
(
	[IdTipoZapato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CabeceraOrden] ON 

INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (7, 1, 3, CAST(N'2021-10-03T00:00:00.000' AS DateTime), 18)
INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (8, 1, 1, CAST(N'2021-10-09T00:00:00.000' AS DateTime), 30)
INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (9, 1, 2, CAST(N'2021-10-06T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (10, 1, 1, CAST(N'2021-10-19T00:00:00.000' AS DateTime), 42)
INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (11, 1, 2, CAST(N'2021-10-02T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (12, 1, 1, CAST(N'2021-10-16T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (13, 1, 1, CAST(N'2021-10-31T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (14, 1, 1, CAST(N'2021-10-04T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (15, 1, 2, CAST(N'2021-03-10T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[CabeceraOrden] ([IdOrden], [IdEmpleado], [IdProveedor], [FechaIngreso], [TotalPares]) VALUES (16, 1, 2, CAST(N'2021-10-04T00:00:00.000' AS DateTime), 18)
SET IDENTITY_INSERT [dbo].[CabeceraOrden] OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleOrden] ON 

INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (7, 7, 1, 5)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (7, 8, 2, 6)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (7, 9, 3, 7)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (8, 10, 1, 9)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (8, 11, 2, 10)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (8, 12, 3, 11)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (9, 13, 2, 10)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (10, 14, 2, 12)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (10, 15, 3, 14)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (10, 16, 1, 16)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (11, 17, 2, 12)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (11, 18, 1, 2)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (12, 19, 1, 12)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (12, 20, 3, 3)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (13, 21, 1, 2)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (13, 22, 3, 10)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (14, 23, 3, 12)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (15, 24, 3, 10)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (16, 25, 1, 5)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (16, 26, 2, 6)
INSERT [dbo].[DetalleOrden] ([IdOrden], [IdOrdenDetalle], [IdTipoZapato], [Cantidad]) VALUES (16, 27, 3, 7)
SET IDENTITY_INSERT [dbo].[DetalleOrden] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([IdEmpleado], [Nombres], [Apellidos], [Estado], [FechaModificacion]) VALUES (1, N'Alberto', N'Torres', 1, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Empleado] ([IdEmpleado], [Nombres], [Apellidos], [Estado], [FechaModificacion]) VALUES (2, N'Martha', N'Perez', 1, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedor] ON 

INSERT [dbo].[Proveedor] ([IdProveedor], [Nombre], [Estado], [FechaModificacion]) VALUES (1, N'China Shoes', 1, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Proveedor] ([IdProveedor], [Nombre], [Estado], [FechaModificacion]) VALUES (2, N'American Shoes', 1, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Proveedor] ([IdProveedor], [Nombre], [Estado], [FechaModificacion]) VALUES (3, N'CR Import', 1, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoZapato] ON 

INSERT [dbo].[TipoZapato] ([IdTipoZapato], [TipoZapato], [Estado], [FechaModificacion]) VALUES (1, N'Deportivo', 1, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[TipoZapato] ([IdTipoZapato], [TipoZapato], [Estado], [FechaModificacion]) VALUES (2, N'Casual', 1, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[TipoZapato] ([IdTipoZapato], [TipoZapato], [Estado], [FechaModificacion]) VALUES (3, N'Formal', 1, CAST(N'2021-04-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[TipoZapato] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id], [nombre], [apellido]) VALUES (1, N'Carlos', N'Muñoz')
INSERT [dbo].[Usuario] ([id], [nombre], [apellido]) VALUES (2, N'Luis', N'Mendoza')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[CabeceraOrden]  WITH CHECK ADD  CONSTRAINT [FK_CabeceraOrden_Empleado] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[CabeceraOrden] CHECK CONSTRAINT [FK_CabeceraOrden_Empleado]
GO
ALTER TABLE [dbo].[CabeceraOrden]  WITH CHECK ADD  CONSTRAINT [FK_CabeceraOrden_Proveedor] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedor] ([IdProveedor])
GO
ALTER TABLE [dbo].[CabeceraOrden] CHECK CONSTRAINT [FK_CabeceraOrden_Proveedor]
GO
ALTER TABLE [dbo].[DetalleOrden]  WITH CHECK ADD  CONSTRAINT [FK_DetalleOrden_CabeceraOrden] FOREIGN KEY([IdOrden])
REFERENCES [dbo].[CabeceraOrden] ([IdOrden])
GO
ALTER TABLE [dbo].[DetalleOrden] CHECK CONSTRAINT [FK_DetalleOrden_CabeceraOrden]
GO
ALTER TABLE [dbo].[DetalleOrden]  WITH CHECK ADD  CONSTRAINT [FK_DetalleOrden_TipoZapato] FOREIGN KEY([IdTipoZapato])
REFERENCES [dbo].[TipoZapato] ([IdTipoZapato])
GO
ALTER TABLE [dbo].[DetalleOrden] CHECK CONSTRAINT [FK_DetalleOrden_TipoZapato]
GO
/****** Object:  StoredProcedure [dbo].[insertarCabeceraOrden]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertarCabeceraOrden]
   @idEmpleado INT,  
   @idProveedor INT,
   @fecha DATETIME,
   @total INT
AS 
BEGIN 
   INSERT INTO CabeceraOrden (IdEmpleado, IdProveedor, FechaIngreso, TotalPares) 
   VALUES(@idEmpleado, @idProveedor, @fecha, @total)
END
GO
/****** Object:  StoredProcedure [dbo].[insertarDetalleOrden]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertarDetalleOrden]
   @idOrden INT,  
   @idTipoZapato INT,
   @cantidad INT
AS 
BEGIN 
   INSERT INTO DetalleOrden (IdOrden, IdTipoZapato, Cantidad)
   VALUES(@idOrden, @idTipoZapato, @cantidad)
END
GO
/****** Object:  StoredProcedure [dbo].[listarEmpleados]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarEmpleados]  
AS    
   SELECT * FROM Empleado
RETURN 

GO
/****** Object:  StoredProcedure [dbo].[listarProveedores]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarProveedores]
AS    
   SELECT * FROM Proveedor
RETURN 
GO
/****** Object:  StoredProcedure [dbo].[listarZapatos]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarZapatos]
AS    
   SELECT IdTipoZapato, TipoZapato AS TipoZapato1, Estado, FechaModificacion  FROM TipoZapato WHERE Estado = 1
RETURN 
GO
/****** Object:  StoredProcedure [dbo].[ultimaOrden]    Script Date: 3/10/2021 12:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ultimaOrden]
AS    
   SELECT TOP 1 IdOrden FROM CabeceraOrden ORDER BY IdOrden DESC
RETURN 
GO
