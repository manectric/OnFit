CREATE TABLE [dbo].[TerminyZajec] (
    [ID]                   INT           NOT NULL,
    [IDZajec]              INT           NOT NULL,
    [DzienTygodnia]        NVARCHAR (20) NOT NULL,
    [GodzinaRozpoczecia]   DATETIME      NOT NULL,
    [GodzinaZakonczenia]   DATETIME      NOT NULL,
    [DataRozpoczeciaZajec] DATETIME      NOT NULL,
    CONSTRAINT [PK_TerminyZajec] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_TerminyZajec_IDZajec] FOREIGN KEY ([IDZajec]) REFERENCES [dbo].[Zajecia] ([ID])
);

