CREATE TABLE [CareerItem](
    [CareerId] UNIQUEIDENTIFIER NOT NULL,
    [CourseId] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(160) NOT NULL,
    [Description] TEXT NOT NULL,
    [Order] TINYINT NOT NULL,

    CONSTRAINT [PK_CareerItem] PRIMARY KEY ([CourseId] ,[CareerId]),
    CONSTRAINT [FK_CareerItem_Career_CareerId] FOREIGN KEY ([CareerId]) REFERENCES [Career]([Id]),
    CONSTRAINT [FK_CareerItem_Course_CourseId] FOREIGN KEY ([CourseId]) REFERENCES [Course]([Id]),
)
GO