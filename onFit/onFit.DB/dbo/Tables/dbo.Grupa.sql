CREATE TABLE [dbo].[Grupa] (
    [Id]                INT      NOT NULL,
    [Id_Szkoly]         INT      NOT NULL,
    [Id_TypTanca]       INT      NOT NULL,
    [Id_Poziom]         INT      NOT NULL,
    [Do_Kiedy_Zapisy]   DATETIME NULL,
    [Poczatek_Zajec]    DATETIME NULL,
    [Czy_Wolne_Miejsca] BIT      NOT NULL,
    [Id_Dla_Kogo]       INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Grupa_DlaKogo] FOREIGN KEY ([Id_Dla_Kogo]) REFERENCES [dbo].[Dla_Kogo] ([Id]),
    CONSTRAINT [FK_Grupa_Poziom] FOREIGN KEY ([Id_Poziom]) REFERENCES [dbo].[Poziomy] ([Id]),
    CONSTRAINT [FK_Grupa_Szkola] FOREIGN KEY ([Id_Szkoly]) REFERENCES [dbo].[Szkoly] ([Id]),
    CONSTRAINT [FK_Grupa_TypTanca] FOREIGN KEY ([Id_TypTanca]) REFERENCES [dbo].[Typy_Tanca] ([Id])
);

