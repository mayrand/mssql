DECLARE @SearchText varchar(1000) = 'trigger';

SELECT sm.object_id, OBJECT_NAME(sm.object_id) AS object_name, o.type, o.type_desc, sm.definition  
FROM sys.sql_modules AS sm  
JOIN sys.objects AS o ON sm.object_id = o.object_id  
where definition LIKE '%' + @SearchText + '%'
ORDER BY o.type;

--Get object definition by name
SELECT definition
FROM sys.sql_modules
WHERE object_id = (OBJECT_ID(N'AdventureWorks.dbo.ufnGetAccountingEndDate'));

