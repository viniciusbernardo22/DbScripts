SELECT * FROM [Course]
SELECT * FROM [StudentCourse]
SELECT * FROM [Student]

DECLARE @studentId UNIQUEIDENTIFIER = (SELECT NEWID());
INSERT INTO 
    [Student] 
VALUES (
   @studentId,
   'Alessandro do Corinthians',
   'alessandro@gmail.com',
   '321',
   '5511987563542',
   '2022-05-27 11:30:24.312',
   GETDATE()
)


INSERT INTO
[StudentCourse]
VALUES(
    '5d8cf396-e717-9a02-2443-021b00000000',
    '830e332f-1b66-475c-af91-c3d50c8af17f',
    20,
    1,
    '2023-12-27 11:30:24.312',
    GETDATE()
)