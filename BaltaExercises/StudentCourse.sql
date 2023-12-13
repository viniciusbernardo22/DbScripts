CREATE TABLE [StudentCourse](
    [StudentId] UNIQUEIDENTIFIER NOT NULL,
    [CourseId] UNIQUEIDENTIFIER NOT NULL,
    [Progress] TINYINT NOT NULL,
    [Favorite] BIT NOT NULL,
    [StartDate] DATETIME NOT NULL,
    [LastUpdateDate] DATETIME NULL DEFAULT(GETDATE()),

    CONSTRAINT [PK_StudentCourse] PRIMARY KEY ([CourseId], [StudentId]),
    CONSTRAINT [FK_StudentCourse_Student_CourseId] FOREIGN KEY ([CourseId]) REFERENCES [Course]([Id]),
    CONSTRAINT [FK_StudentCourse_Student_StudentId] FOREIGN KEY ([StudentId]) REFERENCES [Student]([Id]),
)
GO