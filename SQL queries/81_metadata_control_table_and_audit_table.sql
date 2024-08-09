USE EO_AdventureWorksDW2014
GO

-- create control table

IF EXISTS (SELECT
		*
	FROM sys.tables
	WHERE type = 'u'
	AND name = 'meta_control_table')
	DROP TABLE meta_control_table
	;

CREATE TABLE meta_control_table (
	id int IDENTITY (1, 1),
	source_table nvarchar(50) NOT NULL,
	last_load_date datetime
);


INSERT INTO meta_control_table (source_table, last_load_date)
	VALUES ('sales order header', '1900-01-01')
;

truncate table meta_control_table
SELECT
	*
FROM meta_control_table;

select * from [dbo].[fact_sales]

use AdventureWorks2014

set identity_insert sales.SalesOrderHeader on
insert into sales.SalesOrderHeader
([SalesOrderID],[OrderDate],[DueDate],[ShipDate],[CustomerID],[BillToAddressID],[ShipToAddressID],[ShipMethodID])
values
(3,'20190918','20190918','20190918',11019,921,921,5)
;
set identity_insert sales.SalesOrderHeader off

AND soh.ModifiedDate < ? -- system variabl, StartTime
and modifieddate< ?