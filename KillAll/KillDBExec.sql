USE [master];


DECLARE @DB VARCHAR(8000) = 'Curso';
DECLARE @kill VARCHAR(8000) = '';
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id)
FROM sys.dm_exec_sessions
WHERE database_id = db_id(@DB)

EXEC(@kill);

DROP DATABASE [Curso]