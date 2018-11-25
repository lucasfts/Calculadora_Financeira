USE [Calculadora]
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

INSERT [dbo].[Maquinas] ([Id], [Descricao], [Kwh]) VALUES (1, N'maqteste', 123)
INSERT [dbo].[Maquinas] ([Id], [Descricao], [Kwh]) VALUES (2, N'testemaqutopper', 523)
INSERT [dbo].[Maquinas] ([Id], [Descricao], [Kwh]) VALUES (4, N'teste 4maquina', 5345)
SET IDENTITY_INSERT [dbo].[Maquinas] OFF
SET IDENTITY_INSERT [dbo].[Produtos] ON 

INSERT [dbo].[Produtos] ([Id], [Descricao], [PrecoVenda]) VALUES (2, N'teste2', 543)
INSERT [dbo].[Produtos] ([Id], [Descricao], [PrecoVenda]) VALUES (8, N'teste 8', 235)
INSERT [dbo].[Produtos] ([Id], [Descricao], [PrecoVenda]) VALUES (9, N'teste 9', 123123120)
SET IDENTITY_INSERT [dbo].[Produtos] OFF
SET IDENTITY_INSERT [dbo].[TipoCusto] ON 

INSERT [dbo].[TipoCusto] ([Id], [Descricao]) VALUES (1, N'Fixo')
INSERT [dbo].[TipoCusto] ([Id], [Descricao]) VALUES (2, N'Variavel')
SET IDENTITY_INSERT [dbo].[TipoCusto] OFF
