USE [Biosalcdcss]
GO

/****** Object:  Table [dbo].[ABASTECIMENTOS]    Script Date: 08/13/2013 22:33:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ABASTECIMENTOS](
	[REQUIS] [varchar](11) COLLATE Latin1_General_CI_AS NULL,
	[EMPRESA] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[PONTO] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[VEICULO] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[MOTORISTA] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[DATA] [datetime] NULL,
	[HORA] [varchar](5) COLLATE Latin1_General_CI_AS NULL,
	[ODOMETRO] [numeric](15, 2) NULL,
	[ODOMETRO_ANT] [numeric](15, 2) NULL,
	[HORIMETRO] [numeric](15, 2) NULL,
	[HORIMETRO_ANT] [numeric](15, 2) NULL,
	[BOMBA] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[VALOR] [numeric](15, 4) NULL,
	[SETOR] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[FAZ] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[CJ_OPER] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[OPERACAO] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[RESP] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[ORIGEM] [numeric](1, 0) NULL,
	[PRODUTO] [varchar](22) COLLATE Latin1_General_CI_AS NULL,
	[QTDE] [numeric](10, 3) NULL,
	[FUNC_ABA] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[QUEBRA_MED] [numeric](1, 0) NULL,
	[OBS] [varchar](250) COLLATE Latin1_General_CI_AS NULL,
	[NUMFROTA] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[PLANTA] [varchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[TIPOABA] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[QTDELUB] [numeric](10, 2) NULL,
	[VALORLUB] [numeric](10, 2) NULL,
	[CODUSU] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[NUMEME] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[SEQEME] [numeric](6, 0) NULL,
	[DATATD] [datetime] NULL,
	[BOMBA_FLEX] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[PRODUTO_FLEX] [varchar](22) COLLATE Latin1_General_CI_AS NULL,
	[VALOR_FLEX] [numeric](10, 4) NULL,
	[QTDE_FLEX] [numeric](10, 4) NULL,
	[DESLOCAMENTO] [numeric](15, 2) NULL,
	[HORA_TRAB] [numeric](15, 2) NULL,
	[TURNO] [varchar](3) COLLATE Latin1_General_CI_AS NULL,
	[VIRA_ODOMETRO] [numeric](1, 0) NULL,
	[CCUSTO] [varchar](10) COLLATE Latin1_General_CI_AS NULL,
	[TIPOSAIDA] [numeric](1, 0) NULL,
	[LOCALSAIDA] [numeric](1, 0) NULL,
	[FORNECEDOR] [varchar](15) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [Biosalcdcss]
/****** Object:  Index [ABASTECIMENTOS_IND5]    Script Date: 08/13/2013 22:33:56 ******/
CREATE NONCLUSTERED INDEX [ABASTECIMENTOS_IND5] ON [dbo].[ABASTECIMENTOS] 
(
	[PLANTA] ASC,
	[VEICULO] ASC,
	[DATA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO


USE [Biosalcdcss]
/****** Object:  Index [ABASTECIMENTOS_IND6]    Script Date: 08/13/2013 22:33:56 ******/
CREATE NONCLUSTERED INDEX [ABASTECIMENTOS_IND6] ON [dbo].[ABASTECIMENTOS] 
(
	[PLANTA] ASC,
	[VEICULO] ASC,
	[DATA] ASC,
	[REQUIS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO


USE [Biosalcdcss]
/****** Object:  Index [IX_ABASTECIMENTOS_1]    Script Date: 08/13/2013 22:33:56 ******/
CREATE NONCLUSTERED INDEX [IX_ABASTECIMENTOS_1] ON [dbo].[ABASTECIMENTOS] 
(
	[PLANTA] ASC,
	[REQUIS] ASC,
	[NUMFROTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO


USE [Biosalcdcss]
/****** Object:  Index [IX_ABASTECIMENTOS_2]    Script Date: 08/13/2013 22:33:56 ******/
CREATE NONCLUSTERED INDEX [IX_ABASTECIMENTOS_2] ON [dbo].[ABASTECIMENTOS] 
(
	[PLANTA] ASC,
	[VEICULO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO


USE [Biosalcdcss]
/****** Object:  Index [IX_ABASTECIMENTOS_3]    Script Date: 08/13/2013 22:33:56 ******/
CREATE NONCLUSTERED INDEX [IX_ABASTECIMENTOS_3] ON [dbo].[ABASTECIMENTOS] 
(
	[PLANTA] ASC,
	[DATA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO


USE [Biosalcdcss]
/****** Object:  Index [IX_ABASTECIMENTOS_4]    Script Date: 08/13/2013 22:33:56 ******/
CREATE NONCLUSTERED INDEX [IX_ABASTECIMENTOS_4] ON [dbo].[ABASTECIMENTOS] 
(
	[VEICULO] ASC,
	[DATA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ABASTECIMENTOS] ADD  CONSTRAINT [DF__ABASTECIMENTOS__ODOMET__13E014AE]  DEFAULT ((0)) FOR [ODOMETRO]
GO

ALTER TABLE [dbo].[ABASTECIMENTOS] ADD  CONSTRAINT [DF__ABASTECIMENTOS__ODOMET__14D438E7]  DEFAULT ((0)) FOR [ODOMETRO_ANT]
GO

ALTER TABLE [dbo].[ABASTECIMENTOS] ADD  CONSTRAINT [DF__ABASTECIMENTOS__HORIME__15C85D20]  DEFAULT ((0)) FOR [HORIMETRO]
GO

ALTER TABLE [dbo].[ABASTECIMENTOS] ADD  CONSTRAINT [DF__ABASTECIMENTOS__HORIME__16BC8159]  DEFAULT ((0)) FOR [HORIMETRO_ANT]
GO

ALTER TABLE [dbo].[ABASTECIMENTOS] ADD  CONSTRAINT [DF__ABASTECIMENTOS__DESLOC__17B0A592]  DEFAULT ((0)) FOR [DESLOCAMENTO]
GO

ALTER TABLE [dbo].[ABASTECIMENTOS] ADD  CONSTRAINT [DF__ABASTECIMENTOS__HORA_T__18A4C9CB]  DEFAULT ((0)) FOR [HORA_TRAB]
GO

ALTER TABLE [dbo].[ABASTECIMENTOS] ADD  CONSTRAINT [DF__ABASTECIMENTOS__VIRA_O__1B813676]  DEFAULT ((0)) FOR [VIRA_ODOMETRO]
GO

