/*
* This query compares distinct records of a single field from two tables, Table1 and Table2.
* Replace Table1 and Table2 with the desired table names and the field name 
* with your desired field name to use this query in your project.
*/

Select distinct FieldName from [Table1]
Where [Table1].FieldName NOT IN 
(Select FieldName from [Table2])
