
CREATE TABLE [Course](
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Tag] NVARCHAR(20) NOT NULL,
    [Title] NVARCHAR(160) NOT NULL,
    [Url] NVARCHAR(1024) NOT NULL,
    [Summary] NVARCHAR(2000) NOT NULL,
    [Level] TINYINT NOT NULL,
    [DurationInMinutes] INT NOT NULL,
    [CreateDate] DATETIME NOT NULL,
    [LastUpdateDate] DATETIME NOT NULL,
    [Active] BIT NOT NULL,
    [Free] BIT NOT NULL, 
    [Featured] BIT NOT NULL,
    [AuthorId] UNIQUEIDENTIFIER NOT NULL,
    [CategoryId] UNIQUEIDENTIFIER NOT NULL,
    [Tags] NVARCHAR(160) NOT NULL,

    CONSTRAINT [PK_Course] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Course_Author_AuthorId] FOREIGN KEY ([AuthorId]) REFERENCES [Author]([Id]),
    CONSTRAINT [FK_Course_Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [Category]([Id]),
)

GO