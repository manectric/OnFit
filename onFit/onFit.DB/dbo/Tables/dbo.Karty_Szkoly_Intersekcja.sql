CREATE TABLE [dbo].[Karty_Szkoly_Intersekcja] (
    [Id]        INT NOT NULL,
    [Id_Szkoly] INT NOT NULL,
    [Id_Karty]  INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_KartySzkolyIntersekcja_Karta] FOREIGN KEY ([Id_Karty]) REFERENCES [dbo].[Typy_Kart] ([Id]),
    CONSTRAINT [FK_KartySzkolyIntersekcja_Szkola] FOREIGN KEY ([Id_Szkoly]) REFERENCES [dbo].[Szkoly] ([Id])
);

