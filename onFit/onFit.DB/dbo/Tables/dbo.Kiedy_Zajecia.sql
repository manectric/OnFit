CREATE TABLE [dbo].[Kiedy_Zajecia] (
    [Id]         INT NOT NULL,
    [Id_Grupy]   INT NOT NULL,
    [Id_Dzien]   INT NOT NULL,
    [Godzina_Od] INT NOT NULL,
    [Godzina_Do] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_KiedyZajecia_Dzien] FOREIGN KEY ([Id_Dzien]) REFERENCES [dbo].[Dni] ([Id])
);

