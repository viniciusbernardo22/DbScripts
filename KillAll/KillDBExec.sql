USE [master];

DECLARE @kill VARCHAR(8000) = '';
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id)
FROM sys.dm_exec_sessions
WHERE database_id = db_id('moduleSQL')

EXEC(@kill);

DROP DATABASE [Curso]