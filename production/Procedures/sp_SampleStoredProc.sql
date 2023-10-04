create procedure production.sp_GetProducts 
as 
begin 
	select top 100 *
	from production.products;
end;