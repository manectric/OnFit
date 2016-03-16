CREATE TABLE [dbo].[KartyZajecia] (
    [ID]        INT NOT NULL,
    [IDZajecia] INT NOT NULL,
    [IDKarty]   INT NOT NULL,
    CONSTRAINT [PK_KartyZajecia] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_KartyZajec_IDKarty] FOREIGN KEY ([IDKarty]) REFERENCES [dbo].[Karty] ([ID]),
    CONSTRAINT [FK_KartyZajec_IDZajecia] FOREIGN KEY ([IDZajecia]) REFERENCES [dbo].[Zajecia] ([ID])
);

