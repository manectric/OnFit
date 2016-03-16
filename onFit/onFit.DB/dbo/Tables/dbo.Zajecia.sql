CREATE TABLE [dbo].[Zajecia] (
    [ID]              INT NOT NULL,
    [IDMiejsceZajec]  INT NOT NULL,
    [IDNazwaZajec]    INT NOT NULL,
    [IDPoziomZajec]   INT NOT NULL,
    [MaxIloscMiejsc]  INT NULL,
    [CzyWolneMiejsca] BIT NOT NULL,
    CONSTRAINT [PK_Zajecia] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Zajecia_IDMiejsceZajec] FOREIGN KEY ([IDMiejsceZajec]) REFERENCES [dbo].[MiejsceZajec] ([ID]),
    CONSTRAINT [FK_Zajecia_IDNazwaZajec] FOREIGN KEY ([IDNazwaZajec]) REFERENCES [dbo].[NazwaZajec] ([ID]),
    CONSTRAINT [FK_Zajecia_IDPoziomZajec] FOREIGN KEY ([IDPoziomZajec]) REFERENCES [dbo].[PoziomyZajec] ([ID])
);

