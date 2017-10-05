--Query to find size of all individual databases on SQL Server
with fs
as
(
    select database_id, type, size * 8.0 / 1024 size
    from sys.master_files
)
select 
    name,
    (select sum(size) from fs where type = 0 and fs.database_id = db.database_id) DataFileSizeInMB,
    (select sum(size) from fs where type = 1 and fs.database_id = db.database_id) LogFileSizeInMB
from sys.databases db
