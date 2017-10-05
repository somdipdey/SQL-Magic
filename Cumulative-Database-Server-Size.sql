--total size of cumulative databases in GB. Querying: sys.master_files (Transact-SQL) 
--Link:  https://docs.microsoft.com/en-us/sql/relational-databases/system-catalog-views/sys-master-files-transact-sql
SELECT CONVERT(DECIMAL(10,2),(SUM(size * 8.00) / 1024.00 / 1024.00)) As UsedSpaceInGB,
CONVERT(DECIMAL(10,2),(SUM(size * 8.00) / 1024.00)) As UsedSpaceInMB
FROM master.sys.master_files
