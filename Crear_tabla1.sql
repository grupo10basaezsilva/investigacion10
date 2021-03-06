SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cliente].[sensor](
	[id_sensor] [int] IDENTITY(1,1) NOT NULL,
	[temperatura] [int] NOT NULL,
	[humedad] [int] NOT NULL,
	[sampletime] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [cliente].[sensor] ADD PRIMARY KEY CLUSTERED 
(
	[id_sensor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
