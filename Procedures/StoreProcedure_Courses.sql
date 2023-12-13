CREATE OR ALTER PROCEDURE [spListCourse] AS
    DECLARE @Id INT
    DECLARE @CategoryId INT
    SET @CategoryId = (SELECT TOP 1 [Id] FROM [Curso] WHERE [Id] = 9)
    SET @Id = 9

    SELECT * FROM [Curso] WHERE [Id] = @CategoryId

    EXEC spListCourse