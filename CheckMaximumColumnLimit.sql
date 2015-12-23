
CREATE TABLE testcolumns
(
column0 char(1)
)
GO

DECLARE @sql1 varchar(1000)
DECLARE @count1 int
SET @count1 = 1
WHILE(@count1<65564)
BEGIN
	SET @sql1 = 'ALTER table testcolumns ADD column' + convert(varchar(100), @count1) + ' char(1)'
	SET @count1 = @count1 + 1
	exec(@sql1)
END
