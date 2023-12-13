USE CURSOS

SELECT * FROM [Categoria]

SELECT * FROM [Curso]

INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES('Fundamentos de VueJs', 3)

BEGIN TRANSACTION

UPDATE 
    [Categoria] 
SET 
    [Nome]='Cloud' 
WHERE 
    Id = 2;
ROLLBACK